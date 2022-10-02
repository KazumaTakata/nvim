

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>n", ":NvimTreeFindFile<CR>", opts)



keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)


keymap("n", "<S-Up>", ":resize +2<CR>", opts)
keymap("n", "<S-Down>", ":resize -2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize -2<CR>", opts)


keymap("i", "jj", "<esc>", opts)

keymap("n", "<leader>gb", ":Git blame<CR>", opts)


keymap("n", "<leader>ev", ":vsplit $MYVIMRC<CR>", opts)
keymap("n", "<leader>sv", ":source $MYVIMRC<CR>", opts)



keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)






