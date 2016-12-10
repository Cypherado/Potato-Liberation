// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = nil;				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = nil;			// Default "B_Truck_01_medical_F";
huron_typename = nil;					// Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil;				// Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil;				// Default "O_T_Truck_03_ammo_ghex_F";
opfor_ammobox_transport = nil;			// Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = nil;				// Default "B_T_Officer_F"
crewman_classname = nil;				// Default "B_T_Soldier_F";
pilot_classname = nil;					// Default "B_T_Pilot_F";




// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = true;
infantry_units_extension = [
["B_CTRG_Miller_F",8,8,0],
["I_G_resistanceLeader_F",5,5,0],
["I_G_Story_Protagonist_F",5,5,0],
["B_T_Soldier_F",3,0,0],
["B_T_Engineer_F",3,0,0],
["B_T_Medic_F",3,0,0],
["B_T_Soldier_AR_F",3,0,0],
["B_T_soldier_M_F",3,0,0],
["B_T_Soldier_SL_F",3,0,0],
["B_T_Soldier_GL_F",3,0,0],
["B_T_Soldier_AT_F",3,5,0],
["B_T_Soldier_AA_F",3,5,0],
["B_T_Diver_F",3,0,0],
["B_T_Sniper_F",3,2,0],
["B_T_Recon_Medic_F",3,2,0],
["B_T_ghillie_tna_F",3,2,0],
["B_T_Sniper_F",3,5,0],
["B_T_Recon_M_F",3,5,0],
["B_GEN_Commander_F",3,2,0],
["B_GEN_Soldier_F",3,2,0],
["B_CTRG_Soldier_M_tna_F",3,2,0],
["B_CTRG_Soldier_Medic_tna_F",3,2,0],
["B_CTRG_Soldier_JTAC_tna_F",3,2,0],
["B_CTRG_Soldier_TL_tna_F",3,2,0],
["B_CTRG_Soldier_Exp_tna_F",3,2,0],
["B_CTRG_Soldier_LAT_tna_F",3,5,0]
];

light_vehicles_overwrite = false;
light_vehicles_extension = [
        ["B_T_LSV_01_unarmed_F",0,0,2],
        ["B_T_LSV_01_armed_F",0,10,3],
        ["I_C_Offroad_02_unarmed_F",0,0,3],
        ["C_Offroad_02_unarmed_F",0,0,3],
	["rhsusf_m998_w_4dr",0,0,2],
	["rhsusf_rg33_m2_d",0,10,3],
	["fsf_fnk_norm_ce",0,0,3],
	["greuh_fnk_norm_ce",0,0,3],
	["I_MRAP_03_F",0,0,3],
	["I_MRAP_03_hmg_F",0,10,3],
	["I_MRAP_03_gmg_F",0,20,3],
	["fsf_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_dsrt",0,10,3]
];

heavy_vehicles_overwrite = false;
heavy_vehicles_extension = [
	["I_APC_Wheeled_03_cannon_F",0,50,10],
	["greuh_pandur_wdld",0,50,10],
	["I_APC_tracked_03_cannon_F",0,40,15],
	["greuh_fv510_wdld",0,40,15],
	["greuh_fv510_dsrt",0,40,15],
	["RHS_M2A3_BUSKIII_wd",0,55,15],
	["Steve_MBT_Kuma",0,100,25],
	["I_MBT_03_cannon_F",0,100,25],
	["rhsusf_m1a2sep1tuskiid_usarmy",0,100,25],
	["Burnes_FV4034_01",0,250,40]
];

