// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy;				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = nil;			// Default "B_Truck_01_medical_F";
huron_typename = RHS_CH_47F_10;					// Default "B_Heli_Transport_03_unarmed_F";
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
["rhsusf_army_ocp_rifleman",3,0,0],
["rhsusf_army_ocp_engineer",3,0,0],
["rhsusf_army_ocp_medic",3,0,0],
["rhsusf_army_ocp_autorifleman",3,0,0],
["rhsusf_army_ocp_machinegunner",3,0,0],
["rhsusf_army_ocp_squadleader",3,0,0],
["rhsusf_army_ocp_grenadier",3,0,0],
["rhsusf_army_ocp_riflemanat",3,1,0],
["rhsusf_army_ocp_javelin",3,5,0],
["rhsusf_army_ocp_aa",3,5,0],
["rhsusf_army_ocp_sniper",3,2,0],
["rhsusf_socom_marsoc_cso",3,2,0],
["rhsusf_socom_marsoc_cso_light",3,2,0],
["rhsusf_socom_marsoc_teamchief",3,2,0],
["rhsusf_socom_marsoc_cso_grenadier",3,2,0],
["rhsusf_socom_marsoc_jfo",3,2,0],
["rhsusf_socom_marsoc_marksman",3,2,0],
["rhsusf_socom_marsoc_spotter",3,2,0],
["rhsusf_socom_marsoc_sniper",3,5,0]
];

light_vehicles_overwrite = true;
light_vehicles_extension = [
		["rhsusf_mkvsoc",0,50,10],
	["CUP_B_Mastiff_HMG_GB_D",0,15,5],
	["CUP_B_HMMWV_Avenger_USMC",0,20,7],
	["CUP_B_HMMWV_TOW_USA",0,15,3],
	["rhsusf_m998_d_4dr",0,0,2],
	["rhsusf_m1025_d_m2",0,5,3],
	["rhsusf_m1025_d_Mk19",0,5,3],
	["rhsusf_M1117_D",0,15,3],
	["rhsusf_rg33_m2_d",0,10,3],
	["rhsusf_m113d_usarmy_M240",0,10,3],
	["rhsusf_M1083A1P2_B_d_open_fmtv_usarmy",0,10,3],
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_d",5,0,0],
	["rhsusf_M977A4_AMMO_BKIT_usarmy_d",5,0,0],
	["B_Truck_01_transport_F",0,15,10]
];

heavy_vehicles_overwrite = true;
heavy_vehicles_extension = [
	["CUP_B_M1126_ICV_M2_Desert",0,35,5],
	["CUP_B_FV510_GB_D_SLAT",0,120,15],
	["CUP_B_M163_USA",0,100,10],
	["RHS_M6",0,110,15],
	["RHS_M2A3_BUSKIII",0,110,15],
	["rhsusf_m1a1aim_tuski_d",0,200,40],
	["rhsusf_m1a2sep1tuskiid_usarmy",0,200,40],
	["rhsusf_m109d_usarmy",0,750,50]
];

air_vehicles_overwrite = true;
air_vehicles_extension = [
	["CUP_B_USMC_MQ9",1,200,20],
	["RHS_MELB_MH6M",0,40,12],
	["RHS_MELB_AH6M_H",0,150,20],
	["RHS_MELB_AH6M_L",0,175,20],
	["RHS_MELB_AH6M_M",0,125,20],
	["RHS_MELB_MH6M",0,75,20],
	["RHS_AH64D",0,350,75],
	["RHS_AH1Z",0,350,75],
	["RHS_UH1Y_d_GS",0,150,20],
	["RHS_CH_47F",0,100,20],
	["RHS_UH60M_d",0,75,12],
	["rhsusf_CH53E_USMC_D",0,100,20],
	["RHS_UH1Y_UNARMED_d",0,50,12],
	["bwi_a3_at6b",0,400,35],
	["FIR_F15E",0,1400,50]
];

