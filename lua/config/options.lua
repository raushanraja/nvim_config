vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- search case pattern option
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.title = true

-- vim.opt.foldmethod = "indent"


if vim.fn.has('title') then
    -- local current_file = vim.fn.expand('%:p:h')                     -- Get the full path of the parent directory
    -- local parent_directory = vim.fn.fnamemodify(current_file, ':t') -- Get the last part of the path
    -- local file_name = '%' .. '{expand(\'%:p:h:t\')}/%t'                          -- Get the file name
    -- vim.o.titlestring = parent_directory .. ' - ' .. file_name      -- Set the title
    --
    -- vim.o.titlestring = vim.fn.fnamemodify(vim.fn.expand('%:p:h'), ':t') .. ' - %' .. '{expand(\'%:p:h:t\')}/%t'
    --   Same thing but the other way around, (file name - parent directory)
    vim.o.titlestring = '%' ..
        '{expand(\'%:p:h:t\')}/%t - (' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h'), ':t') .. ') - NVIM'
end
