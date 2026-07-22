## File path for all UIPanels
const UI_PANEL_LOCATION: String = "res://panels/"

## File path for all UIPanels
const UI_POPUP_LOCATION: String = "res://panels/popups/"

## File path for all UIComponents
const UI_COMPONENT_LOCATION: String = "res://components/"

## File path for all UIPanels
const DATA_INPUT_LOCATION: String = "res://components/DataInputs/"

## File path for all UIPanels
const ICON_LOCATION: String = "res://assets/icons/"


## All user defined UIPanels
static var panels: Dictionary[String, PackedScene] = {
	"UICore":								load(_p(UICore)),
	"UIConstellationManager":				load("res://modules/UIConstellationManager/panels/UIConstellationManager.tscn"),
}

## All user defined UIPanels
static var popups: Dictionary[String, PackedScene]

## All user defined UIPanels
static var components: Dictionary[String, PackedScene]

## All user defined UIPanels
static var data_inputs: Dictionary[Data.Type, Variant] = {
	Data.Type.OBJECT:			{
		Data.Sub.Type.NULL:						load(CoreUIDB._d(DataInputObject)),
	}
}

## All user defined UIPanels
static var class_icons: Dictionary[String, Texture2D] = {
	"NetworkManager": 		load(_i("Network")),
	"Network": 				load(_i("Network")),
	"Constellation": 		load(_i("Graph3")),
}

## Categorys of the user defined panels
static var panels_by_category: Dictionary[String, Array] = {
	"System": [
		"UICore",
		"UIConstellationManager"
	],
}

## Config
static var config: Dictionary[String, Variant] = {
	"panels": panels,
	"popups": popups,
	"components": components,
	"data_inputs": data_inputs,
	"class_icons": class_icons,
	"panels_by_category": panels_by_category
}


## Returns the file path of a UIPanel
static func _p(p_panel_script: Script) -> String:
	var panel_class: String = p_panel_script.get_global_name()
	return str(UI_PANEL_LOCATION, panel_class, "/", panel_class, ".tscn")


## Returns the file path of a UIPopup
static func _u(p_popup_script: Script) -> String:
	var popup_class: String = p_popup_script.get_global_name()
	return str(UI_POPUP_LOCATION, popup_class, "/", popup_class, ".tscn")


## Returns the file path of a UIComponent
static func _c(p_component_script: Script) -> String:
	var component_class: String = p_component_script.get_global_name()
	return str(UI_COMPONENT_LOCATION, component_class, "/", component_class, ".tscn")


## Returns the file path of a DataInput
static func _d(p_data_input_script: Script) -> String:
	var data_input_class: String = p_data_input_script.get_global_name()
	return str(DATA_INPUT_LOCATION, data_input_class, "/", data_input_class, ".tscn")


## Returns the file path of a Icon
static func _i(p_data_input_class: String) -> String:
	return str(ICON_LOCATION, p_data_input_class, ".svg")
