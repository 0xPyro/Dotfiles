return{
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {},
            },
            {
                "mason-org/mason-lspconfig.nvim",
                opts = {
                    ensure_installed = {
                        "lua_ls",
                        "pyright",
                        "clangd",
                        "bashls",
                    },
                },
            },
        },
    },
}
