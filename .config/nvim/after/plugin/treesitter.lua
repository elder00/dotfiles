require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "c_sharp", "html", "css", "csv", "lua", "vim", "vimdoc", "query", "php", "sql", "yaml", "xml", "json", "javascript", "typescript", "python"},

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,


    additional_vim_regex_highlighting = false,
  },
}