air_vehicles_overwrite = false;
air_vehicles_extension = [
        ["O_T_VTOL_02_vehicle_F",0,300,60],
        ["O_T_VTOL_02_infantry_F",0,300,60],
        ["B_T_VTOL_01_armed_F",0,350,60],
        ["B_T_VTOL_01_infantry_F",0,0,60],
        ["B_T_VTOL_01_vehicle_F",0,0,60],
        ["B_T_UAV_03_F",1,200,20],
        ["greuh_aw159_t",0,0,12],
	["greuh_aw159_a",0,50,12],
	["I_Heli_light_03_unarmed_F",0,0,12],
	["I_Heli_light_03_F",0,50,12],
	["JNS_Skycrane_BLU_Black",0,0,18],
	["RHS_CH_47F",0,20,20],
	["greuh_eh101_gr",0,0,25],
	["I_Heli_Transport_02_F",0,0,25],
	["MV22",0,0,25],
	["RHS_AH1Z_wd_GS",0,175,30],
	["H_RAH66",0,200,30],
	["RHS_AH64D_wd",0,400,50],
	["FIR_F16C",0,100,30],
	["FIR_F15E",0,200,50],
	["JS_JC_FA18E",0,350,40],
	["JS_JC_FA18F",0,350,40],
	["sab_C130_CSP",0,0,30],
	["sab_C130_J",0,0,30],
	["usaf_f22",0,500,75],
	["USAF_F35A",0,600,75],
	["I_Plane_Fighter_03_AA_F",0,50,30],
	["I_Plane_Fighter_03_CAS_F",0,100,30]
];

static_vehicles_overwrite = false;
static_vehicles_extension = [

];

buildings_overwrite = false;
buildings_extension = [
    ["Land_IRMaskingCover_01_F",0,0,0],
    ["Land_LampAirport_F",0,0,0]
];

