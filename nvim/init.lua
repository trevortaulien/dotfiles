require("core_config/opts")
require("core_config/maps")

require("plugin_manager")

-- Only need one command so this is fine here,
-- if I ever need more I should create a .lua
-- in core_config directory
vim.cmd "colorscheme evergarden"
