/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E0AED96
/// @DnDArgument : "var" "slot_1"
if(slot_1 == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EC2F01A
	/// @DnDParent : 7E0AED96
	/// @DnDArgument : "var" "obj_player.platform_orbs"
	/// @DnDArgument : "op" "2"
	if(obj_player.platform_orbs > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A89C15F
		/// @DnDParent : 0EC2F01A
		/// @DnDArgument : "expr" "slot_2"
		/// @DnDArgument : "var" "slot_1"
		slot_1 = slot_2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40848F4C
		/// @DnDParent : 0EC2F01A
		/// @DnDArgument : "var" "slot_2"
		slot_2 = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5B417909
	/// @DnDParent : 7E0AED96
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50F5A025
		/// @DnDParent : 5B417909
		/// @DnDArgument : "var" "slot_2"
		slot_2 = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22C4FEFB
/// @DnDArgument : "var" "slot_2"
if(slot_2 == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49995341
	/// @DnDParent : 22C4FEFB
	/// @DnDArgument : "var" "obj_player.platform_orbs"
	/// @DnDArgument : "op" "2"
	if(obj_player.platform_orbs > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 264B6A03
		/// @DnDParent : 49995341
		/// @DnDArgument : "expr" "slot_3"
		/// @DnDArgument : "var" "slot_2"
		slot_2 = slot_3;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 509879CA
		/// @DnDParent : 49995341
		/// @DnDArgument : "var" "slot_3"
		slot_3 = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5AD74286
	/// @DnDParent : 22C4FEFB
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3378C43F
		/// @DnDParent : 5AD74286
		/// @DnDArgument : "var" "slot_3"
		slot_3 = 0;
	}
}