# auto-brackets.nvim

 Simple project which prints a opened and a closed bracket when you type a opened bracket.

 ## Setup

  A simple example where you write one opened curly bracket and get a opened and closed one.
  ```lua
   vim.keymap.set('i', '{', function() require("auto-brackets").print_text("{}"))
  ```
  put this into your init.lua file

 ## Installation

  ### Lazy

   ```lua
    require("lazy").setup({
        
        'neto2000/auto-brackets.nvim'

    }, {})
   ```
