function Colors(color)
    require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "moon",         -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = false,    -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
            -- Style to be applied to different syntax groups
            -- Value is any valid attr-list value for `:help nvim_set_hl`
            comments = { italic = true },
            keywords = { italic = false },
            variables = {},
            functions = { italic = false, bold = true },
            -- Background styles. Can be "dark", "transparent" or "normal"
        },

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        -- -@param colors ColorScheme
        -- on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        -- on_highlights = function(highlights, colors) end,
    })
    require('rose-pine').setup({
        disable_italics = true,
    })

    -- Set colorscheme after options
    -- vim.cmd('colorscheme rose-pine')



    -- color = color or "ayu"
    -- color = color or "onenord"
    -- color = color or "catppuccin-mocha"
    -- color = color or "caret"
    -- color = color or "tokyonight"
    -- color = color or "rose-pine"
    -- color = color or "catppuccin-latte"
    color = color or "github_dark_tritanopia"
    -- vim.o.background = "light"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#51B3EC', bold = true })
    -- vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bold = true })
    -- vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#FB508F', bold = true })
    --
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#7DA3D2', bold = true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#CCCCCC', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#7DA3D2', bold = true })
end

Colors()
