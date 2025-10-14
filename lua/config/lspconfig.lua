local lspconfig = require("lspconfig")

local function get_pyenv_pylsp_cmd()
    local handle = io.popen("pyenv which pylsp")
    local pylsp_path = handle:read("*a"):gsub("%s+", "")  -- Read and trim whitespace/newlines
    handle:close()
    return {pylsp_path}
end

lspconfig.pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                jedi_completion = { enabled = true, fuzzy = true },
                pycodestyle = {
                    maxLineLength = 120,
                    enabled = true,
                    ignore = {"E501"},
                },
                pylint = {
                    enabled = true,
                    args = {"--disable=line-too-long"},
                },
                flake8 = {
                    enabled = true,
                    ignore = {"E501"}
                },
            }
        }
    },
    cmd = get_pyenv_pylsp_cmd(),
})

