/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C4B9C81
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "platform_blue"
platform_blue += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 540E3E69
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "platform_orbs"
platform_orbs += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AE7F165
/// @DnDArgument : "var" "obj_orb_gauge.slot_1"
/// @DnDArgument : "not" "1"
if(!(obj_orb_gauge.slot_1 == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3323A54F
	/// @DnDParent : 0AE7F165
	/// @DnDArgument : "var" "obj_orb_gauge.slot_2"
	/// @DnDArgument : "not" "1"
	if(!(obj_orb_gauge.slot_2 == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21E53811
		/// @DnDParent : 3323A54F
		/// @DnDArgument : "var" "obj_orb_gauge.slot_3"
		/// @DnDArgument : "not" "1"
		if(!(obj_orb_gauge.slot_3 == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CD2848E
			/// @DnDParent : 21E53811
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" " platform_blue"
			 platform_blue += -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 042B3E6C
			/// @DnDParent : 21E53811
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "platform_orbs"
			platform_orbs += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5FB52418
		/// @DnDParent : 3323A54F
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F37C3B8
			/// @DnDParent : 5FB52418
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "obj_orb_gauge.slot_3"
			obj_orb_gauge.slot_3 = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3CD8CEDE
	/// @DnDParent : 0AE7F165
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5144AB78
		/// @DnDParent : 3CD8CEDE
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_orb_gauge.slot_2"
		obj_orb_gauge.slot_2 = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AFF722F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 714D8560
	/// @DnDParent : 7AFF722F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_orb_gauge.slot_1"
	obj_orb_gauge.slot_1 = 1;
}