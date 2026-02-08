

params ["_unit"];

private _isMedic = _unit isKindOf "B_medic_F";

private _phase = call GRAD_Z_main_fnc_getCurrentPhase;

private _result = [[],[],["WBK_craftedAxe","","","",[],[],""],["Tribal_Uniform_02",[["ACE_fieldDressing",10]]],[],["Tribal_quiver_Bag_empty",[]],"","",[],["","","","","",""]];
private _randomInt = floor (random 24);
private _faceNum = if (_randomInt < 10) then { "0" + str _randomInt } else { str _randomInt };
private _face = "WhiteHead_" + _faceNum;

switch (_phase) do {
     case -1 : {
        // 10000 BC
        if (_isMedic) then {
            _result = [[],[],["WBK_craftedAxe","","","",[],[],""],["Tribal_Uniform_02",[["ACE_fieldDressing",10]]],[],["Tribal_quiver_Bag_empty",[]],"","",[],["","","","","",""]];
        } else {
            _result = [[],[],["WBK_craftedAxe","","","",[],[],""],["Tribal_Uniform_02",[["ACE_fieldDressing",10]]],[],["Tribal_quiver_Bag_empty",[]],"","",[],["","","","","",""]];
        };
        _face = selectRandom [
            "Tribal_Head_01","Tribal_Head_02","Tribal_Head_03"
        ];
    };
    case 0 : {
        // 1700s
        if (_isMedic) then {
            _result = [["1715_Seapat","","","",["1715_cartridge_ball_69",1],[],""],[],["Sashka_Russian","","","",[],[],""],["1715_justa_3k_b_span",[["1715_bandage",1],["ACE_fieldDressing",3],["1715_cartridge_ball_69",3,1]]],["1715_vest_engblk_soldier",[["ACE_packingBandage",4],["ACE_quikclot",6],["ACE_bloodIV_500",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_epinephrine",1],["ACE_morphine",1],["1715_cartridge_ball_69",26,1]]],["1715_haversack_black",[]],"1715_cockedhat_1_c_c","",[],["","","","1715_Compass","",""]];
        } else {
            _result = [["1715_Seapat","","","",["1715_cartridge_ball_69",1],[],""],[],["Sashka_Russian","","","",[],[],""],["1715_justa_3k_b_span",[["1715_bandage",1],["ACE_fieldDressing",3],["1715_cartridge_ball_69",3,1]]],["1715_vest_engblk_soldier",[["ACE_packingBandage",4],["ACE_quikclot",6],["ACE_bloodIV_500",1],["ACE_splint",2],["ACE_tourniquet",2],["ACE_epinephrine",1],["ACE_morphine",1],["1715_cartridge_ball_69",26,1]]],["1715_haversack_black",[]],"1715_cockedhat_1_c_c","",[],["","","","1715_Compass","",""]];
        };
        _face = selectRandom [
            "Sturrock","Mavros","WhiteHead_19","WhiteHead_08","WhiteHead_24"
        ];
    };
    case 1 : {
        // WW1
        // [[["tsgw_G98","","","",["tsgw_G98_mag",5],[],""],[],[],["U_TSGW_German_1914",[["FirstAidKit",1],["tsgw_G98_mag",9,5]]],["TSGW_GER_Vest",[]],[],"TSGW_Pickelhaubecover","",[],["","","","","",""]],[]]
        if (_isMedic) then {
            _result = [["tsgw_G98","","","",["tsgw_G98_mag",5],[],""],[],[],["U_TSGW_German_1914",[["FirstAidKit",1],["tsgw_G98_mag",9,5]]],["TSGW_GER_Vest",[]],[],"TSGW_Pickelhaubecover","",[],["","","","","",""]];
        } else {
            _result = [["tsgw_G98","","","",["tsgw_G98_mag",5],[],""],[],[],["U_TSGW_German_1914",[["FirstAidKit",1],["tsgw_G98_mag",9,5]]],["TSGW_GER_Vest",[]],[],"TSGW_Pickelhaubecover","",[],["","","","","",""]];
        };
    };
    case 2 : {
        // WW2
        if (_isMedic) then {
            _result = [["JMSSA_mp40_Rifle","","","",["JMSSA_32Rnd_9x19_mp40",32],[],""],[],["JMSSA_lugerP08a1pistol","","","",["JMSSA_8Rnd_9x19",8],[],""],["JMSSA_ger_m401_whUnter_F_CombatUniform",[["FirstAidKit",1],["JMSSA_32Rnd_9x19_mp40",5,32],["JMSSA_32Rnd_9x19_mp40_t",1,32],["JMSSA_8Rnd_9x19",1,8]]],["JMSSA_ger_VInfKitNCO",[["JMSSA_8Rnd_9x19",1,8],["JMSSA_NbHgr39_SmokeGrenade",1,1]]],["JMSSA_ger_infkitpack_b",[]],"JMSSA_ger_m40_helmet","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
        } else {
            _result = [["JMSSA_mp40_Rifle","","","",["JMSSA_32Rnd_9x19_mp40",32],[],""],[],["JMSSA_lugerP08a1pistol","","","",["JMSSA_8Rnd_9x19",8],[],""],["JMSSA_ger_m401_whUnter_F_CombatUniform",[["FirstAidKit",1],["JMSSA_32Rnd_9x19_mp40",5,32],["JMSSA_32Rnd_9x19_mp40_t",1,32],["JMSSA_8Rnd_9x19",1,8]]],["JMSSA_ger_VInfKitNCO",[["JMSSA_8Rnd_9x19",1,8],["JMSSA_NbHgr39_SmokeGrenade",1,1]]],["JMSSA_ger_infkitpack_b",[]],"JMSSA_ger_m40_helmet","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
        };
    };
    case 3 : {
        // 70s Cold War
        if (_isMedic) then {
            _result = [["gm_g3a3a0_oli","","","",["gm_20Rnd_762x51mm_B_T_DM21_g3_blk",20],[],""],[],[],["gm_ge_army_uniform_soldier_80_oli",[]],["gm_pl_army_vest_80_rifleman_gry",[["gm_20Rnd_762x51mm_B_T_DM21_g3_blk",11,20]]],["gm_ge_army_backpack_80_oli",[["ACE_quikclot",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_splint",2],["ACE_epinephrine",2],["ACE_bloodIV_500",1],["rhs_grenade_nbhgr39_mag",3,1]]],"gm_ge_headgear_m62","",["gm_ferod16_oli","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
        } else {
            _result = [["gm_g3a3a0_oli","","","",["gm_20Rnd_762x51mm_B_T_DM21_g3_blk",20],[],""],[],[],["gm_ge_army_uniform_soldier_80_oli",[]],["gm_pl_army_vest_80_rifleman_gry",[["gm_20Rnd_762x51mm_B_T_DM21_g3_blk",11,20]]],["gm_ge_army_backpack_80_oli",[["ACE_quikclot",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_splint",2],["ACE_epinephrine",2],["ACE_bloodIV_500",1],["rhs_grenade_nbhgr39_mag",3,1]]],"gm_ge_headgear_m62","",["gm_ferod16_oli","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
        };
    };
    case 4 : {
        // Modern
        if (_isMedic) then {
            _result = [["rhs_weap_asval","","","rhs_acc_1p63",["rhs_20rnd_9x39mm_SP6",20],[],""],[],["UK3CB_PC9_ZOAF","","","",["UK3CB_PC9_ZOAF_9_12Rnd",12],[],""],["UK3CB_CSAT_M_O_U_CombatUniform",[]],["UK3CB_CSAT_S_O_V_Carrier_Rig_Tactical_GRN",[["rhs_mag_an_m8hc",2,1],["rhs_mag_rgo",2,1],["rhs_20rnd_9x39mm_SP6",18,20]]],["UK3CB_CSAT_M_O_B_ASS",[["ACE_quikclot",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_splint",2],["ACE_epinephrine",2],["ACE_bloodIV_500",1],["rhs_grenade_nbhgr39_mag",3,1]]],"UK3CB_CSAT_G_O_H_6b27m_ESS_Alt","Balaclava_Black_EPSM",["gm_ferod16_oli","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
        } else {
            _result = [["rhs_weap_asval","","","rhs_acc_1p63",["rhs_20rnd_9x39mm_SP6",20],[],""],[],["UK3CB_PC9_ZOAF","","","",["UK3CB_PC9_ZOAF_9_12Rnd",12],[],""],["UK3CB_CSAT_M_O_U_CombatUniform",[]],["UK3CB_CSAT_S_O_V_Carrier_Rig_Tactical_GRN",[["rhs_mag_an_m8hc",2,1],["rhs_mag_rgo",2,1],["rhs_20rnd_9x39mm_SP6",18,20]]],["UK3CB_CSAT_M_O_B_ASS",[["ACE_quikclot",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_splint",2],["ACE_epinephrine",2],["ACE_bloodIV_500",1],["rhs_grenade_nbhgr39_mag",3,1]]],"UK3CB_CSAT_G_O_H_6b27m_ESS_Alt","Balaclava_Black_EPSM",["gm_ferod16_oli","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
        };
    };
    case 5 : {
        if (_isMedic) then {
            _result = [["WBK_EPSM_Scar_1_Black_H","","","",["Magazine_30rnd_556Scar_Black",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["CBRN_Scientist_Uniform_UK",[["FirstAidKit",1],["Magazine_30rnd_556Scar_Black",6,30]]],["Vest_Thor_Assault_Black",[["Magazine_30rnd_556Scar_Black",3,30],["16Rnd_9x21_Mag",1,17],["HandGrenade",2,1]]],["Exosuit_MK2_Black_AAM",[["Health_Syringe",4],["Battery_Full",4]]],"Odin_FullClean_Black","CBRN_MASK_UK",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVTG_mk9_Mount"]];
        } else {
            _result = [["WBK_EPSM_Scar_1_Black_H","","","",["Magazine_30rnd_556Scar_Black",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["CBRN_Scientist_Uniform_UK",[["FirstAidKit",1],["Magazine_30rnd_556Scar_Black",6,30]]],["Vest_Thor_Assault_Black",[["Magazine_30rnd_556Scar_Black",3,30],["16Rnd_9x21_Mag",1,17],["HandGrenade",2,1]]],["Exosuit_MK2_Black_AAM",[["Health_Syringe",4],["Battery_Full",4]]],"Odin_FullClean_Black","CBRN_MASK_UK",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVTG_mk9_Mount"]];
        };
    };
    case 6 : {
        if (_isMedic) then {
            _result = [["ls_weapon_dc15s","","","",["ls_magazine_dc15s",60],[],""],[],[],["ls_cloneUniform_501st_trooper",[["ls_magazine_dc15s",18,60]]],["ls_gar_clone_vest",[["ls_magazine_dc15s",5,60]]],["lsd_gar_marine_backpack",[["ACE_quikclot",5],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_fieldDressing",5],["ACE_bloodIV_500",1],["ACE_tourniquet",1],["ACE_splint",5],["ACE_morphine",2],["ACE_epinephrine",2]]],"ls_cloneHelmet_phase2_501st_trooper","",[],["","","","ItemCompass","",""]];
        } else {
            _result = [["ls_weapon_dc15s","","","",["ls_magazine_dc15s",60],[],""],[],[],["ls_cloneUniform_501st_trooper",[["ls_magazine_dc15s",18,60]]],["ls_gar_clone_vest",[["ls_magazine_dc15s",5,60]]],["lsd_gar_marine_backpack",[["ACE_quikclot",5],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_fieldDressing",5],["ACE_bloodIV_500",1],["ACE_tourniquet",1],["ACE_splint",5],["ACE_morphine",2],["ACE_epinephrine",2]]],"ls_cloneHelmet_phase2_501st_trooper","",[],["","","","ItemCompass","",""]];
        };
    };
    default {};
};

[_unit, _face] remoteExec ["setFace", 0, _unit];

_result