local nls_status_ok, nls = pcall(require, "null-ls")
if not nls_status_ok then
	return
end


local fmt = nls.builtins.formatting
local dgn = nls.builtins.diagnostics
local fmt_group = vim.api.nvim_create_augroup('FORMATTING', { clear = true })

nls.setup({
	sources = {
		fmt.rustfmt
	},
	on_attach = function(client, buf)
		if client.supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
            group = fmt_group,
            buffer = buf,
            callback = function()
                vim.lsp.buf.format({
                    timeout_ms = 3000,
                    buffer = buf,
                })
            end,
        })
		end
	end,
})
