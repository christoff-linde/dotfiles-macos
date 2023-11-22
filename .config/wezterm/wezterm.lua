local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

return {
	window_decorations = "RESIZE",
	window_background_opacity = 0.8,
	macos_window_background_blur = 24,
	text_background_opacity = 0.2,
	-- ...your existing config
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
}
