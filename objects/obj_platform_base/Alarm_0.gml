/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D2D9AF0
/// @DnDArgument : "xpos" "obj_player.x"
/// @DnDArgument : "ypos" "obj_player.y+100"
/// @DnDArgument : "objectid" "obj_platform_base"
/// @DnDSaveInfo : "objectid" "obj_platform_base"
instance_create_layer(obj_player.x, obj_player.y+100, "Instances", obj_platform_base);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 7DCE42C7
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y+100"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "size" "1"
effect_create_below(7, obj_player.x, obj_player.y+100, 1, $FFFFFF & $ffffff);