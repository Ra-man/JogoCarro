extends Node

func get_files(folder):
	var gathered_files = []
	# Exemplo recomendado
	var dir = DirAccess.open("res://")

	dir.open(folder)
	dir.list_dir_begin() # TODOConverter3To4 fill missing arguments https://github.com/godotengine/godot/pull/40547
	
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif not file.begins_with(".") and not file.ends_with(".import"):
			gathered_files.append(folder+file)
	
	return gathered_files
