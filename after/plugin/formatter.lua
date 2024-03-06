local util = require("formatter.util")
local python_formatter = require("formatter.filetypes.python").autopep8
local rust_formatter = require("formatter.filetypes.rust").rustfmt
local js_formatter = require("config.formatters").prettierjs
local util = require "formatter.util"

-- Create a wrapper function that combines python_formatter with autoflake
local function autoflake()
    return {
        exe = "autoflake",
        args = {
            "--in-place",
            "--remove-all-unused-imports",
        },
        stdin = false,
    }
end




require("formatter").setup({
    filetype = {
        python = { autoflake, python_formatter },
        javascript = { js_formatter },
        javascriptreact = { js_formatter },
        typescript = { js_formatter },
        typescriptreact = { js_formatter },
        rust = { rust_formatter }
    }
})
