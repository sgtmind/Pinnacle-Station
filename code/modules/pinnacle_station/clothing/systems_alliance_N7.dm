/obj/item/clothing/head/helmet/systems_alliance/n7
	name = "Onyx-N Helmet"
	desc = "A helmet for a set of Oynx-N armor. Feels like it could take a lot of punishment"
	icon = 'code/modules/halo/clothing/spartan_armour.dmi'
	icon_state = "mk4-helm"
	item_state = "mk4-helm-worn"
	icon_override = 'code/modules/halo/clothing/spartan_armour.dmi'

	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL | AIRTIGHT
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
	body_parts_covered = HEAD|FACE
	heat_protection = HEAD|FACE
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	cold_protection = HEAD|FACE
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 1
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(melee = 60, bullet = 40, laser = 30,energy = 30, bomb = 25, bio = 30, rad = 30)
	species_restricted = list("Spartan")
	armor_thickness = 20

	action_button_name = "Toggle Helmet Light"
	light_overlay = "helmet_light_dual"
	brightness_on = 4
	unacidable = 1
	on = 0
	item_state_slots = list(slot_l_hand_str = "syndicate-helm-black", slot_r_hand_str = "syndicate-helm-black")

	integrated_hud = /obj/item/clothing/glasses/hud/tactical/spartan_hud

/obj/item/clothing/head/helmet/systems_alliance/n7/reaper
	name = "Onyx-N Helmet"
	desc = "A helmet for a set of Oynx-N armor. Feels like it could take a lot of punishment"
	icon = 'code/modules/halo/clothing/spartan_armour.dmi'
	icon_state = "mk4-helm"
	item_state = "mk4-helm-worn"
	icon_override = 'code/modules/halo/clothing/spartan_armour.dmi'

	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL | AIRTIGHT
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
	body_parts_covered = HEAD|FACE
	heat_protection = HEAD|FACE
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	cold_protection = HEAD|FACE
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 1
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(melee = 60, bullet = 40, laser = 30,energy = 30, bomb = 25, bio = 30, rad = 30)
	species_restricted = list("Spartan")
	armor_thickness = 20

	action_button_name = "Toggle Helmet Light"
	light_overlay = "helmet_light_dual"
	brightness_on = 4
	unacidable = 1
	on = 0
	item_state_slots = list(slot_l_hand_str = "syndicate-helm-black", slot_r_hand_str = "syndicate-helm-black")

	integrated_hud = /obj/item/clothing/glasses/hud/tactical/spartan_hud