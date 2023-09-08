
local M = {}


function M.brackets()

	M.print_text('{}')

end

function M.print_text(text)

	-- local row, col = unpack(vim.api.nvim_win_get_cursor(0))

	-- vim.api.nvim_buf_set_text(0, row, col, row, col + 2, {'()'})


	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local row = vim.api.nvim_win_get_cursor(0)[1]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos) .. text .. line:sub(pos + 1)
	vim.api.nvim_set_current_line(nline)

	vim.api.nvim_win_set_cursor(0, {row, pos + 1})
end


return M
