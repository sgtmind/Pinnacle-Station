/*
/obj/item/clothing/under/systems_alliance/marine_fatigues
	desc = "A standard issue uniform for the Systems Alliance marine corps."
	name = "Systems Alliance fatigues"
	icon = ITEM_INHAND
	icon_override = MARINE_OVERRIDE
	item_state = "UNSC Marine Fatigues"
	icon_state = "uniform_obj"
	worn_state = "UNSC Marine Fatigues"
	starting_accessories = /obj/item/clothing/accessory/badge/tags
*/
/obj/item/clothing/head/helmet/space/void/systems_alliance/marine
	name = "ONYX Mod I Helmet"
	desc = "A bright blue helmet issued to soldiers of the Systems Alliance Marine Corps. Designed to protect against hostile enviornemnts and smaller arms fire."
	icon_state = "rig0-syndie"
	item_state = "syndie_helm"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	siemens_coefficient = 0.3

/obj/item/clothing/suit/space/void/systems_alliance/marine
	icon_state = "rig-syndie"
	name = "ONYX Standard Battle Armor"
	desc = "Developed by Ariake Technologies, this suit exchanges full protective coverage for visibility, unencumbered mobility, and increased accuracy. This is a full environmental armor, with a built-in biofeedback system regulating wearer's adrenaline surges and monitoring medical conditions. Standard issue for all marines."
	item_state_slots = list(
		slot_l_hand_str = "syndie_voidsuit",
		slot_r_hand_str = "syndie_voidsuit",
	)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword,/obj/item/handcuffs)
	siemens_coefficient = 0.3
