return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("markview").setup()

        -- Auto-enable for markdown files
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "markdown",
            callback = function()
                vim.cmd("Markview enable")
                vim.opt_local.conceallevel = 2
                vim.opt_local.concealcursor = "nc"
            end,
        })
    end,
}
