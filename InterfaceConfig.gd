static var config: Dictionary[String, Variant] = {
	"scale_factor": 1,
	"save_ui_on_quit": true,
	"default_ui_panel": UICore,
	"window_popup_config": {},
	"command_palette_default_items": [
		CommandPaletteEntry.new(
			Network.get_settings(), 
			"Network"
		),
		CommandPaletteEntry.new(
			Interface.get_settings(), 
			"Interface"
		),
		CommandPaletteEntry.new(
			Popups.get_settings(), 
			"Popups"
		),
		CommandPaletteEntry.new(
			Network.get_active_handler_by_name("Constellation").get_local_node().get_settings(), 
			"Constellation"
		),
	]
}
