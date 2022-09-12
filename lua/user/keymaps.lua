local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
--
-- Modes
local normal_mode = "n"
local insert_mode = "i"
local visual_mode = "v"
local visual_block_mode = "x"
local term_mode = "t"
local command_mode = "c"

-- Visual
-- Stay in indent mode on visual_mode
keymap(visual_mode, "<", "<gv", opts)
keymap(visual_mode, ">", ">gv", opts)

-- Move text up and down visual_mode
keymap(visual_mode, "<C-k>", ":m '<-2<CR>gv=gv", opts)
keymap(visual_mode, "<C-j>", ":m '>+1<CR>gv=gv", opts)

-- Move text up and down visual_block_mode
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)
--keymap("", "<C-j>", "<Nop>", opts)
-- void copy in buffer when pasting over
keymap(visual_mode, "p", '"_dP', opts)

-- Use ALT+{h,j,k,l} to move windows see `:help terminal` for reference
keymap(normal_mode, "<A-h>", "<C-w>h", opts)
keymap(normal_mode, "<A-j>", "<C-w>j", opts)
keymap(normal_mode, "<A-k>", "<C-w>k", opts)
keymap(normal_mode, "<A-l>", "<C-w>l", opts)
keymap(term_mode, "<A-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap(term_mode, "<A-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap(term_mode, "<A-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap(term_mode, "<A-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap(insert_mode, "<A-h>", "<C-\\><C-N><C-w>h", opts)
keymap(insert_mode, "<A-j>", "<C-\\><C-N><C-w>j", opts)
keymap(insert_mode, "<A-k>", "<C-\\><C-N><C-w>k", opts)
keymap(insert_mode, "<A-l>", "<C-\\><C-N><C-w>l", opts)

keymap(normal_mode, "<A-Left>", "<C-w>h", opts)
keymap(normal_mode, "<A-Down>", "<C-w>j", opts)
keymap(normal_mode, "<A-Up>", "<C-w>k", opts)
keymap(normal_mode, "<A-Right>", "<C-w>l", opts)
keymap(term_mode, "<A-Left>", "<C-\\><C-N><C-w>h", term_opts)
keymap(term_mode, "<A-Down>", "<C-\\><C-N><C-w>j", term_opts)
keymap(term_mode, "<A-Up>", "<C-\\><C-N><C-w>k", term_opts)
keymap(term_mode, "<A-Right>", "<C-\\><C-N><C-w>l", term_opts)
keymap(insert_mode, "<A-Left>", "<C-\\><C-N><C-w>h", opts)
keymap(insert_mode, "<A-Down>", "<C-\\><C-N><C-w>j", opts)
keymap(insert_mode, "<A-Up>", "<C-\\><C-N><C-w>k", opts)
keymap(insert_mode, "<A-Right>", "<C-\\><C-N><C-w>l", opts)

-- Resize window
keymap(normal_mode, "<C-A-Left>", ":vertical resize -2<CR>", opts)
keymap(normal_mode, "<C-A-Down>", ":resize -2<CR>", opts)
keymap(normal_mode, "<C-A-Up>", ":resize +2<CR>", opts)
keymap(normal_mode, "<C-A-Right>", ":vertical resize +2<CR>", opts)
keymap(normal_mode, "<C-A-h>", ":vertical resize -2<CR>", opts)
keymap(normal_mode, "<C-A-j>", ":resize -2<CR>", opts)
keymap(normal_mode, "<C-A-k>", ":resize +2<CR>", opts)
keymap(normal_mode, "<C-A-l>", ":vertical resize +2<CR>", opts)

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
--
-- open Ntree on <leader>t
keymap(normal_mode, "<leader>t", ":Lex 20<CR>", opts)
-- show/hide special character 
keymap(normal_mode, "<leader>`", ":set list!<CR>", opts)

--spelling 
-- `z=` request suggestion for word under cursor
-- `zg` add word under cursor to dictionary
-- `zw` mark word unde cursor as incorrect
keymap(normal_mode, "<leader>l", ":setlocal spell!<CR>", opts) --toggle spell checking
--keymap(normal_mode, "<leader>le", ":setlocal spell! spelllang=en_us<CR>", opts) 
--keymap(normal_mode, "<leader>lr", ":setlocal spell! spelllang=ro_ro<CR>", opts)

