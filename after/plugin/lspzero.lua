local lsp = require('lsp-zero').preset('recommended')

lsp.on_attach(function(client, bufnr)
    local opts = lsp.default_keymaps({ buffer = bufnr, remap = false })

    -- This is doing auto-formatting using the current attached lsp (if they provide formatting)
    -- lsp.buffer_autoformat()
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>fs", "<cmd>SymbolsOutline<cr>", opts)
    vim.keymap.set("n", "<leader>fd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


lsp.format_on_save({
    format_opts = {
        async = true,
        timeout_ms = 10000,
    },
    servers = {
        ['lua-ls'] = { 'lua' },
    }
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
