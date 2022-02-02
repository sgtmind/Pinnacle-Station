/obj/item/clothing/head/helmet/space/turian/heavy
	name = "Silverback Heavy Combat Helmet"
	icon_state = "capspace"
	item_state = "capspace"
	desc = "The standard helmet of the turian soldier"
	item_flags = 0
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	flags_inv = HIDEFACE|BLOCKHAIR
	species_restricted = list(SPECIES_TURIAN)
	permeability_coefficient = 0.01
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

/obj/item/clothing/suit/armor/turian/heavy
	name = "Silverback Heavy Combat Armor"
	desc = "The standard armor of the turian soldier, Silverback Armor is made from laser-polish compressed metals backed with high-impact ceramic, over a gel-padded bodysuit of spall-liners and omnigel that automatically seals suit breaches. It is quite durable"
	icon_state = "caparmor"
	item_state_slots = list(
		slot_l_hand_str = "capspacesuit",
		slot_r_hand_str = "capspacesuit",
	)
	w_class = ITEM_SIZE_HUGE
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
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
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7

/obj/item/clothing/suit/armor/captain/Initialize()
	. = ..()
	slowdown_per_slot[slot_wear_suit] = 1.5