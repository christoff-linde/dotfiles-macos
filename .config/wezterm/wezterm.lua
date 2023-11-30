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
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.7,
	macos_window_background_blur = 64,
	text_background_opacity = 0.4,
	-- font = wezterm.font_with_fallback({
	--	"MonaspiceXe NF",
	--	"Iosevka NF",
	--	"JetBrainsMono NF",
	--	"FiraCode Nerd Font",
	--	"Hack Nerd Font",
	--	"MesloLGS NF",
	--}),
	font = wezterm.font({
		family = "Iosevka NF",
		weight = 400,
	}),
	hafbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
	-- ...your existing config
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
}
