#define MARINE_OVERRIDE 'code/modules/pinnacle_station/clothing/systems_alliance_marine.dmi'


/obj/item/clothing/head/systems_alliance/marine
	name = "ONYX Mod I Helmet"
	icon = MARINE_OVERRIDE
	icon_override = MARINE_OVERRIDE
	icon_state = "n7_helmet"
	item_state = "n7_helmet_w"
	desc = "A bright blue helmet issued to soldiers of the Systems Alliance Marine Corps. Designed to protect against hostile enviornemnts and smaller arms fire."
	item_flags = 0
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	permeability_coefficient = 0.01
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = 55,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)


/obj/item/clothing/suit/armor/systems_alliance/marine
	name = "ONYX Standard Battle Armor"
	desc = "Developed by Ariake Technologies, this suit exchanges full protective coverage for visibility, unencumbered mobility, and increased accuracy. This is a full environmental armor, with a built-in biofeedback system regulating wearer's adrenaline surges and monitoring medical conditions. Standard issue for all marines."
	icon = MARINE_OVERRIDE
	icon_override = MARINE_OVERRIDE
	icon_state = "n7_armor"
	item_state = "n7_armor_w"
	w_class = ITEM_SIZE_HUGE
	gas_transfer_coefficient = 0
	permeability_coefficient = 0
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	allowed = list(
		/obj/item/tank/oxygen_emergency,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/tank/nitrogen_emergency,
		/obj/item/device/flashlight,
		/obj/item/gun/energy,
		/obj/item/gun/projectile,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/melee/baton,
		/obj/item/handcuffs
	)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = 55,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7

/obj/item/clothing/suit/armor/systems_alliance/marine
	item_state_slots = list(
		slot_l_hand_str = "space_suit_syndicate",
		slot_r_hand_str = "space_suit_syndicate",
	)
/obj/item/clothing/suit/armor/captain/Initialize()
	. = ..()
	slowdown_per_slot[slot_wear_suit] = 1.1

#undef MARINE_OVERRIDE
