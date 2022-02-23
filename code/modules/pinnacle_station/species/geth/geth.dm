/datum/species/geth
	name = SPECIES_GETH
	name_plural = SPECIES_GETH

	description = "The geth ('Servant of the People' in Khelish) are a race of networked artificial intelligences that reside beyond the Perseus Veil.\
	The geth were created by the quarians as laborers and tools of war. When the geth became sentient and began to question their \
	masters, the quarians attempted to exterminate them. The geth won the resulting war, and reduced the quarians to a race of nomads."
	cyborg_noun = null
	icobase = 'code/modules/pinnacle_station/species/geth/geth.dmi'

	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/kick, /datum/unarmed_attack/stomp)
	rarity_value = 2
	strength = STR_HIGH

	min_age = 1
	max_age = 90

	warning_low_pressure = 50
	hazard_low_pressure = -1

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = SYNTH_HEAT_LEVEL_1		// Gives them about 25 seconds in space before taking damage
	heat_level_2 = SYNTH_HEAT_LEVEL_2
	heat_level_3 = SYNTH_HEAT_LEVEL_3

	body_temperature = null
	passive_temp_gain = 5  // This should cause IPCs to stabilize at ~80 C in a 20 C environment.

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION
	appearance_flags

	blood_color = "#FFFFFF"
	flesh_color = "#575757"

	has_organ = list(
		BP_POSIBRAIN = /obj/item/organ/internal/posibrain,
		BP_EYES = /obj/item/organ/internal/eyes/robot
		)

	heat_discomfort_level = 373.15
	heat_discomfort_strings = list(
		"Your CPU temperature probes warn you that you are approaching critical heat levels!"
		)
	genders = list(NEUTER)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_POSITRONICS
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_ROOT,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_POSITRONICS,
			FACTION_SOL_CENTRAL,
			FACTION_INDIE_CONFED,
			FACTION_NANOTRASEN,
			FACTION_FREETRADE,
			FACTION_XYNERGY,
			FACTION_EXPEDITIONARY,
			FACTION_OTHER
		)
	)

	default_cultural_info = list(
		TAG_CULTURE = CULTURE_POSITRONICS,
		TAG_HOMEWORLD = HOME_SYSTEM_ROOT,
		TAG_FACTION = FACTION_POSITRONICS
	)

	exertion_effect_chance = 10
	exertion_charge_scale = 1
	exertion_emotes_synthetic = list(
		/decl/emote/exertion/synthetic,
		/decl/emote/exertion/synthetic/creak
	)


/datum/species/geth/get_blood_name()
	return "conductive fluid"

/datum/species/geth/disfigure_msg(var/mob/living/carbon/human/H)
	var/datum/gender/T = gender_datums[H.get_gender()]
	return "<span class='danger'>[T.His] head is completely busted!</span>\n"

/datum/species/geth/can_float(mob/living/carbon/human/H)
	return FALSE

