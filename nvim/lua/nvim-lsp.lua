vim.cmd([[ set completeopt=menu,menuone,noselect ]])

-- configure this later
-- require("null-ls").setup({
--     sources = {
--         require("null-ls").builtins.code_actions.eslint,
--         require("null-ls").builtins.formatting.eslint,
--         require("null-ls").builtins.diagnostics.eslint,
--         require("null-ls").builtins.completion.spell,
--         require("null-ls").builtins.hover.dictionary,
--     },
-- })
--
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 100,
}

local lspconfig = require('lspconfig')
-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()


-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
    -- Clangd Language Server
    'clangd',
    -- Go Language Server
    'gopls',
    -- Rust Language Server
    'rust_analyzer',
    -- Python Language Server
    'pyright',
    -- Typescript/Javascript Language Server
    'tsserver'
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        autostart = false,
        on_attach = on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
    }
end

-- Java Language Server
-- It's the combination of the 
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#jdtls 
-- and https://github.com/mfussenegger/nvim-jdtls/blob/master/lua/jdtls/setup.lua#L239-L259
-- and https://github.com/mfussenegger/nvim-jdtls/blob/master/lua/jdtls.lua#L595-L607 
-- and https://github.com/eruizc-dev/jdtls-launcher#editor-configuration
local lsp = vim.lsp;
local offset_encoding = 'utf-16';
local capabilities = vim.tbl_deep_extend(
                         'keep',
                         capabilities,
                         lsp.protocol.make_client_capabilities());
local extra_capabilities = {
    textDocument = {
      codeAction = {
        codeActionLiteralSupport = {
          codeActionKind = {
            valueSet = {
                "source.generate.toString",
                "source.generate.hashCodeEquals",
                "source.organizeImports",
            };
          };
        };
      }
    }
  }

local capabilities = vim.tbl_deep_extend('keep', capabilities, extra_capabilities);

local extendedClientCapabilities = {
  progressReportProvider = true;
  classFileContentsSupport = true;
  generateToStringPromptSupport = true;
  hashCodeEqualsPromptSupport = true;
  advancedExtractRefactoringSupport = true;
  advancedOrganizeImportsSupport = true;
  generateConstructorsPromptSupport = true;
  generateDelegateMethodsPromptSupport = true;
  moveRefactoringSupport = true;
  overrideMethodsPromptSupport = true;
  inferSelectionSupport = {"extractMethod", "extractVariable", "extractConstant"};
};

lspconfig['jdtls'].setup{
    cmd = { 'jdtls' },
    autostart = false,
    on_attach = on_attach,
    flags = lsp_flags,
    root_dir = function (fname)
        -- The idea is to have one client per mono-repo
        return lspconfig.util.root_pattern(
                '.git', -- Git repo
                -- Multi-module projects
                'mvnw', -- Maven
                'gradlew', -- Gradle
                'settings.gradle', -- Gradle
                'settings.gradle.kts' -- Gradle
            )(fname)
            or
            vim.fn.getcwd()
    end,
    capabilities = capabilities,
    init_options = {
        extendedClientCapabilities = extendedClientCapabilities,
    },
}

local request = function(bufnr, method, params, handler)
  local client = nil
  for _, c in pairs(vim.lsp.get_active_clients({ bufnr = bufnr })) do
    if c.name == 'jdtls' then
      client = c
      break
    end
  end
  if not client then
    vim.notify("No LSP client with name `jdtls` available", vim.log.levels.WARN)
  else
    client.request(method, params, handler, bufnr)
  end
end

vim.lsp.commands['java.action.organizeImports'] = function (_, ctx)
  vim.cmd([[echo "'java.action.organizeImports'"]])
  request(0, 'java/organizeImports', ctx.params, function(err, resp)
    if err then
      print('Error on organize imports: ' .. err.message)
      return
    end
    if resp then
      vim.lsp.util.apply_workspace_edit(resp, offset_encoding)
    end
  end)
end

vim.lsp.commands['java.action.overrideMethodsPrompt'] = function (_, context)
  request(context.bufnr, 'java/listOverridableMethods', 
          context.params, function(e1, result1)
    if e1 then
      print("Error getting overridable methods: " .. e1.message)
      return
    end

    local fmt = function(method)
      return string.format("%s(%s) class: %s", 
                            method.name, 
                            table.concat(method.parameters, ", "), 
                            method.declaringClass)
    end

    local selected = require('jdtls.ui').pick_many(result1.methods, "Method to override", fmt)

    if #selected < 1 then
      return
    end

    local params = {
      context = context.params,
      overridableMethods = selected
    }
    request(context.bufnr, 'java/addOverridableMethods', params, function(e2, result2)
      if e2 ~= nil then
        print("Error getting workspace edits: " .. e2.message)
        return
      end
      vim.lsp.util.apply_workspace_edit(result2, offset_encoding)
    end)
  end)
