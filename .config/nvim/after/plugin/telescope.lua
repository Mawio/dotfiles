local builtin = require('telescope.builtin')
local tele = require('telescope')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

vim.keymap.set('n', '<C-p>', function()
  if not pcall(builtin.git_files) then
    tele.extensions.projects.projects({})
  end
end
, {})

vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})

vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

