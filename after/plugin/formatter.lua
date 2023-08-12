local util = require("formatter.util")
local python_formatter = require("formatter.filetypes.python").autopep8

require("formatter").setup({
    filetype = {
        python = { python_formatter }
    }
})
