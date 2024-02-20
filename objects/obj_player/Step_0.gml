/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F824715
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(vk_right) - keyboard_check(vk_left)"
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75865F6A
/// @DnDArgument : "expr" "move_x*move_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7FB7F448
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_platform_base"
/// @DnDSaveInfo : "object" "obj_platform_base"
var l7FB7F448_0 = instance_place(x + 0, y + 2, [obj_platform_base]);
if ((l7FB7F448_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E371797
	/// @DnDParent : 7FB7F448
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0B58150C
	/// @DnDParent : 7FB7F448
	var l0B58150C_0;
	l0B58150C_0 = keyboard_check(vk_space);
	if (l0B58150C_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3681A8B1
		/// @DnDParent : 0B58150C
		/// @DnDArgument : "expr" "-jump_speed "
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed ;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 57AB7763
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24A0F47E
	/// @DnDParent : 57AB7763
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CC47783
		/// @DnDParent : 24A0F47E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 11F7E9DE
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "0"
/// @DnDArgument : "maxymove" "0"
/// @DnDArgument : "object" "obj_platform_base"
/// @DnDSaveInfo : "object" "obj_platform_base"
move_and_collide(move_x, move_y, obj_platform_base,4,0,0,0,0);