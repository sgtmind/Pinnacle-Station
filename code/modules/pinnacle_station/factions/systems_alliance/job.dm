/datum/job/systems_alliance/squad_lead
	title = "Squad Lead"
	department = "Infantry"
	department_flag = INF
	head_position = 1
	total_positions = 1
	spawn_positions = 1

	supervisors = "your commander."
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_infcom, access_inftech, access_infmed, access_aquila, access_eva)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/squad_lead/get_description_blurb()
	return "You are a Squad Leader. Your duty is to organize and lead your squad of marines. Use your experience and charisma to lead these men and women to victory!"


/datum/job/systems_alliance/marine
	title = "Marine"
	department_flag = INF
	total_positions = 3
	spawn_positions = 3
	minimal_player_age = 6
	supervisors = "the Combat Technician and Squad Leader"
	selection_color = "#557e38"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_aquila, access_eva)
	alt_titles = list(
		"Grenadier",
		"Assaultman")

/datum/job/grunt/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Squad Lead")
				return TRUE
	return FALSE

/datum/job/grunt/get_description_blurb()
	return "You are a Marine of the Systems Alliance Marine Corps! While individually weaker than other aliens, you are versatile and able to quickly adapt to the situation. Follow your squad leader and bring victory to the Systems Alliance. If they're not present, the Combat Technician may pull rank."

