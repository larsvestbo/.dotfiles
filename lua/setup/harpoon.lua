
require('harpoon').setup()
local map = vim.api.nvim_set_keymap
local mappings = {
	["<leader>w"] = "<cmd>lua require('harpoon.mark').add_file()<CR>",
	["<leader>e"] = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
	["<leader>a"] = "<cmd>lua require('harpoon.ui').nav_file(1)<CR>",
	["<leader>s"] = "<cmd>lua require('harpoon.ui').nav_file(2)<CR>",
	["<leader>d"] = "<cmd>lua require('harpoon.ui').nav_file(3)<CR>",
}

for key, command in pairs(mappings) do
	map('n', key, command, {noremap = true})
end
