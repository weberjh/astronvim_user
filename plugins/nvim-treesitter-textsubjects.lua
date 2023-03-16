-- customize mason plugins
return {
  -- vim surround in all buffers
   {
      "RRethy/nvim-treesitter-textsubjects",
      -- event = "BufEnter",      
      config = function()
         require'nvim-treesitter.configs'.setup {
            textsubjects = {
               enable = true,
               prev_selection = ',', -- (Optional) keymap to select the previous selection
               keymaps = {
                  ['.'] = 'textsubjects-smart',
                  [';'] = 'textsubjects-container-outer',
                  ['i;'] = 'textsubjects-container-inner',
               },
            },
                                                }
      end,
   },
}
