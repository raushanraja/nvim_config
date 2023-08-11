local ensure_installed = require("config.mason")

return {
    {'williamboman/mason.nvim',
         cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
            build = function()
                pcall(vim.cmd, 'MasonInstallAll')
            end,
            config = function()
                -- custom nvchad cmd to install all mason binaries listed
                vim.api.nvim_create_user_command("MasonInstallAll", function()
                    vim.cmd("MasonInstall " .. table.concat(ensure_installed, " "))
                end, {})

                vim.g.mason_binaries_list = ensure_installed
            end,
    },
    {'williamboman/mason-lspconfig.nvim'} , -- Optional
}
