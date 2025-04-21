return {
	"ggandor/leap.nvim",
	config = function()
		-- require("leap").set_default_keymaps()
		-- require('leap').create_default_mappings()
		local leap = require("leap")
		leap.set_default_keymaps()
	end,
}
