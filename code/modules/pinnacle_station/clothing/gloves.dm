/obj/item/clothing/gloves/pinnacle_station
	desc = "A set of gloves with an integrated omni-tool."
	name = "\improper SWAT Gloves"
	item_state = "swat_gl"
	force = 5
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_MINOR)

var/omni_blades_active = 0

/obj/item/clothing/gloves/pinnacle_station/verb/omni_blade()