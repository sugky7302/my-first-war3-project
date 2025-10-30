globals
//globals from Japi:
constant boolean LIBRARY_Japi=true
//endglobals from Japi
//globals from MyTimer:
constant boolean LIBRARY_MyTimer=true
//endglobals from MyTimer
//globals from YDTriggerSaveLoadSystem:
constant boolean LIBRARY_YDTriggerSaveLoadSystem=true
hashtable YDHT
hashtable YDLOC
//endglobals from YDTriggerSaveLoadSystem
//globals from Base:
constant boolean LIBRARY_Base=true
//endglobals from Base

trigger l__library_init

//JASSHelper struct globals:



//JASSHelper struct globals:

//JASSHelper null local generated globals:


//JASSHelper struct globals:

//JASSHelper null local generated globals:
endglobals




//W3x2lni Data: 2025-10-31 03:04:02.483


//library YDTriggerSaveLoadSystem:
    function YDTriggerSaveLoadSystem__Init takes nothing returns nothing
            set YDHT=InitHashtable()
        set YDLOC=InitHashtable()
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
    endfunction

//library YDTriggerSaveLoadSystem ends
//library Base:
    function Base__init takes nothing returns nothing
        call DisplayTextToPlayer(Player(0), 0, 0, "初始化完成，正在執行主程式...")
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
    endfunction

//library Base ends
//===========================================================================
//*
//*  Global variables
//*
//===========================================================================
function InitGlobals takes nothing returns nothing
 local integer i= 0
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function InitRandomGroups takes nothing returns nothing
 local integer curset
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function InitSounds takes nothing returns nothing
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function CreateDestructables takes nothing returns nothing
 local destructable d
 local trigger t
 local real life
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function CreateItems takes nothing returns nothing
 local integer itemID
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function CreateUnits takes nothing returns nothing
 local unit u
 local integer unitID
 local trigger t
 local real life
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function CreateRegions takes nothing returns nothing
 local weathereffect we
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function CreateCameras takes nothing returns nothing
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
	call SetPlayerStartLocation(Player(0), 0)
	call SetPlayerColor(Player(0), ConvertPlayerColor(0))
	call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
	call SetPlayerRaceSelectable(Player(0), false)
	call SetPlayerController(Player(0), MAP_CONTROL_USER)
	call SetPlayerStartLocation(Player(1), 1)
	call SetPlayerColor(Player(1), ConvertPlayerColor(1))
	call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
	call SetPlayerRaceSelectable(Player(1), false)
	call SetPlayerController(Player(1), MAP_CONTROL_USER)
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function InitCustomTeams takes nothing returns nothing
	// Force: TRIGSTR_003
	call SetPlayerTeam(Player(0), 0)
	call SetPlayerTeam(Player(1), 0)
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
function InitAllyPriorities takes nothing returns nothing
	call SetStartLocPrioCount(0, 1)
	call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
	call SetStartLocPrioCount(1, 1)
	call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
//===========================================================================
//*
//*  Main Initialization
//*
//===========================================================================
function main takes nothing returns nothing
	call SetCameraBounds(- 3328.000000 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.000000 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.000000 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.000000 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.000000 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.000000 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.000000 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.000000 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
	call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	call SetTerrainFogEx(0, 3000.00, 5000.00, 0.500, 0.000, 0.000, 0.000)
	call NewSoundEnvironment("Default")
	call SetAmbientDaySound("LordaeronSummerDay")
	call SetAmbientNightSound("LordaeronSummerNight")
	call SetMapMusic("Music", true, 0)
	call InitSounds()
	call InitRandomGroups()
	call CreateRegions()
	call CreateCameras()
	call CreateDestructables()
	call CreateItems()
	call CreateUnits()
	call InitBlizzard()





call ExecuteFunc("Japi__init")
call ExecuteFunc("MyTimer__init")
call ExecuteFunc("YDTriggerSaveLoadSystem__Init")
call ExecuteFunc("Base__init")

	call InitGlobals()
	call InitCustomTriggers()
	call RunInitializationTriggers()
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction
//===========================================================================
//*
//*  Map Configuration
//*
//===========================================================================
function config takes nothing returns nothing
	call SetMapName("無盡之塔 v1.0")
	call SetMapDescription("")
	call SetPlayers(2)
	call SetTeams(2)
	call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
	call DefineStartLocation(0, 2752.000000, - 3008.000000)
	call DefineStartLocation(1, 2112.000000, - 2240.000000)
	call InitCustomPlayerSlots()
	call InitCustomTeams()
	call InitAllyPriorities()
//JASSHelper null local ignored(nothing to null)
//JASSHelper null local ignored(nothing to null)
endfunction




//Struct method generated initializers/callers:




//Struct method generated initializers/callers:




//Struct method generated initializers/callers:

