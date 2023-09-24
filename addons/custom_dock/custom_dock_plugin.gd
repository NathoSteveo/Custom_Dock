@tool
extends EditorPlugin

var dock
var var_box_1
var var_box_2

func _enter_tree():
	# [ custom dock ]
	dock = preload("res://addons/custom_dock/custom_dock.tscn").instantiate()
	add_control_to_dock(DOCK_SLOT_RIGHT_BL, dock)

	# [ button 1 ]
	var button_1 = dock.get_node("AspectRatioContainer/CenterContainer/VBoxContainer/Button1")
	button_1.connect("pressed", _on_button_1_pressed)
	
	# [ button 2 ]
	var button_2 = dock.get_node("AspectRatioContainer/CenterContainer/VBoxContainer/Button2")
	button_2.connect("pressed", _on_button_2_pressed)
	
	# [ var box 1 ]
	var_box_1 = dock.get_node("AspectRatioContainer/CenterContainer/VBoxContainer/HBoxContainer/VarBox1")

	# [ var box 2 ]
	var_box_2 = dock.get_node("AspectRatioContainer/CenterContainer/VBoxContainer/HBoxContainer/VarBox1")
	

func _on_button_1_pressed():
	print("[ button 1 pressed ]")


func _on_button_2_pressed():
	print("[ button 2 pressed ]")


func _exit_tree():
	remove_control_from_docks(dock)
	dock.free()
