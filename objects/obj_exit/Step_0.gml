/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23181D23
/// @DnDArgument : "var" "key"
/// @DnDArgument : "value" "1"
if(key == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7426BA5E
	/// @DnDParent : 23181D23
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_exit"
	/// @DnDSaveInfo : "spriteind" "spr_exit"
	sprite_index = spr_exit;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E0397C2
/// @DnDArgument : "var" "key"
/// @DnDArgument : "value" "2"
if(key == 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B392DFF
	/// @DnDParent : 7E0397C2
	/// @DnDArgument : "imageind" "2"
	/// @DnDArgument : "spriteind" "spr_exit"
	/// @DnDSaveInfo : "spriteind" "spr_exit"
	sprite_index = spr_exit;
	image_index = 2;
}