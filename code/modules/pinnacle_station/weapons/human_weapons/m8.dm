//#define M8_OVERRIDE 'code/modules/pinnacle_station/weapons/icons/weapons.dmi'

/obj/item/ammo_magazine/m8_avenger
	name = "Avenger Ammo"
	icon_state = "assault_rifle"
	mag_type = MAGAZINE
	caliber = CALIBER_M8
	matter = list(MATERIAL_STEEL = 1800)
	ammo_type = /obj/item/ammo_casing/rifle
	max_ammo = 1000
	multiple_sprites = 1

/obj/item/projectile/bullet/m8_avenger
	fire_sound = 'sound/pinnacle_station/weapons/avenger_fire_1.ogg'
	damage = 45
	armor_penetration = 25
	penetration_modifier = 1.5
	penetrating = 1
	distance_falloff = 1.5

/obj/item/ammo_casing/m8_avenger
	desc = "this should not be here."
	caliber = CALIBER_M8
	projectile_type = /obj/item/projectile/bullet/m8_avenger
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/gun/projectile/automatic/pinnacle_station/m8_avenger
	name = "M8 Avenger"
	desc = "A common, versatile, military-grade assault rifle. Accurate when fired in short bursts, and deadly when fired on full auto."
	icon = 'code/modules/pinnacle_station/weapons/icons/weapons.dmi'
	icon_state = "m8_avenger"
	item_icons = list(
		slot_l_hand_str = 'code/modules/pinnacle_station/weapons/icons/lefthand_guns.dmi',
		slot_r_hand_str = 'code/modules/pinnacle_station/weapons/icons/righthand_guns.dmi',
		)
	fire_sound = 'sound/pinnacle_station/weapons/avenger_fire_1.ogg'
	item_state = "m8_avenger"
	handle_casings = CLEAR_CASINGS
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_M8
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ESOTERIC = 5)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m8_avenger
	allowed_magazines = /obj/item/ammo_magazine/m8_avenger
	one_hand_penalty = 8
	accuracy_power = 7
	accuracy = 2
	bulk = GUN_BULK_RIFLE + 1
	wielded_item_state = "m8_avenger-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null,    move_delay=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    one_hand_penalty=9, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=11, burst_accuracy=list(0,-1,-1,-2,-2), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)