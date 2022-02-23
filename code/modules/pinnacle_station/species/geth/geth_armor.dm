#define GETH_OVERRIDE 'code/modules/pinnacle_station/species/geth/geth.dmi'


/obj/item/clothing/under/geth_shell
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for more robust protection. It has the word \"Warden\" written on the shoulders."
	name = "geth shell"
	icon = GETH_OVERRIDE
	icon_override = GETH_OVERRIDE
	icon_state = "geth_shell"
	item_state = "geth_shell"
	worn_state = "geth_shell"
	armor = list(
		melee = ARMOR_MELEE_SMALL
		)
	siemens_coefficient = 0.9
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS|HEAD

#undef GETH_OVERRIDE
