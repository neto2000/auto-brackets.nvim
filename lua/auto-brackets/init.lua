
local M = {}

function M.brackets()
	print("Hello ()")

	local row, col = unpack(vim.api.nvim_win_get_cursor(0))

	vim.api.nvim_buf_set_text(0, row, col, row, col + 2, {'()'})
end


return M
