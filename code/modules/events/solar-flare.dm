/datum/round_event_control/solar-flare
	name = "Solar Flare"
	typepath = /datum/round_event/solar-flare

	min_players = 30
	max_occurrences = 1
	weight = 5


/datum/round_event/solar-flare/proc/setup()
	var/list/target_areas
	for(var/i in 1 to 10)
		var/area/A = findEventArea()
		if(locate(A) in target_areas)
			i--
			continue
		target_areas += A

//Pick a few areas that are safe
//Pick a few areas that will be hit by the EMPs. Certain areas should be excluded from this, thanks Centcomm

/datum/round_event/solar-flare/announce()
	priority_announce("Unusually high solar activity has been detected on long-range scanners. It is recommended that synthetic crew and other unshielded lifeforms stay away from the marked zones.", "")