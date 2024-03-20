/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F824715
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(vk_right) - keyboard_check(vk_left)"
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71E08A33
/// @DnDArgument : "var" "double_jump"
/// @DnDArgument : "value" "true"
if(double_jump == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 54A57447
	/// @DnDParent : 71E08A33
	var l54A57447_0;
	l54A57447_0 = keyboard_check_pressed(vk_space);
	if (l54A57447_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47676F70
		/// @DnDParent : 54A57447
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "jump_nb"
		jump_nb += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0BACDA84
		/// @DnDParent : 54A57447
		/// @DnDArgument : "expr" "-jump_speed+3"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed+3;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15E98AD6
		/// @DnDParent : 54A57447
		/// @DnDArgument : "var" "jump_nb"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "2"
		if(jump_nb >= 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A5C5D26
			/// @DnDParent : 15E98AD6
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "jump_nb"
			jump_nb = 2;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50CEF605
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 168A7386
	/// @DnDParent : 50CEF605
	/// @DnDArgument : "expr" "sign(move_x)"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = sign(move_x);
}

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
	/// @DnDHash : 44D6FF19
	/// @DnDParent : 7FB7F448
	/// @DnDArgument : "var" "jump_nb"
	jump_nb = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E371797
	/// @DnDParent : 7FB7F448
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51D96688
	/// @DnDParent : 7FB7F448
	/// @DnDArgument : "var" "double_jump"
	double_jump = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7043BB71
	/// @DnDParent : 7FB7F448
	/// @DnDArgument : "x" "move_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_platform_base"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_platform_base"
	var l7043BB71_0 = instance_place(x + move_x, y + 2, [obj_platform_base]);
	if (!(l7043BB71_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 344C5F8D
		/// @DnDParent : 7043BB71
		/// @DnDArgument : "x" "move_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_platform_base"
		/// @DnDSaveInfo : "object" "obj_platform_base"
		var l344C5F8D_0 = instance_place(x + move_x, y + 10, [obj_platform_base]);
		if ((l344C5F8D_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D6DEAD1
			/// @DnDInput : 2
			/// @DnDParent : 344C5F8D
			/// @DnDArgument : "expr" "abs(move_x)"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "move_x"
			move_y = abs(move_x);
			move_x = 0;
		}
	}

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
		/// @DnDHash : 222EE450
		/// @DnDParent : 0B58150C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "jump_nb"
		jump_nb += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3681A8B1
		/// @DnDParent : 0B58150C
		/// @DnDArgument : "expr" "-jump_speed "
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed ;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 156F52FD
		/// @DnDParent : 0B58150C
		/// @DnDArgument : "var" "jump_nb"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "2"
		if(jump_nb >= 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E1F0132
			/// @DnDParent : 156F52FD
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "jump_nb"
			jump_nb = 2;
		}
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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35E58283
	/// @DnDParent : 57AB7763
	/// @DnDArgument : "var" "jump_nb"
	/// @DnDArgument : "value" "2"
	if(jump_nb == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5837A4B6
		/// @DnDParent : 35E58283
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "double_jump"
		double_jump = false;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6B4CEC58
	/// @DnDParent : 57AB7763
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27E121D7
		/// @DnDParent : 6B4CEC58
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "double_jump"
		double_jump = true;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 11F7E9DE
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "object" "obj_platform_base"
/// @DnDSaveInfo : "object" "obj_platform_base"
move_and_collide(move_x, move_y, obj_platform_base,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3AE3DB2A
/// @DnDArgument : "key" "ord("A")"
var l3AE3DB2A_0;
l3AE3DB2A_0 = keyboard_check_pressed(ord("A"));
if (l3AE3DB2A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 244D069D
	/// @DnDParent : 3AE3DB2A
	/// @DnDArgument : "var" "platform_blue"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(platform_blue >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 230AF447
		/// @DnDApplyTo : all
		/// @DnDParent : 244D069D
		/// @DnDArgument : "steps" "1"
		with(all) {
		alarm_set(0, 1);
		
		}
	}
}