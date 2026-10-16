
return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            -- Evita mensajes de compatibilidad de netrw
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            require("nvim-tree").setup({
                view = {
                    width = 30,
                },
                renderer = {
                    indent_markers = {
                        enable = true,
                    },
                },
                filters = {
                    dotfiles = false,
                },
            })

            -- Atajo para abrir/cerrar el explorador
            vim.keymap.set(
                "n",
                "<leader>e",
                "<cmd>NvimTreeToggle<CR>",
                { desc = "Abrir/cerrar explorador de archivos" }
            )
        end,
    },
}

