/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 09F1CA81
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_exit.key"
obj_exit.key += 1;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 0249A208
/// @DnDApplyTo : {obj_exit}
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "type" "3"
with(obj_exit) effect_create_below(3, x, y, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 62F9962D
instance_destroy();