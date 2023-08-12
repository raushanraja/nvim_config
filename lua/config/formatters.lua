local M = {}
local util = require "formatter.util"


function M.prettierjs()
    return {
        exe = "prettier",
        args = {
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--config",
            "~/.prettierrc.json"
        },
        stdin = true,
        try_node_modules = true,
    }
end

return M
