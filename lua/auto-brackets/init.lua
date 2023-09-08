
local M = {}

function M.brackets()
	print("Hello ()")

	-- local row, col = unpack(vim.api.nvim_win_get_cursor(0))

	-- vim.api.nvim_buf_set_text(0, row, col, row, col + 2, {'()'})


	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos - 1) .. '(' .. line:sub(pos - 1, pos) .. ')' .. line:sub(pos + 1)
	vim.api.nvim_set_current_line(nline)
end


return M
