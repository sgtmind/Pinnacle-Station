/datum/reagent/medigel
	name = "Medi-gel"
	description = "Medi-gel is an all-purpose medicinal salve combining an anaesthetic and clotting agent used by paramedics, EMTs, and military personnel"
	taste_description = "bitter"
	reagent_state = LIQUID
	color = "#00bfff"
	overdose = REAGENTS_OVERDOSE * 2
	metabolism = REM * 0.5
	scannable = 1
	flags = IGNORE_MOB_SIZE
	value = 3.5

/datum/reagent/medigel/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	if(alien != IS_DIONA)
		M.heal_organ_damage(3 * removed, 3 * removed)
		M.add_chemical_effect(CE_PAINKILLER, 10)