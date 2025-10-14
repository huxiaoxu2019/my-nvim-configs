-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 40,
                side = "left",
            },
            sync_root_with_cwd = true,
            filters = {
                enable = false,
            },
        })
    end,
}
