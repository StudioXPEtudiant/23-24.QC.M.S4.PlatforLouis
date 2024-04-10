/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00FC68AA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "platform_red"
platform_red += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D377368
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "platform_orbs"
platform_orbs += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5093393E
/// @DnDArgument : "var" "obj_orb_gauge.slot_1"
/// @DnDArgument : "not" "1"
if(!(obj_orb_gauge.slot_1 == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 057028D2
	/// @DnDParent : 5093393E
	/// @DnDArgument : "var" "obj_orb_gauge.slot_2"
	/// @DnDArgument : "not" "1"
	if(!(obj_orb_gauge.slot_2 == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16AB72E7
		/// @DnDParent : 057028D2
		/// @DnDArgument : "var" "obj_orb_gauge.slot_3"
		/// @DnDArgument : "not" "1"
		if(!(obj_orb_gauge.slot_3 == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17E253B4
			/// @DnDParent : 16AB72E7
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" " platform_red"
			 platform_red += -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 186B8A29
			/// @DnDParent : 16AB72E7
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "platform_orbs"
			platform_orbs += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 55193C3A
		/// @DnDParent : 057028D2
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DC036D8
			/// @DnDParent : 55193C3A
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "obj_orb_gauge.slot_3"
			obj_orb_gauge.slot_3 = 2;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 38A7F83D
	/// @DnDParent : 5093393E
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59358D82
		/// @DnDParent : 38A7F83D
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "obj_orb_gauge.slot_2"
		obj_orb_gauge.slot_2 = 2;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AF914A1
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 644BA6DF
	/// @DnDParent : 7AF914A1
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "obj_orb_gauge.slot_1"
	obj_orb_gauge.slot_1 = 2;
}