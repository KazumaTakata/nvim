local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "lsp.lsp-installer"
require("lsp.lsp_handlers").setup()
require "lsp.null-ls"