support_vehicles_overwrite = false;		// If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
	["JNS_Skycrane_Pod_Bench_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Ammo_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Medical_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Repair_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Transport_BLU_Black",5,0,0]
];
// Recycleable list for OPFOR vehicles recovered from the battlefield.
// Values are high because they are recycled for 65% of their value.
// Baseline for light vehicles/troop transports is 35, APCs start at 100.
Cell_recycleable_vehicles = [
	// OPFOR Vanilla Vehicles
	["O_Truck_02_transport_F",0,35,0],
	["O_Truck_02_covered_F",0,35,0],
	["O_Truck_02_Ammo_F",0,77,0],
	["O_Truck_02_fuel_F",0,77,0],
	["O_Truck_03_transport_F",0,77,0],
	["O_Truck_03_covered_F",0,77,0],
	["O_Truck_03_ammo_F",0,77,0],
	["O_Truck_03_fuel_F",0,77,0],
	["O_MRAP_02_hmg_F",0,77,0],
	["O_MRAP_02_gmg_F",0,77,0],
	["O_APC_Wheeled_02_rcws_F",0,154,0],
	["O_APC_Tracked_02_cannon_F",0,230,0],
	["O_APC_Tracked_02_AA_F",0,230,0],
	["O_MBT_02_cannon_F",0,577,0],
	["O_MBT_02_arty_F",0,1076,0],
	["O_Heli_Light_02_F",0,460,0],
	["O_Heli_Light_02_unarmed_F",0,200,0],
	["O_Heli_Attack_02_F",0,769,0],
	["O_Heli_Attack_02_black_F",0,769,0],
	["O_Plane_CAS_02_F",0,1538,0],

	// OPFOR APEX Variants
	["O_T_MRAP_02_ghex_F",0,77,0],
	["O_T_MRAP_02_hmg_ghex_F",0,77,0],
	["O_T_MRAP_02_gmg_ghex_F",0,77,0],
	["O_T_MBT_02_cannon_ghex_F",0,577,0],
	["O_T_MBT_02_arty_ghex_F",0,1076,0],
	["O_T_APC_Tracked_02_cannon_ghex_F",0,230,0],
	["O_G_Offroad_01_armed_F",0,77,0],
	["I_G_Offroad_01_armed_F",0,77,0],

	// CUP OPFOR Compatiblity
	["CUP_O_Ural_Repair_RU",0,50,0],
	["CUP_O_Ural_Empty_RU",0,25,0],
	["CUP_O_Ural_Refuel_RU",0,50,0],
	["CUP_O_Ural_Reammo_RU",0,50,0],

	["CUP_O_UAZ_SPG9_CHDKZ",0,50,0],
	["CUP_O_BRDM2_CHDKZ",0,50,0],
	["CUP_O_UAZ_Open_CHDKZ",0,20,0],
	["CUP_O_UAZ_MG_CHDKZ",0,35,0],

	["CUP_O_UAZ_MG_RU",0,35,0],
	["CUP_O_GAZ_Vodnik_PK_RU",0,50,0],
	["CUP_O_GAZ_Vodnik_AGS_RU",0,65,0],
	["CUP_O_GAZ_Vodnik_BPPU_RU",0,100,0],
	["CUP_O_BRDM2_RUS",0,125,0],
	["CUP_O_BMP2_RU",0,125,0],
	["CUP_O_BMP3_RU",0,175,0],
	["CUP_O_T72_RU",0,400,0],
	["CUP_O_T90_RU",0,500,0],

	["CUP_O_Mi8_VIV_RU",0,200,0],
	["CUP_O_MI6A_RU",0,200,0],
	["CUP_O_Mi24_V_RU",0,350,0],
	["CUP_O_Ka60_Grey_R	U",0,100,0],


	// Civilian
	["C_Offroad_02_unarmed_F",0,20,0]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
["B_T_UAV_03_F",1,200,20]
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = ["B_T_Soldier_TL_F","B_T_Soldier_AR_F","B_T_Soldier_GL_F","B_T_Soldier_LAT_F"];


// Heavy infantry squad
blufor_squad_inf = ["B_T_Soldier_SL_F","B_T_Soldier_F","B_T_Soldier_LAT_F","B_T_soldier_M_F","B_T_Soldier_AR_F","B_T_Soldier_A_F","B_T_Medic_F"];


// AT specialists squad
blufor_squad_at = ["B_T_Soldier_TL_F","B_T_Soldier_AT_F","B_T_Soldier_AT_F","B_T_Soldier_AAT_F"];


// AA specialists squad
blufor_squad_aa = ["B_T_Soldier_TL_F","B_T_Soldier_AA_F","B_T_Soldier_AA_F","B_T_Soldier_AAA_F"];


// Force recon squad
blufor_squad_recon = ["B_T_Recon_TL_F","B_T_Recon_TL_F","B_T_Recon_Medic_F","B_T_Recon_LAT_F","B_T_Recon_JTAC_F","B_T_Recon_Exp_F"];


// Paratroopers squad
blufor_squad_para = ["B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F","B_T_Soldier_PG_F"];








// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = "O_T_Soldier_GL_F";
opfor_rifleman = "O_T_Soldier_F";
opfor_grenadier = "O_T_Soldier_GL_F";
opfor_squad_leader = "O_T_Soldier_TL_F";
opfor_team_leader = "O_T_Soldier_SL_F";
opfor_marksman = "O_T_Soldier_M_F";
opfor_machinegunner = "O_T_Soldier_AR_F";
opfor_heavygunner = "O_T_Soldier_AR_F";
opfor_medic = "O_T_Medic_F";
opfor_rpg = "O_T_Soldier_LAT_F";
opfor_at = "O_T_Soldier_AT_F";
opfor_aa = "O_T_Soldier_AA_F";
opfor_officer = "O_T_Officer_F";
opfor_sharpshooter = "O_T_Spotter_F";
opfor_sniper = "O_T_ghillie_tna_F";
opfor_engineer = "O_T_Engineer_F";
opfor_paratrooper = "O_T_Soldier_PG_F";

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = "O_T_MRAP_02_ghex_F";
opfor_mrap_armed = "O_T_LSV_02_armed_F";
opfor_transport_helo = "O_T_Truck_03_repair_ghex_F";
opfor_transport_truck = "O_T_Truck_03_transport_ghex_F";
opfor_fuel_truck = "O_T_Truck_03_fuel_ghex_F";
opfor_ammo_truck = "O_T_Truck_03_ammo_ghex_F";
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = "Flag_CSAT_F";

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = true;
militia_squad_extension = [
"I_C_Soldier_Para_2_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_1_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_8_F","I_C_Soldier_Para_3_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_2_F"];

// Militia vehicles to choose from
militia_vehicles_overwrite = true;
militia_vehicles_extension = [
	"O_T_LSV_02_armed_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"I_C_Offroad_02_unarmed_F",
	"I_G_Offroad_01_armed_F"

];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = true;
opfor_vehicles_extension = [
        "O_T_APC_Wheeled_02_rcws_ghex_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"O_T_APC_Tracked_02_cannon_ghex_F",
	"O_T_MBT_02_cannon_ghex_F",
	"O_T_MBT_02_arty_ghex_F"
];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = true;
opfor_vehicles_low_intensity_extension = [
        "O_T_LSV_02_armed_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"I_C_Offroad_02_unarmed_F",
	"I_G_Offroad_01_armed_F"
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = true;
opfor_battlegroup_vehicles_extension = [
        "O_T_LSV_02_armed_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"I_C_Offroad_02_unarmed_F",
	"I_G_Offroad_01_armed_F"
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = true;
opfor_battlegroup_vehicles_low_intensity_extension = [
        "O_T_LSV_02_armed_F",
	"O_T_MRAP_02_hmg_ghex_F",
	"I_C_Offroad_02_unarmed_F",
	"I_G_Offroad_01_armed_F"
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = true;
opfor_troup_transports_extension = [
        "O_T_Truck_03_transport_ghex_F",
	"O_T_Truck_03_covered_ghex_F"
];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = true;
opfor_choppers_extension = [
        "O_T_VTOL_02_infantry_F",
	"O_T_VTOL_02_infantry_F",
	"O_Heli_Attack_02_F",
	"I_Heli_light_03_F"
];

// Opfor military aircrafts
opfor_air_overwrite = true;
opfor_air_extension = [
"O_T_Soldier_PG_F","O_T_Soldier_PG_F","O_T_Soldier_PG_F","O_T_Soldier_PG_F","O_T_Soldier_PG_F","O_T_Soldier_PG_F"];


// Other stuff

// Civilians
civilians_overwrite = true;
civilians_extension = [
"C_Man_casual_1_F_tanoan","C_Man_casual_2_F_tanoan","C_Man_casual_3_F_tanoan","C_man_sport_1_F_tanoan","C_man_sport_2_F_tanoan","C_man_sport_2_F_tanoan","C_Man_casual_4_F_tanoan","C_Man_casual_5_F_tanoan","C_Man_casual_6_F_tanoan"];

// Civilian vehicles
civilian_vehicles_overwrite = true;
civilian_vehicles_extension = [
"C_Offroad_01_repair_F","C_Offroad_02_unarmed_F","C_Kart_01_Red_F","C_Truck_02_box_F","C_Truck_02_transport_F","C_Offroad_02_unarmed_F"];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_extension = [

];

// Everything that can resupply other vehicles
vehicle_repair_sources_extension = [

];
vehicle_rearm_sources_extension = [

];
vehicle_refuel_sources_extension = [

];

// Elite vehicles that should be unlocked through military base capture.
// If overwrite is true, extension will replace vanilla list. If false, vanilla list will be used.
elite_vehicles_overwrite = false;
elite_vehicles_extension = [
	"Steve_MBT_Kuma",
	"Burnes_FV4034_01",
	"RHS_AH1Z_wd_GS",
	"H_RAH66",
	"RHS_AH64D_wd",
	"JS_JC_FA18E",
	"JS_JC_FA18F",
	"greuh_pandur_wdld",
	"RHS_M2A3_BUSKIII_wd",
	"usaf_f22",
	"USAF_F35A",
	"rhsusf_m1a2sep1tuskiid_usarmy",
	"FIR_F16C",
	"FIR_F15E"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
// Useless if you're using a predefined arsenal in arsenal.sqf
blacklisted_from_arsenal_extension = [
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag",
        "Item_optic_Nightstalker"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];
