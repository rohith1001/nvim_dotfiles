require "lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            yaml = {
                {formatCommand = "yamllint", formatStdin = true}
            }
        }
    }
}
