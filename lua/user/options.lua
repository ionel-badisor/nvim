-- To find help for each option use ':help options' and /search for specific option

o = vim.opt								-- shortcut for vim.opt
o.clipboard = "unnamedplus"					-- use select clipboard see :help clipboard
--o.clipboard = "unnamed"				-- use select clipboard see :help clipboard
--o.clipboard:append("unnamedplus")		-- use copy,cut clipboard see :help clipboard
o.fileencoding = "utf-8"		-- encoding encoding written to file
o.termguicolors = true			-- enable more colors
o.showtabline = 2				-- show/hide tab line for working with tabs see :help tabpage
o.number = true					-- show/hide line number
o.relativenumber = true			-- relative line number (calculates for me ^_^)

o.wrap = false
o.cursorline = true				-- show/hide cursor line
o.showbreak = "↪\\"				-- symbol shown when line is wrapped in editor (depends on wrap == true)

o.listchars = {					-- set non visible characters place holders
	tab = "▸ ",
--	tab = "→ ,
	eol = "↲",
	space = '·',
	nbsp = '␣',
	trail = '•',
	extends ='⟩',
	precedes = '⟨'
}
o.list = true					-- show/hine non visible characters


o.expandtab = false				-- convert tabs to spaces
-- o.copyindent = true				-- see :help ci
-- o.preserveindent = true			-- see :help pi
o.shiftwidth = 4			-- number of spaces inserted with each indentation
o.softtabstop = -1					-- see :help sts
o.tabstop = 4				-- number of spaces inserted for a tab
o.smarttab = true
--o.smartindent = true		--

o.showmode = true			-- show/hide editor mode: normal, insert, visual line, visual block, terminal etc
o.numberwidth = 1			-- set number column width (default 4)
o.signcolumn = "yes"
o.scrolloff = 10			-- keep value number of lines in view port; default = 0 (context liens) 
o.guifont = "monospace:h17"		-- set font
o.iskeyword:append('-')			-- word containing '-' is not considered two words by 'w' selector (not'W')

o.spelllang = "en_us"		-- see `:help spelllang`
o.spell = true				-- enable spell checking
