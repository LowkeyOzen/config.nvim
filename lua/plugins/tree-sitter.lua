return {
	
	 {
     "nvim-treesitter/nvim-treesitter",
     lazy = false,
     build = ":TSUpdate",
     opts = {},
     config = function()
         vim.api.nvim_create_autocmd("FileType", {
             pattern = "odin",
             callback = function()
                 vim.treesitter.start()
             end,
         })
     end,
 }

}
