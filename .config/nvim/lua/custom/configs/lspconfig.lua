local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.omnisharp.setup {
       capabilities = capabilities,
       cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
       enable_import_completion = true,
       organize_imports_on_format = true,
       enable_roslyn_analyzers = true,
       root_dir = function ()
          return vim.loop.cwd() -- current working directory
      end,
}

