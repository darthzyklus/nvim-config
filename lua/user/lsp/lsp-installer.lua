local mason_status_ok, mason = pcall(require, "mason")
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

if not (mason_status_ok and mason_lspconfig_status_ok and lspconfig_status_ok) then
	return
end


mason.setup()
mason_lspconfig.setup()

mason_lspconfig.setup_handlers {
	function (server_name) 
		local opts = {
			on_attach = require("user.lsp.handlers").on_attach,
			capabilities = require("user.lsp.handlers").capabilities,
		}
		
		if server_name == "rust_analyzer" then
			local rust_opts = require("user.lsp.settings.rust")
			opts = vim.tbl_deep_extend("force", rust_opts, opts)
		end
		
		lspconfig[server_name].setup(opts)
	end,
}
