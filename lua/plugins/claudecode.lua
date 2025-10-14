return {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {
        port_range = { min = 10000, max = 65535 },
        auto_start = true,
        log_level = "info",
        terminal_cmd = nil,
    },
}
