local M = {}

M.setup = function()
	-- Register command
	vim.cmd("command! Lazygithub lua require('lazygithub').open()")
end

M.open = function()
	local Terminal = require("toggleterm.terminal").Terminal
	local lazygithub = nil

	-- Close Lazygithub if it's already open, open a new one if it's not
	if lazygithub and lazygithub:is_open() then
		lazygithub:close()
		lazygithub = nil
	else
		lazygithub = Terminal:new({
			cmd = "gh lazy",
			direction = "float",
			float_opts = { border = "single" },
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
			end,
		})
		return lazygithub:toggle()
	end
end

return M
