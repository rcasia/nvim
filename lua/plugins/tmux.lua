
return {

    {
        "aserowy/tmux.nvim",
        config = function() return require("tmux").setup({
                navigation = {
                    enable_default_keybindings = false,
                },
            })
        end,
        keys = {
            {"<C-h>", function () require("tmux").move_left() end, desc = "Move left"},
            {"<C-j>", function () require("tmux").move_bottom() end, desc = "Move bottom"},
            {"<C-k>", function () require("tmux").move_top() end, desc = "Move top"},
            {"<C-l>", function () require("tmux").move_right() end, desc = "Move right"},
        }
    }
}
