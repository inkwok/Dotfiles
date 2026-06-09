require "nvchad.mappings"

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

map("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- leader d delete wont remember as yanked/clipboard when delete pasting
map({ "n", "v" }, "<leader>d", [["_d]])

map("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })
-- Unmaps Q in normal mode
map("n", "Q", "<nop>")

--Stars new tmux session from in here
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- prevent x delete from registering when next paste
map("n", "x", '"_x', opts)

-- Replace the word cursor is on globally
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor is on globally" })
-- Executes shell command from in here making file executable
map("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })

-- tab stuff
map("n", "<leader>to", "<cmd>tabnew<CR>")   --open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>") --close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>")     --go to next
map("n", "<leader>tp", "<cmd>tabp<CR>")     --go to pre
map("n", "<leader>tf", "<cmd>tabnew %<CR>") --open current tab in new tab

--split management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
-- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
-- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- close current split window
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Copy filepath to the clipboard
map("n", "<leader>fp", function()
  local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
  vim.fn.setreg("+", filePath) -- Copy the file path to the clipboard register
  print("File path copied to clipboard: " .. filePath)
end, { desc = "Copy file path to clipboard" })

-- built in undotree 
-- map("n", "<leader>un", function()
--     vim.cmd.packadd("nvim.undotree")  -- loads the builtin plugin on first use
--     require("undotree").open()
-- end, { desc = "Toggle Undo Tree" })

-- restart
--[[
map("n", "<leader>re", "<cmd>restart<cr>", {
    desc = "Restart Neovim (:restart)",
    silent = true,
})
]]--

