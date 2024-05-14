return{
	"rmehri01/onenord.nvim",
	enabled = true,
	config = function()
		require("onenord").setup({
			theme = "dark",
			borders = true,
			fade_nc = true,
		})
	end
}
