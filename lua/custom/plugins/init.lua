-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function ()
			local harpoon = require("harpoon")
			harpoon:setup()
			vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc="[H]arpoon [A]dd" })
			vim.keymap.set("n", "<leader>hu", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc="[H]arpoon [U]I" })
			vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc="[H]arpoon [P]rev" })
			vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc="[H]arpoon [N]ext" })
		end
	}
}
