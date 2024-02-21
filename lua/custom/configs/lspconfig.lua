local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd","tsserver","rust_analyzer","ruby_ls","angularls","arduino_language_server","bashls","csharp_ls","dartls","docker_compose_language_service","dockerls","eslint","java_language_server","jsonls","prismals","svelte","tailwindcss","vuels"}

require("mason-lspconfig").setup {
  ensure_installed = servers
}


for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
