return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
    config = function()
        local api = require("nvim-tree.api")
        local NuiInput = require("nui.input")

        -- Setup NvimTree
        require("nvim-tree").setup({
            view = {
                width = 30,
                side = "left",
                number = false,
                relativenumber = false,
            },
            actions = {
                open_file = { quit_on_open = false },
            },
        })

        -- Function to create a new file or folder based on input
        local function create_popup()
            local node = api.tree.get_node_under_cursor()
            local path = node.absolute_path
            if node.type ~= "directory" then path = vim.fn.fnamemodify(path, ":h") end

            local popup = NuiInput({
                position = "50%",
                size = { width = 35 },
                border = { style = "rounded", text = { top = "Create File/Folder" } },
                win_options = { winhighlight = "Normal:Normal,FloatBorder:FloatBorder" },
            }, {
                prompt = "📂 ",
                on_submit = function(value)
                    if value and value ~= "" then
                        local new_path = path .. "/" .. value
                        if value:sub(-1) == "/" then
                            vim.fn.mkdir(new_path, "p") -- Create a folder
                        else
                            vim.fn.writefile({}, new_path) -- Create an empty file
                        end
                        api.tree.reload()
                    end
                end,
            })

            popup:mount()
        end

        -- Keybind for UI-based File/Folder Creation (press 'a' in nvim-tree)
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "NvimTree",
            callback = function()
                vim.keymap.set("n", "a", create_popup, { buffer = true, desc = "Create File/Folder" })
            end,
        })

        -- Toggle NvimTree with '\'
        vim.keymap.set("n", "\\", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
}


