local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fr', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.git_files, {})
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>fv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ searc = vim.fn.input("Grep > ") })
end)

-- resume a previous live grep search
vim.keymap.set("n", "<leader>gx", require("telescope.builtin").resume, {
  noremap = true,
  silent = true,
  desc = "Resume",
})

-- in visual mode select a word and search it in the project with live grep 
local default_opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('v', '<leader>fg', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', default_opts)