static_vehicles_overwrite = false;
static_vehicles_extension = [
	["RHS_M2StaticMG_MiniTripod_D",0,10,0],
	["RHS_M2StaticMG_D",0,10,0],
	["RHS_MK19_TriPod_D",0,20,0],
	["RHS_Stinger_AA_pod_D",0,40,0],
    ["RHS_TOW_TriPod_D",0,200,0]
];

buildings_overwrite = false;
buildings_extension = [
    ["Land_IRMaskingCover_01_F",0,0,0],
    ["Land_TentHangar__V1_F",0,0,0],
    ["Land_Mil_WallBig_4m_F",0,0,0],
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
	["O_Truck_02_Ammo_F",0,50,0],
	["O_Truck_02_fuel_F",0,50,0],
	["O_Truck_03_transport_F",0,35,0],
	["O_Truck_03_covered_F",0,35,0],
	["O_Truck_03_ammo_F",0,50,0],
	["O_Truck_03_fuel_F",0,50,0],
	["O_T_MRAP_02_F",0,20,0],
	["O_MRAP_02_hmg_F",0,35,0],
	["O_MRAP_02_gmg_F",0,35,0],
	["O_APC_Wheeled_02_rcws_F",0,50,0],
	["O_APC_Tracked_02_cannon_F",0,125,0],
	["O_APC_Tracked_02_AA_F",0,40,0],
	["O_MBT_02_cannon_F",0,400,0],
	["O_MBT_02_arty_F",0,500,0],
	["O_Heli_Light_02_F",0,140,0],
	["O_Heli_Light_02_unarmed_F",0,70,0],
	["O_Heli_Attack_02_F",0,250,0],
	["O_Heli_Attack_02_black_F",0,250,0],
	["O_Plane_CAS_02_F",0,400,0],

	// OPFOR APEX Variants
	["O_T_MRAP_02_ghex_F",0,20,0],
	["O_T_MRAP_02_hmg_ghex_F",0,35,0],
	["O_T_MRAP_02_gmg_ghex_F",0,35,0],
	["O_T_APC_Tracked_02_cannon_ghex_F",0,125,0],
	["O_T_MBT_02_cannon_ghex_F",0,400,0],
	["O_T_MBT_02_arty_ghex_F",0,500,0],
	["O_G_Offroad_01_armed_F",0,30,0],
	["I_G_Offroad_01_armed_F",0,30,0],

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
	["CUP_O_GAZ_Vodnik_AGS_RU",0,75,0],
	["CUP_O_GAZ_Vodnik_BPPU_RU",0,100,0],
	["CUP_O_BRDM2_RUS",0,125,0],
	["CUP_O_BMP2_RU",0,125,0],
	["CUP_O_BMP3_RU",0,175,0],
	["CUP_O_T72_RU",0,400,0],
	["CUP_O_T90_RU",0,500,0],

	["CUP_O_Mi8_VIV_RU",0,200,0],
	["CUP_O_MI6A_RU",0,200,0],
	["CUP_O_Mi24_V_RU",0,350,0],
	["CUP_O_Ka60_Grey_RU",0,100,0],

	//RHS Compatibility OpFor
	["rhs_t72ba_tv",0,460,0], // 300
	["rhs_bmp3mera_msv",0,230,0], // 150
	["rhs_bmp2k_msv",0,200,0], // 135
	["rhs_zsu234_aa",0,138,0], // 90
	["rhs_t90a_tv",0,769,0], // 500
	["rhs_t80um",0,577,0], // 375
	["rhs_bmd4m_vdv",0,346,0], // 225
	["rhs_tigr_sts_3camo_msv",0,115,0], // 75
	["rhs_gaz66_zu23_msv",0,77,0], // 50
	["rhs_bmd1k",0,154,0], // 100
	["RHS_Ural_Open_VMF_01",0,115,0], // 75
	["RHS_Ural_VV_01",0,115,0], // 75
	["RHS_Ural_Fuel_VMF_01",0,115,0], // 75
	["rhs_bmp2k_vv",0,200,0], // 135
	["RHS_Mi24V_vvs",0,1076,0], // 700
	["RHS_Mi8MTV3_UPK23_vdv",0,1076,0], // 700
	["RHS_Ka52_UPK23_vvs",0,1538,0], // 1000
	["RHS_Mi24V_UPK23_vdv",0,1076,0], // 700

	// Civilian
	["C_Offroad_02_unarmed_F",0,20,0]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
["B_T_UAV_03_F",1,200,20],
["CUP_B_USMC_MQ9",1,200,20]
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = ["rhsusf_army_ocp_teamleader","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_riflemanat"];


// Heavy infantry squad
blufor_squad_inf = ["rhsusf_army_ocp_squadleader","rhsusf_army_ocp_autoriflemana","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_machinegunner","rhsusf_army_ocp_machinegunnera","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_medic"];


// AT specialists squad
blufor_squad_at = ["rhsusf_army_ocp_teamleader","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_javelin","rhsusf_army_ocp_javelin"];


// AA specialists squad
blufor_squad_aa = ["rhsusf_army_ocp_teamleader","rhsusf_army_ocp_aa","rhsusf_army_ocp_aa","rhsusf_army_ocp_aa"];


// Force recon squad
blufor_squad_recon = ["rhsusf_usmc_recon_marpat_d_officer","rhsusf_usmc_recon_marpat_d_teamleader","rhsusf_usmc_recon_marpat_d_rifleman","rhsusf_usmc_recon_marpat_d_riflemanat","rhsusf_usmc_recon_marpat_d_marksman","rhsusf_usmc_recon_marpat_d_autorifleman"];


// Paratroopers squad
blufor_squad_para = ["rhsusf_socom_marsoc_cso_light","rhsusf_socom_marsoc_cso_grenadier","rhsusf_socom_marsoc_sarc","rhsusf_socom_marsoc_cso_cqb"];








// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = "rhs_msv_emr_grenadier";
opfor_rifleman = "rhs_msv_emr_rifleman";
opfor_grenadier = "rhs_msv_emr_grenadier";
opfor_squad_leader = "rhs_msv_emr_sergeant";
opfor_team_leader = "rhs_msv_emr_junior_sergeant";
opfor_marksman = "rhs_msv_emr_marksman";
opfor_machinegunner = "rhs_msv_emr_machinegunner";
opfor_heavygunner = "rhs_msv_emr_arifleman";
opfor_medic = "rhs_msv_emr_medic";
opfor_rpg = "rhs_msv_emr_grenadier_rpg";
opfor_at = "rhs_msv_emr_at";
opfor_aa = "rhs_msv_emr_aa";
opfor_officer = "rhs_msv_emr_officer_armored";
opfor_sharpshooter = "rhs_msv_emr_efreitor";
opfor_sniper = "rhs_msv_emr_marksman";
opfor_engineer = "rhs_msv_emr_engineer";
opfor_paratrooper = "rhs_vmf_recon_efreitor";

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = "rhs_bmp2k_vv";
opfor_mrap_armed = "rhs_tigr_sts_3camo_msv";
opfor_transport_helo = "rhs_Mi8AMT_vvsc";
opfor_transport_truck = "RHS_Ural_VV_01";
opfor_fuel_truck = "RHS_Ural_Fuel_VMF_01";
opfor_ammo_truck = "rhs_gaz66_ammo_msv";
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = "rhs_Flag_Russia_F";

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = true;
militia_squad_extension = [
"CUP_O_INS_Soldier_AK74","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier","CUP_O_INS_Soldier_Ammo","CUP_O_INS_Soldier_GL","CUP_O_INS_Officer","CUP_O_INS_Medic","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_AT"," CUP_O_INS_Story_Bardak "];

// Militia vehicles to choose from
militia_vehicles_overwrite = true;
militia_vehicles_extension = [
	"CUP_O_UAZ_SPG9_CHDKZ",
	"CUP_O_BRDM2_CHDKZ",
	"CUP_O_UAZ_Open_CHDKZ",
	"CUP_O_UAZ_MG_CHDKZ"

];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = true;
opfor_vehicles_extension = [
        "rhs_t72ba_tv",
	"rhs_bmp3mera_msv",
	"rhs_bmp2k_msv",
	"rhs_zsu234_aa",
	"CUP_O_2S6M_RU",
	"rhs_t90a_tv",
	"rhs_t80um",
	"rhs_bmd4m_vdv"
];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = true;
opfor_vehicles_low_intensity_extension = [
        "rhs_tigr_sts_3camo_msv",
	"rhs_gaz66_zu23_msv",
	"rhs_bmd1k",
	"rhs_bmp2k_msv",
	"rhs_t72ba_tv"
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = true;
opfor_battlegroup_vehicles_extension = [
        "rhs_t72ba_tv",
	"rhs_bmp3mera_msv",
	"rhs_bmp2k_msv",
	"rhs_zsu234_aa",
	"CUP_O_2S6M_RU",
	"rhs_t90a_tv",
	"rhs_t80um",
	"rhs_bmd4m_vdv"
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = true;
opfor_battlegroup_vehicles_low_intensity_extension = [
        "rhs_tigr_sts_3camo_msv",
	"rhs_gaz66_zu23_msv",
	"rhs_bmd1k",
	"rhs_bmp2k_msv",
	"rhs_t72ba_tv"
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = true;
opfor_troup_transports_extension = [
        "RHS_Ural_Open_VMF_01",
	"RHS_Ural_VV_01"
];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = true;
opfor_choppers_extension = [
        "RHS_Mi8MTV3_UPK23_vdv",
	"RHS_Mi24V_UPK23_vdv",
	"RHS_Mi24V_vvs",
	"RHS_Ka52_UPK23_vvs"
];

// Opfor military aircrafts
opfor_air_overwrite = true;
opfor_air_extension = [
"rhs_vmf_recon_efreitor","rhs_vmf_recon_efreitor","rhs_vmf_recon_efreitor","rhs_vmf_recon_efreitor","rhs_vmf_recon_efreitor","rhs_vmf_recon_efreitor"];


// Other stuff

// Civilians
civilians_overwrite = true;
civilians_extension = [
"C_Man_casual_1_F_tanoan","C_Man_casual_2_F_tanoan","C_Man_casual_3_F_tanoan","C_man_sport_1_F_tanoan","C_man_sport_2_F_tanoan","C_man_sport_2_F_tanoan","C_Man_casual_4_F_tanoan","C_Man_casual_5_F_tanoan","C_Man_casual_6_F_tanoan"];

// Civilian vehicles
civilian_vehicles_overwrite = true;
civilian_vehicles_extension = [
"C_Offroad_01_repair_F","C_Offroad_02_unarmed_F","C_Kart_01_Red_F","C_Truck_02_box_F","C_Truck_02_transport_F","CUP_C_SUV_CIV","C_Offroad_02_unarmed_F","CUP_C_Ural_Civ_01","CUP_C_Golf4_red_Civ","CUP_C_LR_Transport_CTK","CUP_C_Octavia_CIV","CUP_C_Golf4_random_Civ"];

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
// If overwrite is true, vanilla Elite vehicles will be removed and replaced with the extension. NOTE: Only takes affect on mission restart.
elite_vehicles_overwrite = true;
elite_vehicles_extension = [
	"RHS_AH64D",
	"RHS_AH1Z",
	"bwi_a3_at6b",
	"RHS_M2A3_BUSKIII",
	"RHS_M6",
	"rhsusf_m1a1aim_tuski_d",
	"rhsusf_m1a2sep1tuskiid_usarmy",
	"rhsusf_m109d_usarmy",
	"CUP_B_USMC_MQ9",
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
        "Item_optic_Nightstalker",
	"rhs_ammo_fakel",
	"rhs_ammo_fakels",
	"rhs_ammo_zarya2",
	"rhs_ammo_plamyam",
	"rhs_ammo_m7a3_cs",
	"rhs_ammo_mk3a2",
	"rhs_ammo_m84",
	"rhs_mag_m4009",
	"rhs_g_vg40sz"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];
