return {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
        -- LSP list
        local supported_lsp =
            {"dockerls", "docker_compose_language_service", "tsserver", "rust_analyzer", "tailwindcss"}

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = supported_lsp
        })
    end
}
