lua << EOF
require('telescope').setup{
    defaults = {
      layout_strategy = 'vertical',
      layout_config = { height = 0.95, width = 0.95 },
    },
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
      }
    }
  }
EOF


