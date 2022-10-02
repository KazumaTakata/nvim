
require("options")
require("keymaps")
require("plugins")
require("my_cmp")
require "lsp"
require("treesitter_conf")

require'nvim-tree'.setup {
}

vim.opt.termguicolors = true
require("bufferline").setup{}



-- https://github.com/numToStr/Comment.nvim
require('Comment').setup()

vim.cmd "colorscheme nightfox"

-- visual mode code highlight
-- https://stackoverflow.com/a/20798348/4624070
vim.cmd "hi Visual term=reverse cterm=reverse guibg=Grey"



local dap = require"dap"
dap.configurations.lua = { 
  { 
    type = 'nlua', 
    request = 'attach',
    name = "Attach to running Neovim instance",
    host = function()
      local value = vim.fn.input('Host [127.0.0.1]: ')
      if value ~= "" then
        return value
      end
      return '127.0.0.1'
    end,
    port = function()
      local val = tonumber(vim.fn.input('Port: '))
      assert(val, "Please provide a port number")
      return val
    end,
  }
}

dap.adapters.nlua = function(callback, config)
  callback({ type = 'server', host = config.host, port = config.port })
end


require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules", "yarn.lock" }} }

