-- customize mason plugins
return {
  -- vim surround in all buffers
   {
      "ggandor/leap.nvim",
      event = "BufEnter",
      config = function()
         require("leap").add_default_mappings()
      end,

  },
}
