require'lspconfig'.tsserver.setup{}

local pid = vim.fn.getpid()
local omnisharp_bin = vim.fn.stdpath("data").."omnisharp/OmniSharp.exe"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
