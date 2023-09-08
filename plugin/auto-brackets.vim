" Title:        auto-brackets.nvim
" Description:  A plugin which writes closed brackets automatically.
" Last Change:  8 September 2023
" Maintainer:   <https://github.com/neto2000>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_auto-brackets")
    finish
endif
let g:loaded_auto-brackets = 1

" Defines a package path for Lua. This facilitates importing the
" Lua modules from the plugin's dependency directory.
let s:lua_rocks_deps_loc =  expand("<sfile>:h:r") . "/../lua/auto-brackets/deps"
exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=0 Brackets lua require("auto-brackets").brackets()