end

--------------------------------
-- auto-completion and snips --
--------------------------------

-- luasnip setup
local luasnip = require 'luasnip'
require("luasnip.loaders.from_vscode").lazy_load()

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
--window = {
--  completion = cmp.config.window.bordered(),
--  documentation = cmp.config.window.bordered(),
--},
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'git' },
    }, {
--        { name = 'buffer' },
    }),
}

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
--    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'nvim_lsp_document_symbol' }
  }, {
 --   { name = 'buffer' }
  })
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    -- https://github.com/hrsh7th/cmp-cmdline/issues/24
    -- keyword_pattern=[=[[^[:blank:]\!]*]=], keyword_length=5
    { name = 'cmdline',  }
  })
})

---------------------------
-- cmp_git configuration --
---------------------------
local format = require("cmp_git.format")
local sort = require("cmp_git.sort")

require("cmp_git").setup({
    -- defaults
    filetypes = { "gitcommit", "octo", "*" },
    remotes = { "upstream", "origin" }, -- in order of most to least prioritized
-- enable git url rewrites, 
-- see https://git-scm.com/docs/git-config#Documentation/git-config.txt-urlltbasegtinsteadOf
    enableRemoteUrlRewrites = false, 
    git = {
        commits = {
            limit = 100,
            sort_by = sort.git.commits,
            format = format.git.commits,
        },
    },
    github = {
        issues = {
            fields = { "title", "number", "body", "updatedAt", "state" },
            filter = "all", -- assigned, created, mentioned, subscribed, all, repos
            limit = 100,
            state = "all", -- open, closed, all
            sort_by = sort.github.issues,
            format = format.github.issues,
        },
        mentions = {
            limit = 100,
            sort_by = sort.github.mentions,
            format = format.github.mentions,
        },
        pull_requests = {
            fields = { "title", "number", "body", "updatedAt", "state" },
            limit = 100,
            state = "all", -- open, closed, merged, all
            sort_by = sort.github.pull_requests,
            format = format.github.pull_requests,
        },
    },
    gitlab = {
        issues = {
            limit = 100,
            state = "all", -- opened, closed, all
            sort_by = sort.gitlab.issues,
            format = format.gitlab.issues,
        },
        mentions = {
            limit = 100,
            sort_by = sort.gitlab.mentions,
            format = format.gitlab.mentions,
        },
        merge_requests = {
            limit = 100,
            state = "all", -- opened, closed, locked, merged
            sort_by = sort.gitlab.merge_requests,
            format = format.gitlab.merge_requests,
        },
    },
    trigger_actions = {
        {
            debug_name = "git_commits",
            trigger_character = ":",
            action = function(sources, trigger_char, callback, params, git_info)
                return sources.git:get_commits(callback, params, trigger_char)
            end,
        },
        {
            debug_name = "gitlab_issues",
            trigger_character = "#",
            action = function(sources, trigger_char, callback, params, git_info)
                return sources.gitlab:get_issues(callback, git_info, trigger_char)
            end,
        },
        {
            debug_name = "gitlab_mentions",
            trigger_character = "@",
            action = function(sources, trigger_char, callback, params, git_info)
                return sources.gitlab:get_mentions(callback, git_info, trigger_char)
            end,
        },
        {
            debug_name = "gitlab_mrs",
            trigger_character = "!",
            action = function(sources, trigger_char, callback, params, git_info)
                return sources.gitlab:get_merge_requests(callback, git_info, trigger_char)
            end,
        },
        {
            debug_name = "github_issues_and_pr",
            trigger_character = "#",
            action = function(sources, trigger_char, callback, params, git_info)
                return sources.github:get_issues_and_prs(callback, git_info, trigger_char)
            end,
        },
        {
            debug_name = "github_mentions",
            trigger_character = "@",
            action = function(sources, trigger_char, callback, params, git_info)
                return sources.github:get_mentions(callback, git_info, trigger_char)
            end,
        },
    },
  }
)
