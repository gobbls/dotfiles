----------------------------------------------------------------------------------
-- Autocompletion engine, for handy documentation when scrolling found matches. --
----------------------------------------------------------------------------------

return {
    "saghen/blink.cmp",
    commit = "05c1798",
    dependencies = {
        {
            'saghen/blink.lib',
            commit = "c8fdc12",
        },
    },
    build = function()
        require('blink.cmp').build():wait(60000)
    end,
    opts = {
        keymap = { preset = "default" },
        completion = {
            documentation = {
                auto_show = true,
            },
        },
    },
}
