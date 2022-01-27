/datum/species/turian

	// Descriptors and strings.
	name = "turian"
	name_plural = "turians"
	description = "Originally from the planet Palaven, turians are best known for their military role, \
	particularly their contributions of soldiers and starships to the Citadel Fleet. They are respected \
	for their public service ethic. It was the turians who first proposed creating the now ubitiquos C-Sec \
	but are often viewed as imperialist or rigid by other races."

	hidden_from_codex = TRUE
	assisted_langs = list(LANGUAGE_NABBER)

	// Icon/appearance vars.
	icobase =      'code/modules/pinnacle_station/species/turians/turian.dmi'
	deform =       'code/modules/pinnacle_station/species/turians/turian.dmi'
	husk_icon =    'icons/mob/human_races/species/default_husk.dmi'
	bandages_icon

	// Damage overlay and masks.
	damage_overlays = 'icons/mob/human_races/species/human/damage_overlay.dmi'
	damage_mask =     'icons/mob/human_races/species/human/damage_mask.dmi'
	blood_mask =      'icons/mob/human_races/species/human/blood_mask.dmi'

	blood_color = "#000080"
	flesh_color = "#002366"
	blood_oxy = 1

	mob_size	= MOB_MEDIUM
	strength    = STR_MEDIUM
	show_ssd = "fast asleep"
	show_coma = "completely comatose"
	blood_volume = SPECIES_BLOOD_DEFAULT  // Initial blood volume.
	hunger_factor = DEFAULT_HUNGER_FACTOR // Multiplier for hunger.
	thirst_factor = DEFAULT_THIRST_FACTOR // Multiplier for thirst.
	taste_sensitivity = TASTE_NORMAL      //
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED

	min_age = 17
	max_age = 70

	// Combat vars.
	total_health = 215                   // Point at which the mob will enter crit.
	list/unarmed_types = list(           // Possible unarmed attacks that the mob will use in combat,
		/datum/unarmed_attack,
		/datum/unarmed_attack/bite,
		/datum/unarmed_attack/claws)

	list/natural_armour_values            // Armour values used if naked.
	brute_mod =      0.9                    // Physical damage multiplier.
	burn_mod =       1                    // Burn damage multiplier.
	toxins_mod =     1                    // Toxloss modifier
	radiation_mod = 0.6                   // Radiation modifier

	oxy_mod =        1                    // Oxyloss modifier
	flash_mod =      1.6                    // Stun from blindness modifier.
	metabolism_mod = 1                    // Reagent metabolism modifier
	stun_mod =       1                    // Stun period modifier.
	paralysis_mod =  1                    // Paralysis period modifier.
	weaken_mod =     1                    // Weaken period modifier.

	vision_flags = SEE_SELF               // Same flags as glasses.


	gibbed_anim =   "gibbed-h"
	dusted_anim =   "dust-h"

	death_sound
	death_message = "seizes up and falls limp, their eyes dead and lifeless..."
	knockout_message = "collapses, having been knocked unconscious."
	halloss_message = "slumps over, too weak to continue fighting..."
	halloss_message_self = "The pain is too severe for you to keep going..."



	grab_type = GRAB_NORMAL		// The species' default grab type.

	// Body/form vars.
	list/inherent_verbs 	  // Species-specific verbs.
	has_fine_manipulation = 1 // Can use small items.
	siemens_coefficient = 1   // The lower, the thicker the skin and better the insulation.
	darksight_range = 2       // Native darksight distance.
	darksight_tint = DARKTINT_NONE // How shadows are tinted.
	species_flags = 0         // Various specific features.
	appearance_flags = 0      // Appearance/display related features.
	spawn_flags = 0           // Flags that specify who can spawn as this species
	slowdown = 0              // Passive movement speed malus (or boost, if negative)
	// Move intents. Earlier in list == default for that type of movement.
	list/move_intents = list(/decl/move_intent/walk, /decl/move_intent/run, /decl/move_intent/creep)

	list/has_organ = list(    // which required-organ checks are conducted.
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_APPENDIX = /obj/item/organ/internal/appendix,
		BP_EYES =     /obj/item/organ/internal/eyes
		)
           // If set, this organ is required for breathing. Defaults to "lungs" if the species has them.

	obj/effect/decal/cleanable/blood/tracks/move_trail = /obj/effect/decal/cleanable/blood/tracks/footprints // What marks are left when walking


	list/has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right)
		)


	list/genders = list(MALE, FEMALE)

	// Bump vars
	bump_flag = HUMAN	// What are we considered to be when bumped?
	push_flags = ~HEAVY	// What can we push?
	swap_flags = ~HEAVY	// What can we swap place with?

	pass_flags = 0
	breathing_sound = 'sound/voice/monkey.ogg'
	list/equip_adjust = list()
	list/equip_overlays = list()

	standing_jump_range = 3
	list/maneuvers = list(/decl/maneuver/leap)

	// Order matters, higher pain level should be higher up
	list/pain_emotes_with_pain_level = list(
		list(/decl/emote/audible/scream, /decl/emote/audible/whimper, /decl/emote/audible/moan, /decl/emote/audible/cry) = 70,
		list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/moan) = 40,
		list(/decl/emote/audible/grunt, /decl/emote/audible/groan) = 10,
	)


	exertion_effect_chance = 0
	exertion_hydration_scale = 0
	exertion_nutrition_scale = 0
	exertion_charge_scale = 0
	exertion_reagent_scale = 0
	exertion_reagent_path = null
	list/exertion_emotes_biological = null
	list/exertion_emotes_synthetic = null
