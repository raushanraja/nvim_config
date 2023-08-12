local util = require("formatter.util")
local python_formatter = require("formatter.filetypes.python").autopep8
local js_formatter = require("config.formatters").prettierjs


require("formatter").setup({
    filetype = {
        python = { python_formatter },
        javascript = { js_formatter },
        javascriptreact = { js_formatter }
    }
})
