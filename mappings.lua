-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- TODO test
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "BUNCKER" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<cr>", desc = "window left" },
    -- tmux navigator
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<cr>", desc = "window rigt" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<cr>", desc = "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<cr>", desc = "window up" },
    -- harpoon
    ["<leader>h"] = { name = "Harpoon" },
    ["<leader>ha"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon Mark" },
    ["<leader>hr"] = { "<cmd>lua require('harpoon.mark').rm_file()<cr>", desc = "Harpoon Remove" },
    ["<leader>he"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon Toggle Quick Menu" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
