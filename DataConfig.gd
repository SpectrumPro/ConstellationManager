class_name DataConfig extends Object
## Class to store config for Data


## Class to store SubType keys
class SubType:
	enum Type {
		NULL,						## No Type
		OBJECT_NETWORKITEM,			## A NetworkItem
		OBJECT_UIPANEL,				## A UIPanel
		PACKEDSCENE_UIPANEL,		## A UIPanel PackedScene
	}


## Config for Data
var config: Dictionary[String, Variant] = {
	"gbc_index": {
		"NetworkItem": GBCIndexConfig.new(NetworkItem, NetworkDB, NetworkClassList, ChildManager.new(
			Network,
			Callable(),
			Callable(),
			Callable(),
			Callable(),
			Callable(),
			Callable(),
			Callable(),
			NetworkDB.get_components,
			NetworkDB.components_added,
			NetworkDB.components_removed,
			NetworkItem,
			NetworkItem
		))
	}
}
