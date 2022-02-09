#define N7_OVERRIDE 'code/modules/pinnacle_station/clothing/systems_alliance_N7.dmi'


/obj/item/clothing/head/systems_alliance/n7
	name = "ONYX-N N-Series Heavy Battle Helmet"
	icon = N7_OVERRIDE
	icon_override = N7_OVERRIDE
	icon_state = "n7_helmet"
	item_state = "n7_helmet_w"
	desc = "A special helmet designed for use with the ONYX-N Armor"
	item_flags = 0
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	permeability_coefficient = 0.01
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)


/obj/item/clothing/suit/armor/systems_alliance/n7
	name = "ONYX-N N-Series Heavy Battle Armor"
	desc = "Standard issue combat hardsuit for N-series special forces. Built to protect soldiers in long-running engagements where reinforcements may be sparse."
	icon = N7_OVERRIDE
	icon_override = N7_OVERRIDE
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

/obj/item/clothing/suit/armor/systems_alliance/n7
	item_state_slots = list(
		slot_l_hand_str = "space_suit_syndicate",
		slot_r_hand_str = "space_suit_syndicate",
	)
/obj/item/clothing/suit/armor/systems_alliance/n7/Initialize()
	. = ..()
	slowdown_per_slot[slot_wear_suit] = 1.1

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier
	var/open = FALSE
	var/obj/item/cell/power_cell = /obj/item/cell/high
	var/shield_type = /obj/aura/personal_shield/device
	var/shield_power_cost = 1000
	var/obj/aura/personal_shield/device/shield

	VAR_PRIVATE/currently_stored_power = 0
	VAR_PRIVATE/max_stored_power = 3000
	VAR_PRIVATE/restored_power_per_tick = 5
	VAR_PRIVATE/enable_when_powered = FALSE

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/Initialize()
	. = ..()
	if(ispath(power_cell))
		power_cell = new power_cell(src)
		currently_stored_power = power_cell.use(max_stored_power)

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/Destroy()
	QDEL_NULL(shield)
	if(!ispath(power_cell))
		QDEL_NULL(power_cell)
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/Process(wait)
	if(!power_cell?.charge || currently_stored_power >= max_stored_power)
		return PROCESS_KILL
	var/amount_to_restore = min(restored_power_per_tick * wait, max_stored_power - currently_stored_power)
	currently_stored_power += power_cell.use(amount_to_restore)

	if(enable_when_powered && currently_stored_power >= shield_power_cost)
		turn_on(get_holder_of_type(src, /mob))

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/examine(mob/user, distance)
	. = ..()
	if(open)
		if(power_cell)
			to_chat(user, "There is \a [power_cell] in \the [src].")
		else
			to_chat(user, "There is no cell in \the [src].")
	to_chat(user, "The internal capacitor currently has [round(currently_stored_power/max_stored_power * 100)]% charge.")

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/attackby(var/obj/item/W, var/mob/user)
	if(istype(W, /obj/item/cell))
		if(!open)
			to_chat(user, SPAN_WARNING("\The [src] needs to be open first."))
		else if(power_cell)
			to_chat(user, SPAN_WARNING("\The [src] already has a battery."))
		else if(user.unEquip(W, src))
			user.visible_message("\The [user] installs \the [W] into \the [src].", SPAN_NOTICE("You install \the [W] into \the [src]."))
			power_cell = W
			START_PROCESSING(SSobj, src)
			update_icon()
	if(isScrewdriver(W))
		playsound(src, 'sound/items/Screwdriver.ogg', 15, 1)
		user.visible_message("\The [user] [open ? "screws" : "unscrews"] the hatch of \the [src].", SPAN_NOTICE("You [open ? "screw" : "unscrew"] the hatch of \the [src]."))
		open = !open
		update_icon()

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/attack_self(var/mob/living/user)
	if (open && power_cell)
		user.visible_message("\The [user] shakes \the [power_cell] out of \the [src].", SPAN_NOTICE("You shake \the [power_cell] out of \the [src]."))
		turn_off()
		power_cell.dropInto(user.loc)
		on_remove_cell()
	else
		toggle(user)

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/attack_hand(var/mob/living/user)
	if(open && (loc == user))
		if(power_cell)
			user.visible_message("\The [user] removes \the [power_cell] from \the [src].", SPAN_NOTICE("You remove \the [power_cell] from \the [src]."))
			turn_off()
			user.put_in_active_hand(power_cell)
			on_remove_cell()
		else
			to_chat(user, SPAN_WARNING("There's no battery in \the [src]."))
	else . = ..()

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/proc/on_remove_cell()
	power_cell = null
	currently_stored_power = 0
	enable_when_powered = FALSE
	update_icon()

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/dropped(var/mob/user)
	turn_off()
	. = ..()

/obj/item/device/personal_shield/equipped(var/mob/user, var/slot)
	if(slot != SLOT_OCLOTHING && slot != slot_l_hand && slot != slot_r_hand)
		turn_off()
	. = ..()


/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/proc/turn_on(var/mob/user)
	enable_when_powered = FALSE
	if(shield || open || !user)
		return
	if(!power_cell)
		to_chat(user, SPAN_WARNING("\The [src] doesn't have a power supply."))
		return
	if(currently_stored_power < shield_power_cost)
		to_chat(user, SPAN_WARNING("\The [src]'s internal capacitor does not have enough charge."))
		return
	shield = new shield_type(user, src)

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/proc/turn_off(var/mob/user)
	if(!shield)
		return
	QDEL_NULL(shield)

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/proc/toggle(var/mob/user)
	if(shield)
		turn_off(user)
	else
		turn_on(user)

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/AltClick(mob/user)
	if (loc == user)
		toggle(user)
	else
		. = ..()

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/proc/take_charge()
	if(!actual_take_charge())
		turn_off()
		return FALSE
	return TRUE

/obj/item/clothing/suit/armor/systems_alliance/n7/kinetic_barrier/proc/actual_take_charge()
	if(!power_cell)
		return FALSE
	if(currently_stored_power < shield_power_cost)
		return FALSE

	currently_stored_power -= shield_power_cost
	START_PROCESSING(SSobj, src)

	if(currently_stored_power < shield_power_cost)
		enable_when_powered = TRUE
		return FALSE
	return TRUE

/obj/item/device/personal_shield/proc/update_name()
	if(shield)
		SetName("activated [initial(name)]")
	else
		SetName(initial(name))


#undef N7_OVERRIDE