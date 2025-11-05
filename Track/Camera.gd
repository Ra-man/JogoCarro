extends Camera3D

@export var camera_ID = 0
@export var follow_this_path: NodePath
@export var target_distance = 10
@export var target_height = 1

var follow_this = null
var last_lookat

func _ready():
	set_as_top_level(true)
	if not follow_this_path == null:
		follow_this = get_node(follow_this_path)
		last_lookat = follow_this.global_transform.origin


func _physics_process(delta):
	if follow_this == null:
		return
	
	var delta_v = global_transform.origin - follow_this.global_transform.origin
	var target_pos = global_transform.origin
	
	delta_v.y = 0
	
	if delta_v.length() > target_distance:
		delta_v = delta_v.normalized() * target_distance
		delta_v.y = target_height
		target_pos = follow_this.global_transform.origin + delta_v
	else:
		target_pos.y = follow_this.global_transform.origin.y + target_height
	
	global_transform.origin = global_transform.origin.lerp(target_pos, 1)
	last_lookat = last_lookat.lerp(follow_this.global_transform.origin, 1)
	
	look_at(last_lookat + Vector3(0,2,0), Vector3.UP)
		
		
		
		
		
		
