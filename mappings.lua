-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- my own
    ["<leader>kk"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    ["<leader>kw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle Trouble" },
    ["<leader>kd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle Trouble" },
    ["<leader>kq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle Trouble" },
    ["<leader>kl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Toggle Trouble" },
    ["<leader>kr"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle Trouble" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
