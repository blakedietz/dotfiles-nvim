require("plugins.neovim.vscode").exclude_vscode(function()
    local dap = require("dap")

    dap.adapters.mix_task = {
        type = 'executable',
        command = '/Users/blakedietz/.elixir-ls/debugger.sh', -- debugger.bat for windows
        args = {}
    }

    dap.configurations.elixir = {{
        type = "mix_task",
        name = "mix test",
        task = 'test',
        taskArgs = {"--trace"},
        request = "launch",
        startApps = true, -- for Phoenix projects
        projectDir = "${workspaceFolder}",
        requireFiles = {"test/**/test_helper.exs", "test/**/*_test.exs"}
    }, {
        type = "mix_task",
        name = "phx.server",
        request = "launch",
        task = "phx.server",
        projectDir = "."
    }}
end)
