Config = {}

Config.Locale = 'de'

Config.Account = 'money' -- 'bank' , 'black_money'

Config.Reward = 1000 --The Reward for each Device you repaired

Config.CarPlateName = 'ELECTRIC' -- The Name of the Vehicle Plate

Config.Waittime = 5 -- The Wait Time in Seconds that the Player have to wait after Minigame

Config.UseMiniGame = true -- https://github.com/utkuali/datacrack if you use this

Config.StartKey = 47 --G Key to start for Repairing the Device

Config.StartCoords = {
	{
		start =   vector3(736.3147, 132.5522, 80.7187),
		spawncoords =   vector3(742, 127, 79) ,
		carheading = 244.45,
		pedname = 's_m_m_gaffer_01',
		heading = 244.4508,
		vehiclename = 'nspeedo',
	},
	{
		start =   vector3(450.5395, -1981.6654, 24.4017), 
		spawncoords =   vector3(454.0340, -1967.2224, 22.9558),
		carheading = 177.8880,
		pedname = 's_m_m_gaffer_01', 
		heading = 181.0699,
		vehiclename = 'nspeedo',
	}
	--[[
		{
			start =   vector3(0,0,0), 
			spawncoords =   vector3(0,0,0),
			carheading =  0.0,
			pedname = 'pedname', 
			heading = 0.0,
			vehiclename = 'vehiclespawnname',
		}
	]]
}

Config.MSG = function(msg)
    --ESX.ShowNotification(msg) 
    exports['okokNotify']:Alert("Electrician Job", msg, 3000, 'info') 
    --If you use okokNotify, uncomment this or use your own Notify Script
end

Config.MissionCoords = {
	{  x = 758.71, y = 136.91, z = 78.94, h = 63.04},
	{  x = 705.6367, y = 58.8237, z = 83.8642, h = 57.3731 },
	{  x = 534.3323, y = 64.3275, 	z = 96.2131, h = 339.4230 },
	{  x = 351.8224, y = -224.1157, z = 54.8941, h = 68.0866 },
	{  x = 287.4722, y = -443.9739, z = 43.6027, h = 82.6229 },
	{  x = 215.2995, y = -651.6578, z = 38.5628, h = 252.1793 },
	{  x = 171.3939, y = -767.0478, z = 32.2576, h = 66.2343 },
	{  x = 145.4662, y = -825.2324, z = 31.1370, h = 338.5786 },
	{  x = 100.5653, y = -969.2227, z = 29.3729, h = 243.1537 },
	{  x = 138.0711, y = -1027.7700,z = 29.3535, h = 350.2804 },
	{  x = 195.3668, y = -801.1793, z = 31.2464, h = 81.8623 },
	{  x = 101.0982, y = -1082.7650,z = 29.1924, h = 159.3599 },
	{  x = -295.5944,y = -645.4796,	z = 33.1992, h = 181.8663 },
	{  x = -517.7743,y = -860.3887,	z = 30.0168, h = 80.5083 },
	{  x = -547.1727,y = -942.7381,	z = 23.7900, h = 62.2609 },
	{  x = -614.5042,y = -942.8254,	z = 21.9555, h = 272.5279 },
	{  x = 391.6350, y = -998.5460, z = 29.4171, h = 265.0184 },
	{  x = 679.7724, y = -32.8730, 	z = 82.9715, h = 42.1984 },
	{  x = 891.1613, y = 41.8322, 	z = 78.7264, h = 233.6204 },
	{  x = 857.2255, y = -140.1125, z = 78.7231, h = 60.5349 },
}

Translation = {
    ['de'] = {
        ['start_mission_text'] = 'Drücke ~g~[E]~s~ um den Job zu starten',
        ['cancel_mission_text'] = 'Drücke ~r~[G]~s~ um den Job zu beenden',
        ['already_startet_mission'] = 'Du hast bereits den Job gestartet',
		['started_mission'] = 'Du hast den Job gestartet',
        ['canceled_mission'] = 'Du hast den Job beendet',
        ['car_blipname'] = 'Fahrzeug',
		['target_blip'] = 'ZielOrt',
		['blipname'] = 'Elektriker Job',
		['take_toolkit'] = 'Drücke ~g~[E]~s~ um das Werkzeug herauszuholen',
        ['press_to_start_fixing'] = 'Drücke ~INPUT_DETONATE~ um zu beginnen',
        ['successfully_repaired'] = 'Du hast das Gerät erfolgreich repariert',

		--Picture Notify{
		['img'] = 'CHAR_CHEF',
		['message'] = 'Du hast ~g~'..Config.Reward..'$~s~ erhalten. Weiter so!',
		['title'] = 'Chef',
		['subtitle'] = 'Belohnung erhalten',
		--}

		['failed_minigame'] = 'Diagnose Fehlgeschlagen. Neustart erforderlich',
		['vehicle_not_in_range'] = 'Dein Fahrzeug ist nicht in der Nähe',
		['toolkit_needed'] = 'Du brauchst noch dein Werkzeug',
    },

    ['en'] = {
        ['start_mission_text'] = 'Press ~g~[E]~s~ to start the Job',
        ['cancel_mission_text'] = 'Press ~r~[G]~s~ to cancel the Job',
        ['already_startet_mission'] = 'You already started the Job',
		['started_mission'] = 'You started the Job',
        ['canceled_mission'] = 'You canceled the Job',
        ['car_blipname'] = 'Car',
		['target_blip'] = 'Target',
		['blipname'] = 'Electrician Job',
		['take_toolkit'] = 'Press ~g~[E]~s~ to take the Toolkit',
        ['press_to_start_fixing'] = 'Press ~INPUT_DETONATE~ to start',
        ['successfully_repaired'] = 'You successfully repaired the Device',

		--Picture Notify{
		['img'] = 'CHAR_CHEF',
		['message'] = 'You received ~g~'..Config.Reward..'$~s~. Good Job!',
		['title'] = 'Chef',
		['subtitle'] = 'Received Reward',
		--}

		['failed_minigame'] = 'Diagnosis failed. Reboot required.',
		['vehicle_not_in_range'] = 'Your Vehicle is not in Range',
		['toolkit_needed'] = 'You need your Toolkit',
    },

	['es'] = {
        ['start_mission_text'] = 'Presiona ~g~[E]~s~ para empezar el trabajo',
        ['cancel_mission_text'] = 'Presiona ~r~[G]~s~ para cancelar el trabajo',
        ['already_startet_mission'] = 'Usted ya ha empezado el trabajo',
		['started_mission'] = 'Has empezado el trabajo',
        ['canceled_mission'] = 'Has cancelado el trabajo',
        ['car_blipname'] = 'Coche',
		['target_blip'] = 'Objetivo',
		['blipname'] = 'Trabajo de electricista',
		['take_toolkit'] = 'Presiona ~g~[E]~s~ para equipar el kit de herramientas',
        ['press_to_start_fixing'] = 'Presiona ~INPUT_DETONATE~ para empezar',
        ['successfully_repaired'] = 'Has reparado exitosamente el dispositivo',

		--Picture Notify{
		['img'] = 'CHAR_CHEF',
		['message'] = 'Has recivido ~g~'..Config.Reward..'$~s~. ¡Buen trabajo!',
		['title'] = 'Chef',
		['subtitle'] = 'Recompensa recivida',
		--}

		['failed_minigame'] = 'Diagnóstico fallido. Reinicio requerido.',
		['vehicle_not_in_range'] = 'Tu vehículo no está en el rango',
		['toolkit_needed'] = 'Necesitas tu kit de herramientas',
    },

}
