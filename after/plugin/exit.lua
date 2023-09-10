function GetTotalOpenBuffers()
    local buffer_list = vim.tbl_filter(function(b)
        return vim.fn.buflisted(b) == 1
    end, vim.fn.range(1, vim.fn.bufnr('$')))

    return #buffer_list
end

function ExitPrompt()
    -- Check if the current buffer has been modified
    local modified = vim.bo.modified

    -- Prompt the user for saving changes if modified
    if modified then
        -- Prompt the user for saving changes
        local choice = vim.fn.input('Save changes before exit? (y/n): ')
        vim.cmd('redraw')
        -- If the choice is 'y' or 'Y', save the file
        if choice == 'y' or choice == 'Y' then
            vim.cmd('w')
        end
    end

    -- Clear the prompt
    vim.cmd('echo ""')

    -- Check if other buffers exist
    local num_buffers = GetTotalOpenBuffers()
    if num_buffers > 1 then
        -- Switch to the next buffer
        vim.cmd('bdelete!')
    else
        -- Open a new empty buffer
        vim.cmd('enew')
        -- Assign a unique buffer name as an identifier
        vim.bo.buftype = 'nofile'
        vim.bo.filetype = 'newly_opened_buffer'
        vim.cmd('bprev')
        vim.cmd('bdelete!')
    end
end
