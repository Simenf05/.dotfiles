return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function() 
      require("nvim-treesitter.configs").setup({
          ensure_installed = { "c", "lua", "javascript", "html", "python", "rust", "java", "go", "yaml", "dockerfile" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
