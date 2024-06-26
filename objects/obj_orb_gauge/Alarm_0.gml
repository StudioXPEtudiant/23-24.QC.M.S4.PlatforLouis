/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2C69AB67
/// @DnDArgument : "xpos" "obj_player.x"
/// @DnDArgument : "ypos" "obj_player.y+100"
/// @DnDArgument : "objectid" "obj_platform_blue"
/// @DnDSaveInfo : "objectid" "obj_platform_blue"
instance_create_layer(obj_player.x, obj_player.y+100, "Instances", obj_platform_blue);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 2A8BA996
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y+100"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FFFFE500"
effect_create_below(7, obj_player.x, obj_player.y+100, 1, $FFFFE500 & $ffffff);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 09F8DC44
/// @DnDApplyTo : {obj_platform_blue}
/// @DnDArgument : "speed" "0"
with(obj_platform_blue) image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6B8627EB
/// @DnDArgument : "steps" "100"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 100);