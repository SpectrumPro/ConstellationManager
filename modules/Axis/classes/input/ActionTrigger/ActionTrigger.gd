# Copyright (c) 2026 Liam Sherwin, All rights reserved.
# This file is part of the Spectrum Lighting Engine, licensed under the GPL v3.

class_name ActionTrigger extends InputItem
## Base class for all ActionTriggers


## init
func _init(p_uuid: String = UUID.v4(), ...p_args: Array[Variant]) -> void:
	super._init(p_uuid, p_args)
	
	set_uname("ActionTrigger")
	_set_class_name("ActionTrigger")
