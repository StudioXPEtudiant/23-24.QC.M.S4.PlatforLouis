/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5548EA45
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_platform_base"
/// @DnDSaveInfo : "object" "obj_platform_base"
var l5548EA45_0 = instance_place(x + 0, y + 2, [obj_platform_base]);
if ((l5548EA45_0 > 0))
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 71C3BDA3
	/// @DnDParent : 5548EA45
	room_restart();
}