/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ECF88AA
/// @DnDArgument : "var" "obj_orb_gauge.slot_1"
/// @DnDArgument : "value" "1"
if(obj_orb_gauge.slot_1 == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3724D41E
	/// @DnDParent : 2ECF88AA
	/// @DnDArgument : "var" "platform_blue"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(platform_blue >= 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0824E1CE
		/// @DnDParent : 3724D41E
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "platform_blue"
		platform_blue += -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02891073
		/// @DnDParent : 3724D41E
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "platform_orbs"
		platform_orbs = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DE7D8B0
		/// @DnDParent : 3724D41E
		/// @DnDArgument : "var" "obj_orb_gauge.slot_1"
		obj_orb_gauge.slot_1 = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4CFC56DD
		/// @DnDApplyTo : all
		/// @DnDParent : 3724D41E
		/// @DnDArgument : "steps" "1"
		with(all) {
		alarm_set(0, 1);
		
		}
	}
}