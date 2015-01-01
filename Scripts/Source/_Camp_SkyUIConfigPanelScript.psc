Scriptname _Camp_SkyUIConfigPanelScript extends SKI_ConfigBase

; #SUMMARY# =====================================================================================================================
; Name ...................: _Camp_SkyUIConfigPanelScript
; Attached To (EditorID)..: 
; Description ............: Script that drives all SkyUI 3.4+ Mod Configuration Menu options. All string values are in the translation files.
; Author .................: Chesko
; Last Approved (version) : 2.7
; Status .................: Complete
; Remarks ................: Some options pending the SkyUI Widget Framework.
; ===============================================================================================================================

; External scripts
_Camp_Compatibility property Compatibility auto
;_DE_EPMonitor_1_6 property Frostfall auto
;_DE_ClothingMonitor_1_7 property FrostfallArmor auto
;GlobalVariable property _DE_Setting_FastTravel auto
GlobalVariable property _DE_Setting_Lighting auto
GlobalVariable property _DE_Setting_Tent auto
;GlobalVariable property _DE_Setting_Water auto
;GlobalVariable property _DE_Setting_DialogueStop auto
GlobalVariable property _DE_Setting_CampingArmorTakeOff auto
GlobalVariable property _DE_Setting_WoodCinematic auto
;/GlobalVariable property _DE_Setting_ConditionMsg auto
GlobalVariable property _DE_Setting_WEARMsg auto
GlobalVariable property _DE_Setting_EPValueMsg auto
/;
;GlobalVariable property _DE_Setting_SystemMsg auto
;/GlobalVariable property _DE_HelpDone_ExposurePoints auto
GlobalVariable property _DE_HelpDone_Vampirism auto/;
GlobalVariable property _DE_HelpDone_Visualize auto
;GlobalVariable property _DE_HelpDone_Wet auto
GlobalVariable property _DE_HelpDone_PlacementError auto
GlobalVariable property _DE_HelpDone_Tents auto
GlobalVariable property _DE_Setting_Help auto
;/GlobalVariable property _DE_Setting_MovementPenalty auto
GlobalVariable property _DE_Setting_SoundEffects auto
GlobalVariable property _DE_Setting_ForceFeedback auto/;
GlobalVariable property _DE_Setting_SimplePlacement auto
;GlobalVariable property _DE_Setting_Animation auto
GlobalVariable property _DE_SKSEVersion auto
;GlobalVariable property StartFrostfall auto
GlobalVariable property _DE_CampsitePlacementOn auto
;GlobalVariable property _DE_HotkeyWeathersense auto
GlobalVariable property _DE_HotkeySurvivalSkills auto
;/GlobalVariable property _DE_EMColorCold_Light auto
GlobalVariable property _DE_EMColorCold_Dark auto
GlobalVariable property _DE_EMColorWarm_Light auto
GlobalVariable property _DE_EMColorWarm_Dark auto
GlobalVariable property _DE_WMColor_Light auto
GlobalVariable property _DE_WMColor_Dark auto
GlobalVariable property _DE_ExposureMeterDisplay_Contextual auto
GlobalVariable property _DE_ExposureMeter_Opacity auto
GlobalVariable property _DE_ExposureMeterHeight auto
GlobalVariable property _DE_WetMeterHeight auto
GlobalVariable property _DE_MeterLength auto
GlobalVariable property _DE_DisplayEPWidget auto
GlobalVariable property _DE_WeathersenseDisplay_Contextual auto
GlobalVariable property _DE_WeathersenseHeight auto
GlobalVariable property _DE_Weathersense_Opacity auto
GlobalVariable property _DE_MeterDisplayTime auto
GlobalVariable property _DE_WeathersenseDisplayTime auto
GlobalVariable property _DE_WeathersensePowerMode auto
GlobalVariable property _DE_RescueChanceAlone auto
GlobalVariable property _DE_RescueChanceFollower auto/;

message property _DE_SkyUI_PresetConfirm auto

; Toggle states
bool bPresetChange = false

string[] TroubleshootingList
int TroubleshootingIndex = 0
;string[] PresetList
;int PresetIndex = 1
;string[] MeterDisplayList
;int MeterDisplayIndex = 2
;string[] MeterLayoutList
;int MeterLayoutIndex = 0
;string[] WeathersenseDisplayList
;int WeathersenseDisplayIndex = 2
;string[] WeathersenseLayoutList
;int WeathersenseLayoutIndex = 2
;string[] MeterHeightList
;int ExposureMeterHeightIndex = 0
;int WetMeterHeightIndex = 0
;int WeathersenseHeightIndex = 0
;string[] MeterLengthList
;int MeterLengthIndex = 0
;string[] WeathersensePowerModeList
;int WeathersensePowerModeIndex = 0

;/int Overview_RunStatusText_OID 
int Overview_RunStatusSubText_OID
int Overview_PresetMenu_OID
int Overview_RateSlider_OID
int Overview_FTText_OID
int Overview_FTRText_OID
/;
int Overview_CampfireText_OID
;/
int Overview_AxeText_OID
int Overview_WaterText_OID
int Overview_WEARText_OID
int Overview_DeathText_OID/;

;/int Overview_PresetApplyText_OID
int Overview_PresetRateSlider_OID
int Overview_PresetFTText_OID
int Overview_PresetFTRText_OID
int Overview_PresetCampfireText_OID
int Overview_PresetAxeText_OID
int Overview_PresetWaterText_OID
int Overview_PresetWEARText_OID
int Overview_PresetDeathText_OID/;

;/int Gameplay_SettingExposureRateSlider_OID
int Gameplay_SettingExposureCombatText_OID
int Gameplay_SettingExposureDialogueText_OID
int Gameplay_SettingExposureWaterText_OID
int Gameplay_SettingExposureDeathText_OID
int Gameplay_SettingFTManageToggle_OID
int Gameplay_SettingFTToggleText_OID
int Gameplay_SettingFTAxeText_OID
int Gameplay_SettingCampingAxeDurabilityText_OID
/;

int Gameplay_SettingCampingArmorTentsText_OID
int Gameplay_SettingCampingFireLightingText_OID
int Gameplay_SettingCampingDynamicCampfiresText_OID
int Gameplay_SettingCampingPlacementVisualizationText_OID
;/
int Gameplay_SettingImmersionMovementText_OID
int Gameplay_SettingImmersionWEARText_OID
int Gameplay_SettingImmersionWEARText_DefaultAll_OID
int Gameplay_SettingImmersionWaitToggleText_OID
int Gameplay_SettingVampirismText_OID
int Gameplay_SettingRescueChanceAloneSlider_OID
int Gameplay_SettingRescueChanceFollowersSlider_OID

int Visuals_SettingFrostShaderToggle_OID
int Visuals_SettingWetShaderToggle_OID
int Visuals_SettingFullScreenEffectsToggle_OID
/;
int Visuals_SettingWoodCinematicToggle_OID
;/
int Visuals_SettingSoundEffectsToggle_OID
int Visuals_SettingForceFeedbackToggle_OID
int Visuals_SettingAnimationToggle_OID
/;
int Visuals_SettingSystemMsgToggle_OID
;/
int Visuals_SettingWeatherMsgToggle_OID
int Visuals_SettingConditionMsgToggle_OID
int Visuals_SettingWEARMsgToggle_OID
int Visuals_SettingEPValueMsgToggle_OID
int Visuals_HotkeyWeathersense_OID
/;
int Visuals_HotkeySurvivalSkills_OID
;/
int Visuals_UIMeterLayout_OID
int Visuals_UIMeterDisplay_OID
int Visuals_UIMeterLength_OID
int Visuals_UIEMeterHeight_OID
int Visuals_UIEMeterColorCold_OID
int Visuals_UIEMeterColorWarm_OID
int Visuals_UIWMeterHeight_OID
int Visuals_UIWMeterColor_OID
int Visuals_UIEPDisplay_OID
int Visuals_UIMeterOpacity_OID
int Visuals_UIWeathersenseIndicatorDisplay_OID
int Visuals_UIWeathersenseIndicatorOpacity_OID
int Visuals_UIWeathersenseIndicatorLayout_OID
int Visuals_UIWeathersenseIndicatorHeight_OID
int Visuals_UIMeterDisplayTime_OID
int Visuals_UIWeathersenseIndicatorDisplayTime_OID
int Visuals_WeathersensePowerMode_OID
/;

int Help_TroubleshootingMenu_OID
;int Help_WizardWetAndColdText_OID
;int Help_WizardGetSnowyText_OID
int Help_TutorialsToggle_OID
int Help_TutorialsResetText_OID
int Guide_Topic1
int Guide_Topic2
int Guide_Topic3
int Guide_Topic4
int Guide_Topic5
int Guide_Topic6
int Guide_Topic7
int Guide_Topic8
int Guide_Topic9
int Guide_Topic10
int Guide_Topic11
int Guide_Topic12
int Guide_Topic13
int Guide_Topic14
int Guide_Topic15
int Guide_Topic16
int Guide_Topic17
int Guide_Topic18

;#Region Shutdown Properties
;/GlobalVariable property _DE_ExposurePoints auto
GlobalVariable property _DE_SwimState auto
GlobalVariable property _DE_WetState auto
Spell property _DE_Hypo_Spell_0_2 auto
Spell property _DE_Hypo_Spell_1 auto
Spell property _DE_Hypo_Spell_2 auto
Spell property _DE_Hypo_Spell_3 auto
Spell property _DE_Hypo_Spell_4 auto
Spell property _DE_Hypo_Spell_4NoFrost auto
Spell property _DE_Hypo_Spell_5 auto
Spell property _DE_Hypo_Spell_5NoFrost auto
Spell property _DE_TorchState_Spell auto
Spell property _DE_CloakState_Spell auto
Spell property _DE_CloakState_Spell_Fur auto
Spell property _DE_CloakState_Spell_Hide auto
Spell property _DE_CloakState_Spell_Burlap auto
Spell property _DE_CloakState_Spell_Linen auto
Spell property _DE_WetState_Spell auto
Spell property _DE_WetState_Spell1 auto
Spell property _DE_WetState_Spell1NoShader auto
Spell property _DE_WetState_Spell2 auto
Spell property _DE_WetState_Spell2NoShader auto
Spell property _DE_WetState_Spell3 auto
Spell property _DE_WetState_Spell3NoShader auto
Spell property _DE_Weathersense_Spell auto
Spell property _DE_WEARExamineArmor_Spell auto
Spell property _DE_ColdWater_1 auto
Spell property _DE_ColdWater_2 auto
Spell property _DE_ColdWater_3 auto
spell property _DE_ColdWater_3_Perk auto
Spell property _DE_ColdWater_Death auto
Spell property _DE_NoWait_Spell auto
/;
Spell property _DE_SurvivalSkillsCombo_Spell auto
;/
Spell property _DE_WellInsulatedConditionSpell auto
Spell property _DE_ConditioningState_Spell auto
Spell property _DE_ConditioningState_Spell_SkyRe auto
Spell property _DE_FlyingMountState_Spell auto
Spell property _DE_WerewolfSwimState auto
Spell property _DE_WalkingStickSpell auto
Spell property _DE_HandWarmingSpell auto
spell property _DE_NoWaitWerewolfFix_Spell auto
spell property _DE_FollowerSpell auto

ReferenceAlias property Alias_DE_Player auto
/;
message property _DE_Backpack_Menu2_HelpTroubleshootingConfirm auto

;#EndRegion

Event OnConfigInit()																					;TRANSLATED
	
	Pages = new string[5]
	Pages[0] = "$CampfireOverviewPage"
	Pages[1] = "$CampfireGameplayPage"
	Pages[2] = "$CampfireVisualsPage"
	Pages[3] = "$CampfireHelpPage"
	Pages[4] = "$CampfireGuidePage"
	
	;/PresetList = new string[3]
	PresetList[0] = "$CampfireHardcore"
	PresetList[1] = "$CampfireClassic"
	PresetList[2] = "$CampfireLite"/;
	
	TroubleshootingList = new string[8]
	;TroubleshootingList[0] = "$CampfireTroubleshooting0"
	;TroubleshootingList[1] = "$CampfireTroubleshooting1"
	;TroubleshootingList[2] = "$CampfireTroubleshooting2"
	;TroubleshootingList[3] = "$CampfireTroubleshooting3"
	;TroubleshootingList[4] = "$CampfireTroubleshooting4"
	;TroubleshootingList[5] = "$CampfireTroubleshooting5"
	;TroubleshootingList[6] = "$CampfireTroubleshooting6"
	TroubleshootingList[0] = "$CampfireTroubleshooting7"

	;/MeterDisplayList = new string[3]
	MeterDisplayList[0] = "$CampfireOff"		;"Off"
	MeterDisplayList[1] = "$CampfireAlwaysOn"	;"Always On"
	MeterDisplayList[2] = "$CampfireContextual"	;"Contextual"

	WeathersenseDisplayList = new String[3]
	WeathersenseDisplayList[0] = "$CampfireOff"		;"Off"
	WeathersenseDisplayList[1] = "$CampfireAlwaysOn"	;"Always On"
	WeathersenseDisplayList[2] = "$CampfireContextual"	;"Contextual"

	MeterHeightList = new String[2]
	MeterHeightList[0] = "$CampfireNormal"	;"Normal"
	MeterHeightList[1] = "$CampfireThin"	;"Thin"

	MeterLengthList = new String[2]
	MeterLengthList[0] = "$CampfireNormal"	;"Normal"
	MeterLengthList[1] = "$CampfireShortened"	;"Shortened"

	WeathersensePowerModeList = new String[7]
	WeathersensePowerModeList[0] = "$CampfirePowerModeList1"	;"Message Only"
	WeathersensePowerModeList[1] = "$CampfirePowerModeList2"	;"Message, Gem"
	WeathersensePowerModeList[2] = "$CampfirePowerModeList3"	;"Msg, Gem, Meters"
	WeathersensePowerModeList[3] = "$CampfirePowerModeList4"	;Message, Meters"
	WeathersensePowerModeList[4] = "$CampfirePowerModeList5"	;"Gem, Meters"
	WeathersensePowerModeList[5] = "$CampfirePowerModeList6"	;"Gem Only"
	WeathersensePowerModeList[6] = "$CampfirePowerModeList7"	;"Meters Only"

	WeathersenseLayoutList = new String[8]
	WeathersenseLayoutList[0] = "$CampfireWeathersenseLayoutList1"	;"Compass"
	WeathersenseLayoutList[1] = "$CampfireWeathersenseLayoutList2"	;"Compass(Lower)"
	WeathersenseLayoutList[2] = "$CampfireWeathersenseLayoutList3"	;"Top,Center,Edge"
	WeathersenseLayoutList[3] = "$CampfireWeathersenseLayoutList4"	;"Top,Right,Edge"
	WeathersenseLayoutList[4] = "$CampfireWeathersenseLayoutList5"	;"Top,Left,Edge"
	WeathersenseLayoutList[5] = "$CampfireWeathersenseLayoutList6"	;"Btm,Center,Edge"
	WeathersenseLayoutList[6] = "$CampfireWeathersenseLayoutList7"	;"Btm,Left,Edge"
	WeathersenseLayoutList[7] = "$CampfireWeathersenseLayoutList8"	;"Btm,Right,Edge"

	MeterLayoutList = new string[18]
	MeterLayoutList[0] = "$CampfireMeterLayoutList1"	;"Split,Top,Offset"
	MeterLayoutList[1] = "$CampfireMeterLayoutList2"	;"Split,Top,Edge"
	MeterLayoutList[2] = "$CampfireMeterLayoutList3"	;"Split,Top,Corners"
	MeterLayoutList[3] = "$CampfireMeterLayoutList4"	;"Split,Bottom,Offset"
	MeterLayoutList[4] = "$CampfireMeterLayoutList5"	;"Split,Bottom,Edge"
	MeterLayoutList[5] = "$CampfireMeterLayoutList6"	;"Split,Bottom,Corners"
	MeterLayoutList[6] = "$CampfireMeterLayoutList7"	;"Grouped,TopRight,Offset"
	MeterLayoutList[7] = "$CampfireMeterLayoutList8"	;"Grouped,TopRight,Edge"
	MeterLayoutList[8] = "$CampfireMeterLayoutList9"	;"Grouped,TopRight,Corner"
	MeterLayoutList[9] = "$CampfireMeterLayoutList10"	;"Grouped,TopLeft,Offset"
	MeterLayoutList[10] = "$CampfireMeterLayoutList11"	;"Grouped,TopLeft,Edge"
	MeterLayoutList[11] = "$CampfireMeterLayoutList12"	;"Grouped,TopLeft,Corner"
	MeterLayoutList[12] = "$CampfireMeterLayoutList13"	;"Grouped,BtmRight,Offset"
	MeterLayoutList[13] = "$CampfireMeterLayoutList14"	;"Grouped,BtmRight,Edge"
	MeterLayoutList[14] = "$CampfireMeterLayoutList15"	;"Grouped,BtmRight,Corner"
	MeterLayoutList[15] = "$CampfireMeterLayoutList16"	;"Grouped,BtmLeft,Offset"
	MeterLayoutList[16] = "$CampfireMeterLayoutList17"	;"Grouped,BtmLeft,Edge"
	MeterLayoutList[17] = "$CampfireMeterLayoutList18"	;"Grouped,BtmLeft,Corner"
	/;

	;Frostfall.FrostfallDebug(0, "Initialized the SkyUI Mod Config Menu.")
	debug.trace("[CAMPFIRE] Initialized the SkyUI Mod Config Menu.")
	
endEvent

function PageReset_Overview()																			;TRANSLATED

	;/if !PresetList
		OnConfigInit()
	endIf/;

	SetCursorFillMode(TOP_TO_BOTTOM)

	AddHeaderOption("$CampfireOverviewHeaderStatus")
	;/if !Frostfall.ShutdownState && Frostfall.pSetting_IsRunning
		Overview_RunStatusText_OID = AddTextOption("$CampfireOverviewCtrlStatus", "$CampfireEnabled")
		Overview_RunStatusSubText_OID = AddTextOption("", "", OPTION_FLAG_DISABLED)
	else
		if Frostfall.pSetting_IsRunning
			Overview_RunStatusText_OID = AddTextOption("$CampfireOverviewCtrlStatus", "$CampfireDisabled")
			Overview_RunStatusSubText_OID = AddTextOption("", "$CampfireOverviewDisabled", OPTION_FLAG_DISABLED)
			return
		else
			Overview_RunStatusText_OID = AddTextOption("$CampfireOverviewCtrlStatus", "$CampfireNotStarted")
			Overview_RunStatusSubText_OID = AddTextOption("", "", OPTION_FLAG_DISABLED)
			return
		endif
	endif
	/;
		
	AddHeaderOption("$CampfireOverviewHeaderCurrentSettings")
	;Overview_RateSlider_OID = AddSliderOption("$CampfireOverviewSettingExposureRate", Frostfall.pSetting_ExposureRate, "{1}x", OPTION_FLAG_DISABLED)
	
	;/if FrostfallArmor.pSetting_Armor
		Overview_WEARText_OID = AddToggleOption("$CampfireOverviewSettingWEAR", true, OPTION_FLAG_DISABLED)
	else
		Overview_WEARText_OID = AddToggleOption("$CampfireOverviewSettingWEAR", false, OPTION_FLAG_DISABLED)
	endif
	
	if Frostfall.pSetting_FastTravelDisable
		Overview_FTText_OID = AddToggleOption("$CampfireOverviewSettingFastTravel", false, OPTION_FLAG_DISABLED)
	else
		Overview_FTText_OID = AddToggleOption("$CampfireOverviewSettingFastTravel", true, OPTION_FLAG_DISABLED)
	endif/;
	
	;/if Frostfall.pSetting_FastTravelDisable
		Overview_FTRText_OID = AddToggleOption("$CampfireOverviewSettingFastTravelReq", false, OPTION_FLAG_DISABLED)
	else
		if _DE_Setting_FastTravel.GetValueInt() == 2
			Overview_FTRText_OID = AddToggleOption("$CampfireOverviewSettingFastTravelReq", true, OPTION_FLAG_DISABLED)
		else
			Overview_FTRText_OID = AddToggleOption("$CampfireOverviewSettingFastTravelReq", false, OPTION_FLAG_DISABLED)
		endif
	endif/;
		
	if _DE_Setting_Lighting.GetValueInt() == 2
		Overview_CampfireText_OID = AddTextOption("$CampfireOverviewSettingCampfireMode", "$CampfireManual", OPTION_FLAG_DISABLED)
	else
		Overview_CampfireText_OID = AddTextOption("$CampfireOverviewSettingCampfireMode", "$CampfireAutomatic", OPTION_FLAG_DISABLED)
	endif
		
	;/if _DE_Setting_Tent.GetValueInt() == 2
		Overview_AxeText_OID = AddToggleOption("$CampfireOverviewSettingAxeDurability", true, OPTION_FLAG_DISABLED)
	else
		Overview_AxeText_OID = AddToggleOption("$CampfireOverviewSettingAxeDurability", false, OPTION_FLAG_DISABLED)
	endif/;
		
	;/if _DE_Setting_Water.GetValueInt() == 2
		Overview_WaterText_OID = AddToggleOption("$CampfireOverviewSettingWaterLethality", true, OPTION_FLAG_DISABLED)
	else
		Overview_WaterText_OID = AddToggleOption("$CampfireOverviewSettingWaterLethality", false, OPTION_FLAG_DISABLED)
	endif
	
	if Frostfall.pSetting_PlayerDeath
		Overview_DeathText_OID = AddToggleOption("$CampfireOverviewSettingExposureLethality", true, OPTION_FLAG_DISABLED)
	else
		Overview_DeathText_OID = AddToggleOption("$CampfireOverviewSettingExposureLethality", false, OPTION_FLAG_DISABLED)
	endif/;
	
	SetCursorPosition(1) ; Move cursor to top right position
	AddHeaderOption("$CampfireOverviewHeaderPresets")
	;/Overview_PresetMenu_OID = AddMenuOption("$CampfireOverviewPresetSelect", PresetList[PresetIndex])
	if bPresetChange
		if PresetIndex == 0		;Hardcore
			Overview_PresetApplyText_OID = AddTextOption("", "$CampfireApply")
			AddHeaderOption("$CampfireOverviewPresetSettingsOverview")
			Overview_PresetRateSlider_OID = AddSliderOption("$CampfireOverviewPresetSettingsExposureRate", 1.0, "{1}x", OPTION_FLAG_DISABLED)
			Overview_PresetWEARText_OID = AddToggleOption("$CampfireOverviewPresetSettingsWEAR", true, OPTION_FLAG_DISABLED)
			Overview_PresetFTText_OID = AddToggleOption("$CampfireOverviewPresetSettingsFastTravel", false, OPTION_FLAG_DISABLED)
			Overview_PresetFTRText_OID = AddToggleOption("$CampfireOverviewPresetSettingsFastTravelReq", false, OPTION_FLAG_DISABLED)
			Overview_PresetCampfireText_OID = AddTextOption("$CampfireOverviewPresetSettingsCampfireMode", "$CampfireManual", OPTION_FLAG_DISABLED)
			Overview_PresetAxeText_OID = AddToggleOption("$CampfireOverviewPresetSettingsAxeDurability", true, OPTION_FLAG_DISABLED)
			Overview_PresetWaterText_OID = AddToggleOption("$CampfireOverviewPresetSettingsWaterLethality", true, OPTION_FLAG_DISABLED)
			Overview_PresetDeathText_OID = AddToggleOption("$CampfireOverviewPresetSettingsExposureLethality", true, OPTION_FLAG_DISABLED)
		elseif PresetIndex == 1	;Classic
			Overview_PresetApplyText_OID = AddTextOption("", "$CampfireApply")
			AddHeaderOption("$CampfireOverviewPresetSettingsOverview")
			Overview_PresetRateSlider_OID = AddSliderOption("$CampfireOverviewPresetSettingsExposureRate", 1.0, "{1}x", OPTION_FLAG_DISABLED)
			Overview_PresetWEARText_OID = AddToggleOption("$CampfireOverviewPresetSettingsWEAR", false, OPTION_FLAG_DISABLED)
			Overview_PresetFTText_OID = AddToggleOption("$CampfireOverviewPresetSettingsFastTravel", true, OPTION_FLAG_DISABLED)
			Overview_PresetFTRText_OID = AddToggleOption("$CampfireOverviewPresetSettingsFastTravelReq", true, OPTION_FLAG_DISABLED)
			Overview_PresetCampfireText_OID = AddTextOption("$CampfireOverviewPresetSettingsCampfireMode", "$CampfireAutomatic", OPTION_FLAG_DISABLED)
			Overview_PresetAxeText_OID = AddToggleOption("$CampfireOverviewPresetSettingsAxeDurability", true, OPTION_FLAG_DISABLED)
			Overview_PresetWaterText_OID = AddToggleOption("$CampfireOverviewPresetSettingsWaterLethality", true, OPTION_FLAG_DISABLED)
			Overview_PresetDeathText_OID = AddToggleOption("$CampfireOverviewPresetSettingsExposureLethality", true, OPTION_FLAG_DISABLED)
		elseif PresetIndex == 2	;Lite
			Overview_PresetApplyText_OID = AddTextOption("", "$CampfireApply")
			AddHeaderOption("$CampfireOverviewPresetSettingsOverview")
			Overview_PresetRateSlider_OID = AddSliderOption("$CampfireOverviewPresetSettingsExposureRate", 0.8, "{1}x", OPTION_FLAG_DISABLED)
			Overview_PresetWEARText_OID = AddToggleOption("$CampfireOverviewPresetSettingsWEAR", false, OPTION_FLAG_DISABLED)
			Overview_PresetFTText_OID = AddToggleOption("$CampfireOverviewPresetSettingsFastTravel", true, OPTION_FLAG_DISABLED)
			Overview_PresetFTRText_OID = AddToggleOption("$CampfireOverviewPresetSettingsFastTravelReq", false, OPTION_FLAG_DISABLED)
			Overview_PresetCampfireText_OID = AddTextOption("$CampfireOverviewPresetSettingsCampfireMode", "$CampfireAutomatic", OPTION_FLAG_DISABLED)
			Overview_PresetAxeText_OID = AddToggleOption("$CampfireOverviewPresetSettingsAxeDurability", false, OPTION_FLAG_DISABLED)
			Overview_PresetWaterText_OID = AddToggleOption("$CampfireOverviewPresetSettingsWaterLethality", false, OPTION_FLAG_DISABLED)
			Overview_PresetDeathText_OID = AddToggleOption("$CampfireOverviewPresetSettingsExposureLethality", false, OPTION_FLAG_DISABLED)
		endif
		
		bPresetChange = false
		
	endif/;
endFunction

function PageReset_Gameplay()																			;TRANSLATED

	;/if Frostfall.ShutdownState || !Frostfall.pSetting_IsRunning
		AddTextOption("$CampfireNotRunningError", "")
		return
	endif
	/;
	
	SetCursorFillMode(TOP_TO_BOTTOM)
	
	AddHeaderOption("$CampfireGameplayHeaderExposure")
	
	;Gameplay_SettingExposureRateSlider_OID = AddSliderOption("$CampfireGameplaySettingExposureRate", Frostfall.pSetting_ExposureRate, "{1}x")
	
	;/if Frostfall.pSetting_CombatDisable
		Gameplay_SettingExposureCombatText_OID = AddToggleOption("$CampfireGameplaySettingExposureCombatPause", true)
	else
		Gameplay_SettingExposureCombatText_OID = AddToggleOption("$CampfireGameplaySettingExposureCombatPause", false)
	endif
	
	if _DE_Setting_DialogueStop.GetValueInt() == 2
		Gameplay_SettingExposureDialogueText_OID = AddToggleOption("$CampfireGameplaySettingExposureDialoguePause", true)
	else
		Gameplay_SettingExposureDialogueText_OID = AddToggleOption("$CampfireGameplaySettingExposureDialoguePause", false)
	endif
	
	if _DE_Setting_Water.GetValueInt() == 2
		Gameplay_SettingExposureWaterText_OID = AddToggleOption("$CampfireGameplaySettingExposureWaterLethality", true)
	else
		Gameplay_SettingExposureWaterText_OID = AddToggleOption("$CampfireGameplaySettingExposureWaterLethality", false)
	endif
	
	if Frostfall.pSetting_PlayerDeath
		Gameplay_SettingExposureDeathText_OID = AddToggleOption("$CampfireGameplaySettingExposureExposureLethality", true)
	else
		Gameplay_SettingExposureDeathText_OID = AddToggleOption("$CampfireGameplaySettingExposureExposureLethality", false)
	endif
	
	if Frostfall.pSetting_VampireImmunity
		Gameplay_SettingVampirismText_OID = AddToggleOption("$CampfireGameplaySettingExposureVampirism", true)
	else
		Gameplay_SettingVampirismText_OID = AddToggleOption("$CampfireGameplaySettingExposureVampirism", false)
	endif/;
	
	AddHeaderOption("$CampfireGameplayHeaderFastTravel")
	
	;/if !Frostfall.pSetting_NoWait
		if Frostfall.pSetting_FastTravelProcessing
			Gameplay_SettingFTManageToggle_OID = AddToggleOption("$CampfireGameplaySettingFTManagement", true)
			if Frostfall.pSetting_FastTravelDisable
				Gameplay_SettingFTToggleText_OID = AddToggleOption("$CampfireGameplaySettingFTToggle", false, OPTION_FLAG_NONE)
				if _DE_Setting_FastTravel.GetValueInt() == 2
					Gameplay_SettingFTAxeText_OID = AddToggleOption("$CampfireGameplaySettingFTReq", true, OPTION_FLAG_DISABLED)
				else
					Gameplay_SettingFTAxeText_OID = AddToggleOption("$CampfireGameplaySettingFTReq", false, OPTION_FLAG_DISABLED)
				endif
			else
				Gameplay_SettingFTToggleText_OID = AddToggleOption("$CampfireGameplaySettingFTToggle", true, OPTION_FLAG_NONE)
				if _DE_Setting_FastTravel.GetValueInt() == 2
					Gameplay_SettingFTAxeText_OID = AddToggleOption("$CampfireGameplaySettingFTReq", true, OPTION_FLAG_NONE)
				else
					Gameplay_SettingFTAxeText_OID = AddToggleOption("$CampfireGameplaySettingFTReq", false, OPTION_FLAG_NONE)
				endif
			endif
		else
			Gameplay_SettingFTManageToggle_OID = AddToggleOption("$CampfireGameplaySettingFTManagement", false)
			Gameplay_SettingFTToggleText_OID = AddToggleOption("$CampfireGameplaySettingFTToggle", true, OPTION_FLAG_DISABLED)
			Gameplay_SettingFTAxeText_OID = AddToggleOption("$CampfireGameplaySettingFTReq", false, OPTION_FLAG_DISABLED)
		endif
	else
		Gameplay_SettingFTManageToggle_OID = AddToggleOption("$CampfireGameplaySettingFTManagement", false, OPTION_FLAG_DISABLED)
		Gameplay_SettingFTToggleText_OID = AddToggleOption("$CampfireGameplaySettingFTToggle", false, OPTION_FLAG_DISABLED)
		Gameplay_SettingFTAxeText_OID = AddToggleOption("$CampfireGameplaySettingFTReq", false, OPTION_FLAG_DISABLED)
	endif/;
	
	SetCursorPosition(1) ; Move cursor to top right position

	AddHeaderOption("$CampfireGameplayHeaderCamping")
	
	;/if _DE_Setting_Tent.GetValueInt() == 1
		Gameplay_SettingCampingAxeDurabilityText_OID = AddToggleOption("$CampfireGameplaySettingCampingAxeDurability", false)
	else
		Gameplay_SettingCampingAxeDurabilityText_OID = AddToggleOption("$CampfireGameplaySettingCampingAxeDurability", true)
	endif
	/;
	if _DE_Setting_CampingArmorTakeOff.GetValueInt() == 2
		Gameplay_SettingCampingArmorTentsText_OID = AddToggleOption("$CampfireGameplaySettingCampingRemoveGear", true)
	else
		Gameplay_SettingCampingArmorTentsText_OID = AddToggleOption("$CampfireGameplaySettingCampingRemoveGear", false)
	endif
	
	if _DE_Setting_SimplePlacement.GetValueInt() == 2
		Gameplay_SettingCampingPlacementVisualizationText_OID = AddToggleOption("$CampfireGameplaySettingCampingPlacementMode", false)
	else
		Gameplay_SettingCampingPlacementVisualizationText_OID = AddToggleOption("$CampfireGameplaySettingCampingPlacementMode", true)
	endif
	
	if _DE_Setting_Lighting.GetValueInt() == 2
		Gameplay_SettingCampingFireLightingText_OID = AddTextOption("$CampfireGameplaySettingCampingLightingMode", "$CampfireManual")
	else
		Gameplay_SettingCampingFireLightingText_OID = AddTextOption("$CampfireGameplaySettingCampingLightingMode", "$CampfireAutomatic")
	endif

	;/
	Gameplay_SettingRescueChanceAloneSlider_OID = AddSliderOption("$CampfireGameplaySettingCampingRAlone", _DE_RescueChanceAlone.GetValue() * 100, "{0}%")
	Gameplay_SettingRescueChanceFollowersSlider_OID = AddSliderOption("$CampfireGameplaySettingCampingRFollower", _DE_RescueChanceFollower.GetValue() * 100, "{0}%")
	/;
	AddHeaderOption("$CampfireGameplayHeaderImmersion")
	
	;Make this a menu option
	;/if FrostfallArmor.pSetting_Armor
		Gameplay_SettingImmersionWEARText_OID = AddToggleOption("$CampfireGameplaySettingImmersionWEAR", true)
	else
		Gameplay_SettingImmersionWEARText_OID = AddToggleOption("$CampfireGameplaySettingImmersionWEAR", false)
	endif
	
	if FrostfallArmor.pSetting_Armor
		Gameplay_SettingImmersionWEARText_DefaultAll_OID = AddTextOption("$CampfireOptionsWEARReset", "$CampfireApply")
	else
		Gameplay_SettingImmersionWEARText_DefaultAll_OID = AddTextOption("$CampfireOptionsWEARReset", "", OPTION_FLAG_DISABLED)
	endif
	
	if Frostfall.pSetting_NoWait
		Gameplay_SettingImmersionWaitToggleText_OID = AddToggleOption("$CampfireGameplaySettingImmersionWaiting", false)
	else
		Gameplay_SettingImmersionWaitToggleText_OID = AddToggleOption("$CampfireGameplaySettingImmersionWaiting", true)
	endif
	
	if _DE_Setting_MovementPenalty.GetValueInt() == 2
		Gameplay_SettingImmersionMovementText_OID = AddToggleOption("$CampfireGameplaySettingImmersionMovement", true)
	else
		Gameplay_SettingImmersionMovementText_OID = AddToggleOption("$CampfireGameplaySettingImmersionMovement", false)
	endif
	/;

endFunction

function PageReset_Visuals()																			;TRANSLATED
	;/if !MeterDisplayList
		OnConfigInit()
	endif

	if Frostfall.ShutdownState || !Frostfall.pSetting_IsRunning
		AddTextOption("$CampfireNotRunningError", "")
		return
	endif
	/;
	
	SetCursorFillMode(TOP_TO_BOTTOM)
		
	AddHeaderOption("$CampfireVisualsHeaderVisualEffects")
	
	;/if Frostfall.pSetting_EffectFrostShader
		Visuals_SettingFrostShaderToggle_OID = AddToggleOption("$CampfireVisualsSettingFrostShader", true)
	else
		Visuals_SettingFrostShaderToggle_OID = AddToggleOption("$CampfireVisualsSettingFrostShader", false)
	endif
	
	if Frostfall.pSetting_EffectWetShader
		Visuals_SettingWetShaderToggle_OID = AddToggleOption("$CampfireVisualsSettingWetShader", true)
	else
		Visuals_SettingWetShaderToggle_OID = AddToggleOption("$CampfireVisualsSettingWetShader", false)
	endif
	
	if Frostfall.pSetting_FullScreenEffects
		Visuals_SettingFullScreenEffectsToggle_OID = AddToggleOption("$CampfireVisualsSettingImagespaceModifiers", true)
	else
		Visuals_SettingFullScreenEffectsToggle_OID = AddToggleOption("$CampfireVisualsSettingImagespaceModifiers", false)
	endif
	
	if _DE_Setting_WoodCinematic.GetValueInt() == 2
		Visuals_SettingWoodCinematicToggle_OID = AddToggleOption("$CampfireVisualsSettingWoodHarvesting", true)
	else
		Visuals_SettingWoodCinematicToggle_OID = AddToggleOption("$CampfireVisualsSettingWoodHarvesting", false)
	endif
	
	if _DE_Setting_SoundEffects.GetValueInt() == 2
		Visuals_SettingSoundEffectsToggle_OID = AddToggleOption("$CampfireVisualsSettingSoundEffects", true)
	else
		Visuals_SettingSoundEffectsToggle_OID = AddToggleOption("$CampfireVisualsSettingSoundEffects", false)
	endif
	
	if _DE_Setting_ForceFeedback.GetValueInt() == 2
		Visuals_SettingForceFeedbackToggle_OID = AddToggleOption("$CampfireVisualsSettingForceFeedback", true)
	else
		Visuals_SettingForceFeedbackToggle_OID = AddToggleOption("$CampfireVisualsSettingForceFeedback", false)
	endif
	
	if Compatibility.isSKSELoaded
		if _DE_Setting_Animation.GetValueInt() == 2
			Visuals_SettingAnimationToggle_OID = AddToggleOption("$CampfireVisualsSettingAnimation", true)
		else
			Visuals_SettingAnimationToggle_OID = AddToggleOption("$CampfireVisualsSettingAnimation", false)
		endif
	endif
	/;
	
	AddHeaderOption("$CampfireVisualsHeaderHotkeys")
	;Visuals_WeathersensePowerMode_OID = AddMenuOption("$CampfireVisualsSettingWeathersenseMode", WeathersensePowerModeList[WeathersensePowerModeIndex])
	;Visuals_HotkeyWeathersense_OID = AddKeyMapOption("$CampfireVisualsHotkeyWeathersense", _DE_HotkeyWeathersense.GetValueInt())
	Visuals_HotkeySurvivalSkills_OID = AddKeyMapOption("$CampfireVisualsHotkeySurvivalSkills", _DE_HotkeySurvivalSkills.GetValueInt())
	
	
	
	;AddToggleOption("First-Person Messages", true)
	
	SetCursorPosition(1) ; Move cursor to top right position
	
	AddHeaderOption("$CampfireVisualsHeaderMeters")
	;/Visuals_UIMeterDisplay_OID = AddMenuOption("$CampfireVisualsSettingUIMeterDisplay", MeterDisplayList[MeterDisplayIndex])
	Visuals_UIMeterLayout_OID = AddMenuOption("$CampfireVisualsSettingUIMeterLayout", MeterLayoutList[MeterLayoutIndex])
	Visuals_UIMeterLength_OID = AddMenuOption("$CampfireVisualsSettingUIMeterLength", MeterLengthList[MeterLengthIndex])
	Visuals_UIMeterOpacity_OID = AddSliderOption("$CampfireVisualsSettingUIMeterOpacity", _DE_ExposureMeter_Opacity.GetValue(), "{0}")
	Visuals_UIMeterDisplayTime_OID = AddSliderOption("$CampfireVisualsSettingUIMeterDisplayTime", _DE_MeterDisplayTime.GetValue() * 2, "{0}")
	/;
	AddHeaderOption("$CampfireVisualsHeaderMetersExposure")
	;/Visuals_UIEMeterHeight_OID = AddMenuOption("$CampfireVisualsSettingUIEMeterHeight", MeterHeightList[ExposureMeterHeightIndex])
	Visuals_UIEMeterColorCold_OID = AddColorOption("$CampfireVisualsSettingUIEMeterColorCold", _DE_EMColorCold_Dark.GetValueInt())
	Visuals_UIEMeterColorWarm_OID = AddColorOption("$CampfireVisualsSettingUIEMeterColorWarm", _DE_EMColorWarm_Dark.GetValueInt())
	/;
	AddHeaderOption("$CampfireVisualsHeaderMetersWetness")
	;/Visuals_UIWMeterHeight_OID = AddMenuOption("$CampfireVisualsSettingUIWMeterHeight", MeterHeightList[WetMeterHeightIndex])
	Visuals_UIWMeterColor_OID = AddColorOption("$CampfireVisualsSettingUIWMeterColor", _DE_WMColor_Dark.GetValueInt())
	/;
	AddHeaderOption("$CampfireVisualsHeaderIndicators")
	;/Visuals_UIWeathersenseIndicatorDisplay_OID = AddMenuOption("$CampfireVisualsSettingUIWSIDisplay", WeathersenseDisplayList[WeathersenseDisplayIndex])
	Visuals_UIWeathersenseIndicatorLayout_OID = AddMenuOption("$CampfireVisualsSettingUIWSILayout", WeathersenseLayoutList[WeathersenseLayoutIndex])
	Visuals_UIWeathersenseIndicatorHeight_OID = AddMenuOption("$CampfireVisualsSettingUIWSIHeight", MeterHeightList[WeathersenseHeightIndex])
	Visuals_UIWeathersenseIndicatorOpacity_OID = AddSliderOption("$CampfireVisualsSettingUIWSIOpacity", _DE_Weathersense_Opacity.GetValue(), "{0}")
	Visuals_UIWeathersenseIndicatorDisplayTime_OID = AddSliderOption("$CampfireVisualsSettingUIWSIDisplayTime", _DE_WeathersenseDisplayTime.GetValue() * 2, "{0}")
	
	if _DE_DisplayEPWidget.GetValue() == 2
		Visuals_UIEPDisplay_OID = AddToggleOption("$CampfireVisualsSettingUIEPDisplay", true)
	else
		Visuals_UIEPDisplay_OID = AddToggleOption("$CampfireVisualsSettingUIEPDisplay", false)
	endIf
	/;
	
endFunction

function PageReset_Help()																				;TRANSLATED
	
	if !TroubleshootingList
		OnConfigInit()
	endif
	
	;/if Frostfall.ShutdownState || !Frostfall.pSetting_IsRunning
		AddTextOption("$CampfireNotRunningError", "")
		return
	endif/;
	
	SetCursorFillMode(TOP_TO_BOTTOM)
	
	AddHeaderOption("$CampfireHelpHeaderTutorials")
	if _DE_Setting_Help.GetValueInt() == 2
		Help_TutorialsToggle_OID = AddToggleOption("$CampfireHelpSettingTutorialsShow", true)
	else
		Help_TutorialsToggle_OID = AddToggleOption("$CampfireHelpSettingTutorialsShow", false)
	endif
	Help_TutorialsResetText_OID = AddTextOption("", "$CampfireHelpSettingTutorialsReset")
	
	AddEmptyOption()
	
	AddHeaderOption("$CampfireHelpHeaderTroubleshooting")
	Help_TroubleshootingMenu_OID = AddMenuOption("$CampfireHelpTroubleshootingSelectProblem", TroubleshootingList[TroubleshootingIndex]) ;ZZZ
	
	AddEmptyOption()
	
	AddHeaderOption("$CampfireHelpHeaderCompatibility")
	;Help_WizardWetAndColdText_OID = AddTextOption("$CampfireHelpSettingCompatibilityWAC", "")
	;if Compatibility.isGSWLoaded
	;	Help_WizardGetSnowyText_OID = AddTextOption("$CampfireHelpSettingCompatibilityGSW", "")
	;else
	;	Help_WizardGetSnowyText_OID = AddTextOption("$CampfireHelpSettingCompatibilityGSW", "", OPTION_FLAG_DISABLED)
	;endif
	
	SetCursorPosition(1) ; Move cursor to top right position
	
	AddHeaderOption("$CampfireVisualsHeaderNotifications")
	
	;/if _DE_Setting_ConditionMsg.GetValueInt() == 2
		Visuals_SettingConditionMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingCondition", true)
	else
		Visuals_SettingConditionMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingCondition", false)
	endif
	
	if Frostfall.pSetting_MsgWeather
		Visuals_SettingWeatherMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingWeather", true)
	else
		Visuals_SettingWeatherMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingWeather", false)
	endif
	
	if _DE_Setting_WEARMsg.GetValueInt() == 2
		Visuals_SettingWEARMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingWEAR", true)
	else
		Visuals_SettingWEARMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingWEAR", false)
	endif
	
	if _DE_Setting_EPValueMsg.GetValueInt() == 2
		Visuals_SettingEPValueMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingWeathersense", true)
	else
		Visuals_SettingEPValueMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingWeathersense", false)
	endif
	/;
	;/if _DE_Setting_SystemMsg.GetValueInt() == 2
		Visuals_SettingSystemMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingSystem", true)
	else
		Visuals_SettingSystemMsgToggle_OID = AddToggleOption("$CampfireVisualsSettingSystem", false)
	endif/;
	
endFunction

function PageReset_Guide()																				;TRANSLATED
	SetCursorFillMode(TOP_TO_BOTTOM)
	AddHeaderOption("$CampfireGuideHeaderExposure")
	Guide_Topic1 = AddTextOption("$CampfireGuideExposureTopic1", "")
	Guide_Topic2 = AddTextOption("$CampfireGuideExposureTopic2", "")
	Guide_Topic3 = AddTextOption("$CampfireGuideExposureTopic3", "")
	Guide_Topic4 = AddTextOption("$CampfireGuideExposureTopic4", "")
	Guide_Topic7 = AddTextOption("$CampfireGuideExposureTopic5", "")
	Guide_Topic13 = AddTextOption("$CampfireGuideExposureTopic6", "")
	Guide_Topic8 = AddTextOption("$CampfireGuideExposureTopic7", "")
	Guide_Topic9 = AddTextOption("$CampfireGuideExposureTopic8", "")
	
	AddHeaderOption("$CampfireGuideHeaderWater")
	Guide_Topic5 = AddTextOption("$CampfireGuideWaterTopic1", "")
	Guide_Topic6 = AddTextOption("$CampfireGuideWaterTopic2", "")
	
	SetCursorPosition(1) ; Move cursor to top right position
	
	AddHeaderOption("$CampfireGuideHeaderCamping")
	Guide_Topic14 = AddTextOption("$CampfireGuideCampingTopic1", "")
	Guide_Topic15 = AddTextOption("$CampfireGuideCampingTopic2", "")
	Guide_Topic16 = AddTextOption("$CampfireGuideCampingTopic3", "")
	
	AddHeaderOption("$CampfireGuideHeaderGear")
	Guide_Topic11 = AddTextOption("$CampfireGuideGearTopic1", "")
	Guide_Topic12 = AddTextOption("$CampfireGuideGearTopic2", "")
	Guide_Topic18 = AddTextOption("$CampfireGuideGearTopic3", "")
	Guide_Topic17 = AddTextOption("$CampfireGuideGearTopic4", "")

	AddHeaderOption("$CampfireGuideHeaderExtraFeatures")
	Guide_Topic10 = AddTextOption("$CampfireGuideExtraTopic1", "")
	
endFunction

event OnPageReset(string page)																			;TRANSLATED
	if page == ""
		LoadCustomContent("frostfall/frostfall_splash.swf")
	else
		UnloadCustomContent()
	endif
	
	if page == "$CampfireOverviewPage"
		PageReset_Overview()
	elseif page == "$CampfireGameplayPage"
		PageReset_Gameplay()
	elseif page == "$CampfireVisualsPage"
		PageReset_Visuals()
	elseif page == "$CampfireHelpPage"
		PageReset_Help()
	elseif page == "$CampfireGuidePage"
		PageReset_Guide()
	endif
endEvent

event OnOptionHighlight(int option)																		;TRANSLATED
	
	;/if option == Overview_PresetApplyText_OID
		SetInfoText("$CampfireOptionHighlightPresetApply")
	elseif option == Overview_PresetMenu_OID
		SetInfoText("$CampfireOptionHighlightPresetMenu")
	
	
	elseif option == Gameplay_SettingExposureRateSlider_OID
		SetInfoText("$CampfireOptionHighlightSettingExposureRateSlider")
	elseif option == Gameplay_SettingExposureCombatText_OID
		SetInfoText("$CampfireOptionHighlightSettingExposureCombatText")
	elseif option == Gameplay_SettingExposureDialogueText_OID
		SetInfoText("$CampfireOptionHighlightSettingExposureDialogueText")
	elseif option == Gameplay_SettingExposureWaterText_OID
		SetInfoText("$CampfireOptionHighlightSettingExposureWaterText")
	elseif option == Gameplay_SettingExposureDeathText_OID	
		SetInfoText("$CampfireOptionHighlightSettingExposureDeathText")
	elseif option == Gameplay_SettingFTManageToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingFTManageToggle")
	elseif option == Gameplay_SettingFTToggleText_OID
		SetInfoText("$CampfireOptionHighlightSettingFTToggleText")
	elseif option == Gameplay_SettingFTAxeText_OID
		SetInfoText("$CampfireOptionHighlightSettingFTAxeText")
	elseif option == Gameplay_SettingCampingAxeDurabilityText_OID
		SetInfoText("$CampfireOptionHighlightSettingCampingAxeDurabilityText")
	/;
	if option == Gameplay_SettingCampingArmorTentsText_OID
		SetInfoText("$CampfireOptionHighlightSettingCampingArmorTentsText")
	elseif option == Gameplay_SettingCampingPlacementVisualizationText_OID
		SetInfoText("$CampfireOptionHighlightPlacementMode")
	elseif option == Gameplay_SettingCampingFireLightingText_OID
		SetInfoText("$CampfireOptionHighlightSettingCampingFireLightingText")
	elseif option == Gameplay_SettingCampingDynamicCampfiresText_OID
		SetInfoText("")
	;/
	elseif option == Gameplay_SettingImmersionMovementText_OID
		SetInfoText("$CampfireOptionHighlightSettingImmersionMovementText")
	elseif option == Gameplay_SettingImmersionWEARText_OID
		SetInfoText("$CampfireOptionHighlightSettingImmersionWEARText")
	elseif option == Gameplay_SettingImmersionWaitToggleText_OID
		SetInfoText("$CampfireOptionHighlightSettingImmersionWaitToggleText")
	elseif option == Gameplay_SettingVampirismText_OID
		SetInfoText("$CampfireOptionHighlightSettingVampirismText")
	elseif option == Gameplay_SettingRescueChanceAloneSlider_OID
		SetInfoText("$CampfireOptionHighlightSettingRAloneText")
	elseif option == Gameplay_SettingRescueChanceFollowersSlider_OID
		SetInfoText("$CampfireOptionHighlightSettingRFollowerText")

	elseif option == Visuals_SettingFrostShaderToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingFrostShaderToggle")
	elseif option == Visuals_SettingWetShaderToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingWetShaderToggle")
	elseif option == Visuals_SettingFullScreenEffectsToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingFullScreenEffectsToggle")
	/;
	elseif option == Visuals_SettingWoodCinematicToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingWoodCinematicToggle")
	;/
	elseif option == Visuals_SettingSoundEffectsToggle_OID
		SetInfoText("$CampfireOptionHighlightSoundEffects")
	elseif option == Visuals_SettingForceFeedbackToggle_OID
		SetInfoText("$CampfireOptionHighlightForceFeedback")
	elseif option == Visuals_SettingAnimationToggle_OID
		SetInfoText("$CampfireOptionHighlightAnimation")
	elseif option == Visuals_HotkeyWeathersense_OID
		SetInfoText("$CampfireOptionHighlightHKWeathersense")
	/;
	elseif option == Visuals_HotkeySurvivalSkills_OID
		SetInfoText("$CampfireOptionHighlightHKSurvivalSkills")
	
	;/
	elseif option == Visuals_SettingConditionMsgToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingConditionMsgToggle")
	elseif option == Visuals_SettingWeatherMsgToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingWeaterMsgToggle")
	elseif option == Visuals_SettingWEARMsgToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingWEARMsgToggle")
	elseif option == Visuals_SettingEPValueMsgToggle_OID
		SetInfoText("$CampfireOptionHighlightSettingEPValueMsgToggle")
	/;
	elseif option == Visuals_SettingSystemMsgToggle_OID
		SetInfoText("$CampfireOptionHighlightSystem")
	;/
	elseif option == Visuals_UIMeterDisplay_OID
		SetInfoText("$CampfireOptionHightlightUIMeterDisplay")	;"Off: Meters will not display. Always On: Meters will always display.\nContextual: Meters will display when changing states, and stay on when Freezing, Freezing to Death, Wet, or Drenched.")
	elseif option == Visuals_UIMeterLayout_OID
		SetInfoText("$CampfireOptionHightlightUIMeterLayout")	;"Select where the Exposure and Wetness meters should appear on the screen.\nSplit: Places the Wetness meter on the left and Exposure meter on the right.\nGrouped: Stacks the meters on top of each other with the Exposure meter on top.")
	elseif option == Visuals_UIMeterLength_OID
		SetInfoText("$CampfireOptionHightlightUIMeterLength")	;"Select the length of the meters.")
	elseif option == Visuals_UIMeterOpacity_OID
		SetInfoText("$CampfireOptionHightlightUIMeterOpacity")	;"Select the maximum opacity of the meters.\n100 = fully visible. 0 = fully transparent.")
	elseif option == Visuals_UIEMeterHeight_OID
		SetInfoText("$CampfireOptionHightlightUIEMeterHeight")	;"Select the height (thickness) of the Exposure meter.")
	elseif option == Visuals_UIEMeterColorCold_OID
		SetInfoText("$CampfireOptionHightlightUIEMeterColorCold")	;"Select the color of the Exposure meter when cold (-100 to 0).")
	elseif option == Visuals_UIEMeterColorWarm_OID
		SetInfoText("$CampfireOptionHightlightUIEMeterColorWarm")	;"Select the color of the Exposure meter when warm (0 to +20).")
	elseif option == Visuals_UIWMeterHeight_OID
		SetInfoText("$CampfireOptionHightlightUIWMeterHeight")	;"Select the height (thickness) of the Wetness meter.")
	elseif option == Visuals_UIWMeterColor_OID
		SetInfoText("$CampfireOptionHightlightUIWMeterColor")	;"Select the color of the Wetness meter.")
	elseif option == Visuals_UIWeathersenseIndicatorDisplay_OID
		SetInfoText("$CampfireOptionHightlightUIWSIDisplay")	;"Off: Indicator will not display. Always On: Indicator will always display.\nContextual: Indicator will display when the ambient temperature changes.")
	elseif option == Visuals_UIWeathersenseIndicatorLayout_OID
		SetInfoText("$CampfireOptionHightlightUIWSILayout")	;"Select where the Weathersense Indicator should appear on the screen.")
	elseif option == Visuals_UIWeathersenseIndicatorHeight_OID
		SetInfoText("$CampfireOptionHightlightUIWSIHeight")	;"Select the height (thickness) of the Weathersense Indicator.")
	elseif option == Visuals_UIWeathersenseIndicatorOpacity_OID
		SetInfoText("$CampfireOptionHightlightUIWSIOpacity")	;"Select the maximum opacity of the Weathersense Indicator.\n100 = fully visible. 0 = fully transparent.")
	elseif option == Visuals_UIEPDisplay_OID
		SetInfoText("$CampfireOptionHightlightUIEPDisplay")	;"Whether or not your total Exposure Protection should be displayed at the bottom of the Inventory menu.")
	elseif option == Visuals_UIMeterDisplayTime_OID
		SetInfoText("$CampfireOptionHightlightUIMeterDisplayTime")	;"How long (in seconds) meters should display when the display mode is Contextual under most circumstances, or when the Weathersense power/hotkey is used (if set to display).")
	elseif option == Visuals_UIWeathersenseIndicatorDisplayTime_OID
		SetInfoText("$CampfireOptionHightlightUIWSIDisplayTime")	;"How long (in seconds) the Weathersense Indicator should display when the display mode is Contextual under most circumstances, or when the Weathersense power/hotkey is used (if set to display).")
	elseif option == Visuals_WeathersensePowerMode_OID
		SetInfoText("$CampfireOptionHightlightUIWSPowerMode")	;"Choose what will be displayed when the Weathersense power or hotkey is used.")
	/;
	endif
	
endEvent

event OnOptionSelect(int option)																		;TRANSLATED

	;#Region Overview Page
	;/if option == Overview_RunStatusText_OID
		if !Frostfall.ShutdownState 
			if Frostfall.pSetting_IsRunning
				bool bChoice = ShowMessage("$CampfireOverviewShutDownPrompt")
				if bChoice
					ShutdownProcedure()
					ForcePageReset()
				endif
			else
				bool bChoice = ShowMessage("$CampfireOverviewStartUpPrompt")
				if bChoice
					SetTextOptionValue(Overview_RunStatusSubText_OID, "$CampfireGeneralExitMenuPrompt")
					StartFrostfall.SetValue(1)
				endif
			endif
		else
			if Frostfall.pSetting_IsRunning
				bool bChoice = ShowMessage("$CampfireOverviewStartUpPrompt")
				if bChoice
					StartupProcedure()
					ForcePageReset()
				endif
			endif
		endif
	elseif option == Overview_PresetApplyText_OID
		;int i = _DE_SkyUI_PresetConfirm.Show()
		;if `i == 0
			;Apply settings
			if PresetIndex == 0		;Hardcore
				Frostfall.pSetting_ExposureRate = 1.0											;Exposure Rate: 1.0x
				Frostfall.pSetting_FastTravelDisable = true
				_DE_Setting_FastTravel.SetValue(1)												;Fast Travel Requirement: On
				_DE_Setting_Lighting.SetValue(2)												;Manual Fire Kit lighting on
				_DE_Setting_Tent.SetValue(2)													;Tent Durability: On
				_DE_Setting_Water.SetValue(2)													;Water Lethality: On
				FrostfallArmor.pSetting_Armor = true											;W.E.A.R. Enabled
				Frostfall.pSetting_NoWait = false												;Exterior Waiting Off
				Frostfall.pSetting_PlayerDeath = true
				SetTextOptionValue(Overview_PresetApplyText_OID, "$CampfireGeneralExitMenuPrompt")
				FrostfallArmor.WEAREnabledArray()												;Set up W.E.A.R. values
			elseif PresetIndex == 1	;Classic
				FrostfallArmor.pSetting_Armor = false											;W.E.A.R. Disabled
				Frostfall.pSetting_ExposureRate = 1.0											;Exposure Rate: 1.0x
				Frostfall.pSetting_FastTravelDisable = false
				Frostfall.pSetting_NoWait = false
				_DE_Setting_Lighting.SetValue(1)												;Manual Fire Kit lighting Off
				_DE_Setting_FastTravel.SetValue(2)												;Fast Travel Requirement: On
				_DE_Setting_Tent.SetValue(2)													;Tent Durability: On
				_DE_Setting_Water.SetValue(2)													;Water Lethality: On
				Frostfall.pSetting_PlayerDeath = true
				FrostfallArmor.WEARDisabled()													;Ensure proper exposure protection values
			elseif PresetIndex == 2	;Lite
				FrostfallArmor.pSetting_Armor = false											;W.E.A.R. Disabled
				Frostfall.pSetting_ExposureRate = 0.8											;Exposure Rate: 0.8x
				Frostfall.pSetting_FastTravelDisable = false
				Frostfall.pSetting_NoWait = false
				_DE_Setting_Lighting.SetValue(1)												;Manual Fire Kit lighting Off
				_DE_Setting_FastTravel.SetValue(1)												;Fast Travel Requirement: Off
				_DE_Setting_Tent.SetValue(1)													;Tent Durability: Off
				_DE_Setting_Water.SetValue(1)													;Water Lethality: Off
				Frostfall.pSetting_PlayerDeath = false
				FrostfallArmor.WEARDisabled()													;Ensure proper exposure protection values
			endif
		;endif
		ForcePageReset()
	endif/;
	;#EndRegion
	
	;#Region Gameplay Page
	;/if option == Gameplay_SettingExposureCombatText_OID
		if Frostfall.pSetting_CombatDisable
			Frostfall.pSetting_CombatDisable = false
			SetToggleOptionValue(Gameplay_SettingExposureCombatText_OID, false)
		else
			Frostfall.pSetting_CombatDisable = true
			SetToggleOptionValue(Gameplay_SettingExposureCombatText_OID, true)
		endif
	elseif option == Gameplay_SettingExposureDialogueText_OID
		if _DE_Setting_DialogueStop.GetValueInt() == 2
			_DE_Setting_DialogueStop.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingExposureDialogueText_OID, false)
		else
			_DE_Setting_DialogueStop.SetValue(2)
			SetToggleOptionValue(Gameplay_SettingExposureDialogueText_OID, true)
		endif
	elseif option == Gameplay_SettingExposureWaterText_OID
		if _DE_Setting_Water.GetValueInt() == 2
			_DE_Setting_Water.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingExposureWaterText_OID, false)
		else
			_DE_Setting_Water.SetValue(2)
			SetToggleOptionValue(Gameplay_SettingExposureWaterText_OID, true)
		endif
	elseif option == Gameplay_SettingExposureDeathText_OID
		if Frostfall.pSetting_PlayerDeath
			Frostfall.pSetting_PlayerDeath = false
			SetToggleOptionValue(Gameplay_SettingExposureDeathText_OID, false)
		else
			Frostfall.pSetting_PlayerDeath = true
			SetToggleOptionValue(Gameplay_SettingExposureDeathText_OID, true)
		endif
	elseif option == Gameplay_SettingFTManageToggle_OID
		if Frostfall.pSetting_FastTravelProcessing
			Frostfall.pSetting_FastTravelProcessing = false
			Frostfall.pSetting_FastTravelDisable = false
			_DE_Setting_FastTravel.SetValue(1)
			Game.EnableFastTravel()
			SetToggleOptionValue(Gameplay_SettingFTManageToggle_OID, false)
			SetToggleOptionValue(Gameplay_SettingFTToggleText_OID, true)
			SetToggleOptionValue(Gameplay_SettingFTAxeText_OID, false)
			SetOptionFlags(Gameplay_SettingFTToggleText_OID, OPTION_FLAG_DISABLED)
			SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_DISABLED)
		else
			Frostfall.pSetting_FastTravelProcessing = true
			SetToggleOptionValue(Gameplay_SettingFTManageToggle_OID, true)
			SetOptionFlags(Gameplay_SettingFTToggleText_OID, OPTION_FLAG_NONE)
			if Frostfall.pSetting_FastTravelDisable
				SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_DISABLED)
			else
				SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_NONE)
			endif
		endif
	elseif option == Gameplay_SettingFTToggleText_OID
		if Frostfall.pSetting_FastTravelDisable
			Frostfall.pSetting_FastTravelDisable = false
			SetToggleOptionValue(Gameplay_SettingFTToggleText_OID, true)
			SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_NONE)
		else
			Frostfall.pSetting_FastTravelDisable = true
			SetToggleOptionValue(Gameplay_SettingFTToggleText_OID, false)
			SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_DISABLED)
		endif
	elseif option == Gameplay_SettingFTAxeText_OID
		if _DE_Setting_FastTravel.GetValueInt() == 1
			_DE_Setting_FastTravel.SetValue(2)
			SetToggleOptionValue(Gameplay_SettingFTAxeText_OID, true)
		else
			_DE_Setting_FastTravel.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingFTAxeText_OID, false)
		endif
	elseif option == Gameplay_SettingCampingAxeDurabilityText_OID
		if _DE_Setting_Tent.GetValueInt() == 1
			_DE_Setting_Tent.SetValue(2)
			SetToggleOptionValue(Gameplay_SettingCampingAxeDurabilityText_OID, true)
		else
			_DE_Setting_Tent.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingCampingAxeDurabilityText_OID, false)
		endif
	/;
	if option == Gameplay_SettingCampingArmorTentsText_OID
		if _DE_Setting_CampingArmorTakeOff.GetValueInt() == 2
			_DE_Setting_CampingArmorTakeOff.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingCampingArmorTentsText_OID, false)
		else
			_DE_Setting_CampingArmorTakeOff.SetValue(2)
			SetToggleOptionValue(Gameplay_SettingCampingArmorTentsText_OID, true)
		endif
	elseif option == Gameplay_SettingCampingPlacementVisualizationText_OID
		if _DE_Setting_SimplePlacement.GetValueInt() == 2
			_DE_Setting_SimplePlacement.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingCampingPlacementVisualizationText_OID, true)
		else
			_DE_Setting_SimplePlacement.SetValue(2)
			SetToggleOptionValue(Gameplay_SettingCampingPlacementVisualizationText_OID, false)
		endif
	elseif option == Gameplay_SettingCampingFireLightingText_OID
		if _DE_Setting_Lighting.GetValueInt() == 1
			_DE_Setting_Lighting.SetValue(2)
			SetTextOptionValue(Gameplay_SettingCampingFireLightingText_OID, "$CampfireManual")
		else
			_DE_Setting_Lighting.SetValue(1)
			SetTextOptionValue(Gameplay_SettingCampingFireLightingText_OID, "$CampfireAutomatic")
		endif
	;/
	elseif option == Gameplay_SettingImmersionWEARText_OID
		if FrostfallArmor.pSetting_Armor
			FrostfallArmor.pSetting_Armor = false
			SetToggleOptionValue(Gameplay_SettingImmersionWEARText_OID, false)
			SetOptionFlags(Gameplay_SettingImmersionWEARText_DefaultAll_OID, OPTION_FLAG_DISABLED)
			FrostfallArmor.WEARDisabled()
		else
			bool bChoice = ShowMessage("$CampfireGeneralExitMenuPromptLong", true)
			if bChoice
				FrostfallArmor.pSetting_Armor = true
				SetToggleOptionValue(Gameplay_SettingImmersionWEARText_OID, true)
				FrostfallArmor.WEAREnabledArray()
			endif
		endif
	elseif option == Gameplay_SettingImmersionWEARText_DefaultAll_OID
		if FrostfallArmor.pSetting_Armor
			bool bChoice = ShowMessage("$CampfireOptionsWEARResetConfirm", true)
			if bChoice
				bool bChoice2 = ShowMessage("$CampfireGeneralExitMenuPromptLong", true)
				if bChoice2
					FrostfallArmor.WEAREnabledArray()
				endif
			endif
		endif	
	elseif option == Gameplay_SettingImmersionMovementText_OID
		if _DE_Setting_MovementPenalty.GetValueInt() == 2
			_DE_Setting_MovementPenalty.SetValue(1.0)
			SetToggleOptionValue(Gameplay_SettingImmersionMovementText_OID, false)
		else
			_DE_Setting_MovementPenalty.SetValue(2.0)
			SetToggleOptionValue(Gameplay_SettingImmersionMovementText_OID, true)
		endif
	elseif option == Gameplay_SettingImmersionWaitToggleText_OID
		if Frostfall.pSetting_NoWait
			Frostfall.pSetting_NoWait = false
			SetToggleOptionValue(Gameplay_SettingImmersionWaitToggleText_OID, true)
			SetOptionFlags(Gameplay_SettingFTManageToggle_OID, OPTION_FLAG_NONE)
		else
			Frostfall.pSetting_NoWait = true
			SetToggleOptionValue(Gameplay_SettingImmersionWaitToggleText_OID, false)
			Game.EnableFastTravel()
			Frostfall.pSetting_FastTravelProcessing = false
			Frostfall.pSetting_FastTravelDisable = true
			_DE_Setting_FastTravel.SetValue(1)
			SetToggleOptionValue(Gameplay_SettingFTManageToggle_OID, false)
			SetToggleOptionValue(Gameplay_SettingFTToggleText_OID, false)
			SetToggleOptionValue(Gameplay_SettingFTAxeText_OID, false)
			SetOptionFlags(Gameplay_SettingFTManageToggle_OID, OPTION_FLAG_DISABLED)
			SetOptionFlags(Gameplay_SettingFTToggleText_OID, OPTION_FLAG_DISABLED)
			SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_DISABLED)
		endif
	elseif option == Gameplay_SettingVampirismText_OID
		if Frostfall.pSetting_VampireImmunity
			Frostfall.pSetting_VampireImmunity = false
			SetToggleOptionValue(Gameplay_SettingVampirismText_OID, false)
		else
			Frostfall.pSetting_VampireImmunity = true
			SetToggleOptionValue(Gameplay_SettingVampirismText_OID, true)
		endif
	/;
	endif
	
	;#EndRegion
	
	;#Region Visuals Page
	;/if option == Visuals_SettingFrostShaderToggle_OID
		if Frostfall.pSetting_EffectFrostShader
			Frostfall.pSetting_EffectFrostShader = false
			SetToggleOptionValue(Visuals_SettingFrostShaderToggle_OID, false)
		else
			Frostfall.pSetting_EffectFrostShader = true
			SetToggleOptionValue(Visuals_SettingFrostShaderToggle_OID, true)
		endif
	elseif option == Visuals_SettingWetShaderToggle_OID
		if Frostfall.pSetting_EffectWetShader
			Frostfall.pSetting_EffectWetShader = false
			SetToggleOptionValue(Visuals_SettingWetShaderToggle_OID, false)
		else
			Frostfall.pSetting_EffectWetShader = true
			SetToggleOptionValue(Visuals_SettingWetShaderToggle_OID, true)
		endif
	elseif option == Visuals_SettingFullScreenEffectsToggle_OID
		if Frostfall.pSetting_FullScreenEffects
			Frostfall.pSetting_FullScreenEffects = false
			SetToggleOptionValue(Visuals_SettingFullScreenEffectsToggle_OID, false)
		else
			Frostfall.pSetting_FullScreenEffects = true
			SetToggleOptionValue(Visuals_SettingFullScreenEffectsToggle_OID, true)
		endif
	elseif option == Visuals_SettingWoodCinematicToggle_OID
		if _DE_Setting_WoodCinematic.GetValueInt() == 2
			_DE_Setting_WoodCinematic.SetValue(1)
			SetToggleOptionValue(Visuals_SettingWoodCinematicToggle_OID, false)
		else
			_DE_Setting_WoodCinematic.SetValue(2)
			SetToggleOptionValue(Visuals_SettingWoodCinematicToggle_OID, true)
		endif
	elseif option == Visuals_SettingSoundEffectsToggle_OID
		if _DE_Setting_SoundEffects.GetValueInt() == 2
			_DE_Setting_SoundEffects.SetValue(1)
			SetToggleOptionValue(Visuals_SettingSoundEffectsToggle_OID, false)
		else
			_DE_Setting_SoundEffects.SetValue(2)
			SetToggleOptionValue(Visuals_SettingSoundEffectsToggle_OID, true)
		endif
	elseif option == Visuals_SettingForceFeedbackToggle_OID
		if _DE_Setting_ForceFeedback.GetValueInt() == 2
			_DE_Setting_ForceFeedback.SetValue(1)
			SetToggleOptionValue(Visuals_SettingForceFeedbackToggle_OID, false)
		else
			_DE_Setting_ForceFeedback.SetValue(2)
			SetToggleOptionValue(Visuals_SettingForceFeedbackToggle_OID, true)
		endif
	elseif option == Visuals_SettingAnimationToggle_OID
		if _DE_Setting_Animation.GetValueInt() == 2
			_DE_Setting_Animation.SetValue(1)
			SetToggleOptionValue(Visuals_SettingAnimationToggle_OID, false)
		else
			_DE_Setting_Animation.SetValue(2)
			SetToggleOptionValue(Visuals_SettingAnimationToggle_OID, true)
		endif
	endif
	/;
	;#EndRegion
	
	;#Region Help Page
	if option == Help_TutorialsToggle_OID
		if _DE_Setting_Help.GetValueInt() == 2
			_DE_Setting_Help.SetValue(1)
			SetToggleOptionValue(Help_TutorialsToggle_OID, false)
		else
			_DE_Setting_Help.SetValue(2)
			SetToggleOptionValue(Help_TutorialsToggle_OID, true)
		endif
	elseif option == Help_TutorialsResetText_OID
		bool bChoice = ShowMessage("$CampfireTutorialResetPrompt")
		if bChoice
			;_DE_HelpDone_ExposurePoints.SetValue(1)
			;_DE_HelpDone_Vampirism.SetValue(1)
			;_DE_HelpDone_Wet.SetValue(1)
			_DE_HelpDone_Visualize.SetValue(1)
			_DE_HelpDone_PlacementError.SetValue(1)
			_DE_HelpDone_Tents.SetValue(1)
		endif
	;/elseif option == Help_WizardWetAndColdText_OID
		ShowMessage("$CampfireHelpCompatibilityWACDescription", false)
	elseif option == Visuals_SettingConditionMsgToggle_OID
		if _DE_Setting_ConditionMsg.GetValueInt() == 2
			_DE_Setting_ConditionMsg.SetValue(1)
			SetToggleOptionValue(Visuals_SettingConditionMsgToggle_OID, false)
		else
			_DE_Setting_ConditionMsg.SetValue(2)
			SetToggleOptionValue(Visuals_SettingConditionMsgToggle_OID, true)
		endif
	elseif option == Visuals_SettingWeatherMsgToggle_OID
		if Frostfall.pSetting_MsgWeather
			Frostfall.pSetting_MsgWeather = false
			SetToggleOptionValue(Visuals_SettingWeatherMsgToggle_OID, false)
		else
			Frostfall.pSetting_MsgWeather = true
			SetToggleOptionValue(Visuals_SettingWeatherMsgToggle_OID, true)
		endif
	elseif option == Visuals_SettingWEARMsgToggle_OID
		if _DE_Setting_WEARMsg.GetValueInt() == 2
			_DE_Setting_WEARMsg.SetValue(1)
			SetToggleOptionValue(Visuals_SettingWEARMsgToggle_OID, false)
		else
			_DE_Setting_WEARMsg.SetValue(2)
			SetToggleOptionValue(Visuals_SettingWEARMsgToggle_OID, true)
		endif
	elseif option == Visuals_SettingEPValueMsgToggle_OID
		if _DE_Setting_EPValueMsg.GetValueInt() == 2
			_DE_Setting_EPValueMsg.SetValue(1)
			SetToggleOptionValue(Visuals_SettingEPValueMsgToggle_OID, false)
		else
			_DE_Setting_EPValueMsg.SetValue(2)
			SetToggleOptionValue(Visuals_SettingEPValueMsgToggle_OID, true)
		endif
	/;
	;/elseif option == Visuals_SettingSystemMsgToggle_OID
		if _DE_Setting_SystemMsg.GetValueInt() == 2
			_DE_Setting_SystemMsg.SetValue(1)
			SetToggleOptionValue(Visuals_SettingSystemMsgToggle_OID, false)
		else
			_DE_Setting_SystemMsg.SetValue(2)
			SetToggleOptionValue(Visuals_SettingSystemMsgToggle_OID, true)
		endif
	/;
	;/
	elseif option == Visuals_UIEPDisplay_OID
		if _DE_DisplayEPWidget.GetValueInt() == 2
			_DE_DisplayEPWidget.SetValue(1)
			SetToggleOptionValue(Visuals_UIEPDisplay_OID, false)
		else
			_DE_DisplayEPWidget.SetValue(2)
			SetToggleOptionValue(Visuals_UIEPDisplay_OID, true)
		endIf
	/;
	endif
	;#EndRegion
	
	;#Region Guide Page
	if option == Guide_Topic1
		ShowGuideTopic1()
	elseif option == Guide_Topic2
		ShowGuideTopic2()
	elseif option == Guide_Topic3
		ShowGuideTopic3()
	elseif option == Guide_Topic4
		ShowGuideTopic4()
	elseif option == Guide_Topic5
		ShowGuideTopic5()
	elseif option == Guide_Topic6
		ShowGuideTopic6()
	elseif option == Guide_Topic7
		ShowGuideTopic7()
	elseif option == Guide_Topic8
		ShowGuideTopic8()
	elseif option == Guide_Topic9
		ShowGuideTopic9()
	elseif option == Guide_Topic10
		ShowGuideTopic10()
	elseif option == Guide_Topic11
		ShowGuideTopic11()
	elseif option == Guide_Topic12
		ShowGuideTopic12()
	elseif option == Guide_Topic13
		ShowGuideTopic13()
	elseif option == Guide_Topic14
		ShowGuideTopic14()
	elseif option == Guide_Topic15
		ShowGuideTopic15()
	elseif option == Guide_Topic16
		ShowGuideTopic16()
	elseif option == Guide_Topic17
		ShowGuideTopic17()
	elseif option == Guide_Topic18
		ShowGuideTopic18()
	endif
	;#EndRegion
endEvent

event OnOptionDefault(int option)																		;TRANSLATED
	;#Region Gameplay Page
	;/
	if option == Gameplay_SettingExposureRateSlider_OID
		Frostfall.pSetting_ExposureRate = 1.0
		SetSliderOptionValue(Gameplay_SettingExposureRateSlider_OID, 1.0, "{1}x")
	elseif option == Gameplay_SettingExposureCombatText_OID
		Frostfall.pSetting_CombatDisable = true
		SetToggleOptionValue(Gameplay_SettingExposureCombatText_OID, true)
	elseif option == Gameplay_SettingExposureDialogueText_OID
		_DE_Setting_DialogueStop.SetValue(2)
		SetToggleOptionValue(Gameplay_SettingExposureDialogueText_OID, true)
	elseif option == Gameplay_SettingExposureWaterText_OID
		_DE_Setting_Water.SetValue(2)
		SetToggleOptionValue(Gameplay_SettingExposureWaterText_OID, true)
	elseif option == Gameplay_SettingExposureDeathText_OID
		Frostfall.pSetting_PlayerDeath = true
		SetToggleOptionValue(Gameplay_SettingExposureDeathText_OID, true)
	elseif option == Gameplay_SettingFTManageToggle_OID
		Frostfall.pSetting_FastTravelProcessing = true
		SetToggleOptionValue(Gameplay_SettingFTManageToggle_OID, true)
		SetOptionFlags(Gameplay_SettingFTToggleText_OID, OPTION_FLAG_NONE)
		if Frostfall.pSetting_FastTravelDisable
			SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_DISABLED)
		else
			SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_NONE)
		endif
	elseif option == Gameplay_SettingFTToggleText_OID
		Frostfall.pSetting_FastTravelDisable = false
		SetToggleOptionValue(Gameplay_SettingFTToggleText_OID, true)
		SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_NONE)
	elseif option == Gameplay_SettingFTAxeText_OID
		_DE_Setting_FastTravel.SetValue(2)
		SetToggleOptionValue(Gameplay_SettingFTAxeText_OID, true)
	elseif option == Gameplay_SettingCampingAxeDurabilityText_OID
		_DE_Setting_Tent.SetValue(2)
		SetToggleOptionValue(Gameplay_SettingCampingAxeDurabilityText_OID, true)
	/;
	if option == Gameplay_SettingCampingArmorTentsText_OID
		_DE_Setting_CampingArmorTakeOff.SetValue(2)
		SetToggleOptionValue(Gameplay_SettingCampingArmorTentsText_OID, true)
	elseif option == Gameplay_SettingCampingFireLightingText_OID
		_DE_Setting_Lighting.SetValue(1)
		SetTextOptionValue(Gameplay_SettingCampingFireLightingText_OID, "$CampfireAutomatic")
	;/
	elseif option == Gameplay_SettingImmersionWEARText_OID
		FrostfallArmor.pSetting_Armor = false
		SetToggleOptionValue(Gameplay_SettingImmersionWEARText_OID, false)
		FrostfallArmor.WEARDisabled()
	elseif option == Gameplay_SettingImmersionMovementText_OID
		_DE_Setting_MovementPenalty.SetValue(2.0)
		SetToggleOptionValue(Gameplay_SettingImmersionMovementText_OID, true)
	elseif option == Gameplay_SettingImmersionWaitToggleText_OID
		Frostfall.pSetting_NoWait = false
		SetToggleOptionValue(Gameplay_SettingImmersionWaitToggleText_OID, true)
		SetOptionFlags(Gameplay_SettingFTManageToggle_OID, OPTION_FLAG_NONE)
		SetOptionFlags(Gameplay_SettingFTToggleText_OID, OPTION_FLAG_DISABLED)
		SetOptionFlags(Gameplay_SettingFTAxeText_OID, OPTION_FLAG_DISABLED)
	elseif option == Gameplay_SettingVampirismText_OID
		Frostfall.pSetting_VampireImmunity = true
		SetToggleOptionValue(Gameplay_SettingVampirismText_OID, true)	
	elseif option == Gameplay_SettingRescueChanceAloneSlider_OID
		_DE_RescueChanceAlone.SetValue(1.0)
		SetSliderOptionValue(Gameplay_SettingRescueChanceAloneSlider_OID, _DE_RescueChanceAlone.GetValue() * 100, "{0}%")
	elseif option == Gameplay_SettingRescueChanceFollowersSlider_OID
		_DE_RescueChanceFollower.SetValue(1.0)
		SetSliderOptionValue(Gameplay_SettingRescueChanceFollowersSlider_OID, _DE_RescueChanceFollower.GetValue() * 100, "{0}%")
	/;
	endif
	;#EndRegion
	
	;#Region Visuals Page
	;/if option == Visuals_SettingFrostShaderToggle_OID
		Frostfall.pSetting_EffectFrostShader = true
		SetToggleOptionValue(Visuals_SettingFrostShaderToggle_OID, true)
	elseif option == Visuals_SettingWetShaderToggle_OID
		Frostfall.pSetting_EffectWetShader = true
		SetToggleOptionValue(Visuals_SettingWetShaderToggle_OID, true)
	elseif option == Visuals_SettingFullScreenEffectsToggle_OID
		Frostfall.pSetting_FullScreenEffects = true
		SetToggleOptionValue(Visuals_SettingFullScreenEffectsToggle_OID, true)
	elseif option == Visuals_SettingWoodCinematicToggle_OID
		_DE_Setting_WoodCinematic.SetValue(2)
		SetToggleOptionValue(Visuals_SettingWoodCinematicToggle_OID, true)
	elseif option == Visuals_SettingConditionMsgToggle_OID
		_DE_Setting_ConditionMsg.SetValue(2)
		SetToggleOptionValue(Visuals_SettingConditionMsgToggle_OID, true)
	elseif option == Visuals_SettingWeatherMsgToggle_OID
		Frostfall.pSetting_MsgWeather = true
		SetToggleOptionValue(Visuals_SettingWeatherMsgToggle_OID, true)
	elseif option == Visuals_SettingWEARMsgToggle_OID
		_DE_Setting_WEARMsg.SetValue(2)
		SetToggleOptionValue(Visuals_SettingWEARMsgToggle_OID, true)
	elseif option == Visuals_SettingEPValueMsgToggle_OID
		_DE_Setting_EPValueMsg.SetValue(2)
		SetToggleOptionValue(Visuals_SettingEPValueMsgToggle_OID, true)
	elseif option == Visuals_HotkeyWeathersense_OID
		UnregisterForKey(_DE_HotkeyWeathersense.GetValueInt())
		_DE_HotkeyWeathersense.SetValue(0)
		ForcePageReset()
	/;
	if option == Visuals_HotkeySurvivalSkills_OID
		UnregisterForKey(_DE_HotkeySurvivalSkills.GetValueInt())
		_DE_HotkeySurvivalSkills.SetValue(0)
		ForcePageReset()
		Game.GetPlayer().AddSpell(_DE_SurvivalSkillsCombo_Spell, false)
	;/
	elseif option == Visuals_UIMeterLayout_OID
		ChooseMeterPositions(0)
		MeterLayoutIndex = 0
		SetMenuOptionValue(Visuals_UIMeterLayout_OID, MeterLayoutList[MeterLayoutIndex])
	elseif option == Visuals_UIMeterDisplay_OID
		_DE_ExposureMeterDisplay_Contextual.SetValue(2)
		MeterDisplayIndex = 2
		SetMenuOptionValue(Visuals_UIMeterDisplay_OID, MeterDisplayList[MeterDisplayIndex])
	elseif option == Visuals_UIMeterLength_OID
		_DE_MeterLength.SetValue(1)
		MeterLengthIndex = 0
		ChooseMeterPositions(MeterLayoutIndex)
		SetMenuOptionValue(Visuals_UIMeterLength_OID, MeterLengthList[MeterLengthIndex])
	elseif option == Visuals_UIMeterOpacity_OID
		_DE_ExposureMeter_Opacity.SetValue(100.0)
		SetSliderOptionValue(Visuals_UIMeterOpacity_OID, _DE_ExposureMeter_Opacity.GetValue(), "{0}")
	elseif option == Visuals_UIEMeterHeight_OID
		_DE_ExposureMeterHeight.SetValue(1)
		ExposureMeterHeightIndex = 0
		ChooseMeterPositions(MeterLayoutIndex)
		SetMenuOptionValue(Visuals_UIEMeterHeight_OID, MeterHeightList[ExposureMeterHeightIndex])
	elseif option == Visuals_UIEMeterColorCold_OID
		_DE_EMColorCold_Light.SetValueInt(0xD7EEFF)
		_DE_EMColorCold_Dark.SetValueInt(0x93D0FF)
		SetColorOptionValue(Visuals_UIEMeterColorCold_OID, _DE_EMColorCold_Dark.GetValueInt())
	elseif option == Visuals_UIEMeterColorWarm_OID
		_DE_EMColorWarm_Light.SetValueInt(0xFFFF33)
		_DE_EMColorWarm_Dark.SetValueInt(0xCC0000)
		SetColorOptionValue(Visuals_UIEMeterColorWarm_OID, _DE_EMColorWarm_Dark.GetValueInt())
	elseif option == Visuals_UIWMeterHeight_OID
		_DE_WetMeterHeight.SetValue(1)
		WetMeterHeightIndex = 0
		ChooseMeterPositions(MeterLayoutIndex)
		SetMenuOptionValue(Visuals_UIWMeterHeight_OID, MeterHeightList[WetMeterHeightIndex])
	elseif option == Visuals_UIWMeterColor_OID
		_DE_WMColor_Light.SetValueInt(0x82ABFF)
		_DE_WMColor_Dark.SetValueInt(0x2469F4)
		SetColorOptionValue(Visuals_UIWMeterColor_OID, _DE_WMColor_Dark.GetValueInt())
	elseif option == Visuals_UIEPDisplay_OID
		_DE_DisplayEPWidget.SetValue(2)
		SetToggleOptionValue(Visuals_UIEPDisplay_OID, true)
	elseif option == Visuals_UIWeathersenseIndicatorDisplay_OID
		_DE_WeathersenseDisplay_Contextual.SetValue(2)
		WeathersenseDisplayIndex = 2
		SetMenuOptionValue(Visuals_UIWeathersenseIndicatorDisplay_OID, WeathersenseDisplayList[WeathersenseDisplayIndex])
	elseif option == Visuals_UIWeathersenseIndicatorLayout_OID
		SetWeathersensePosition(2)
		WeathersenseLayoutIndex = 2
		SetMenuOptionValue(Visuals_UIWeathersenseIndicatorLayout_OID, WeathersenseLayoutList[WeathersenseLayoutIndex])
	elseif option == Visuals_UIWeathersenseIndicatorHeight_OID
		_DE_WeathersenseHeight.SetValue(1)
		WeathersenseHeightIndex = 0
		SetWeathersensePosition(WeathersenseLayoutIndex)
		SetMenuOptionValue(Visuals_UIWeathersenseIndicatorHeight_OID, MeterHeightList[WeathersenseHeightIndex])
	elseif option == Visuals_UIWeathersenseIndicatorOpacity_OID
		_DE_Weathersense_Opacity.SetValue(100.0)
		SetSliderOptionValue(Visuals_UIWeathersenseIndicatorOpacity_OID, _DE_Weathersense_Opacity.GetValue(), "{0}")
	elseif option == Visuals_UIMeterDisplayTime_OID
		_DE_MeterDisplayTime.SetValue(4.0)
		SetSliderOptionValue(Visuals_UIMeterDisplayTime_OID, _DE_MeterDisplayTime.GetValue() * 2, "{0}")
	elseif option == Visuals_UIWeathersenseIndicatorDisplayTime_OID
		_DE_MeterDisplayTime.SetValue(5.0)
		SetSliderOptionValue(Visuals_UIWeathersenseIndicatorDisplayTime_OID, _DE_WeathersenseDisplayTime.GetValue() * 2, "{0}")
	elseif option == Visuals_WeathersensePowerMode_OID
		_DE_WeathersensePowerMode.SetValue(0)
		WeathersensePowerModeIndex = 0
		SetMenuOptionValue(Visuals_WeathersensePowerMode_OID, WeathersensePowerModeList[WeathersensePowerModeIndex])
	/;
	endif
	;#EndRegion
endEvent

event OnOptionSliderOpen(int option)																	;TRANSLATED
	;/if option == Gameplay_SettingExposureRateSlider_OID
		SetSliderDialogStartValue(Frostfall.pSetting_ExposureRate)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 4.0)
		SetSliderDialogInterval(0.1)
	elseif option == Visuals_UIMeterOpacity_OID
		SetSliderDialogStartValue(_DE_ExposureMeter_Opacity.GetValue())
		SetSliderDialogDefaultValue(100.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseif option == Visuals_UIWeathersenseIndicatorOpacity_OID
		SetSliderDialogStartValue(_DE_Weathersense_Opacity.GetValue())
		SetSliderDialogDefaultValue(100.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseif option == Visuals_UIMeterDisplayTime_OID
		SetSliderDialogStartValue(_DE_MeterDisplayTime.GetValue() * 2)
		SetSliderDialogDefaultValue(8.0)
		SetSliderDialogRange(4.0, 20.0)
		SetSliderDialogInterval(2.0)
	elseif option == Visuals_UIWeathersenseIndicatorDisplayTime_OID
		SetSliderDialogStartValue(_DE_WeathersenseDisplayTime.GetValue() * 2)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(4.0, 20.0)
		SetSliderDialogInterval(2.0)
	elseif option == Gameplay_SettingRescueChanceAloneSlider_OID
		SetSliderDialogStartValue(_DE_RescueChanceAlone.GetValue() * 100)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif option == Gameplay_SettingRescueChanceFollowersSlider_OID
		SetSliderDialogStartValue(_DE_RescueChanceFollower.GetValue() * 100)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	endif
	/;
endEvent

event OnOptionSliderAccept(int option, float value)														;TRANSLATED
	;/if option == Gameplay_SettingExposureRateSlider_OID
		Frostfall.pSetting_ExposureRate = value
		SetSliderOptionValue(Gameplay_SettingExposureRateSlider_OID, value, "{1}x")
	elseif option == Visuals_UIMeterOpacity_OID
		_DE_ExposureMeter_Opacity.SetValue(value)
		SetSliderOptionValue(Visuals_UIMeterOpacity_OID, value, "{0}")
	elseif option == Visuals_UIWeathersenseIndicatorOpacity_OID
		_DE_Weathersense_Opacity.SetValue(value)
		SetSliderOptionValue(Visuals_UIWeathersenseIndicatorOpacity_OID, value, "{0}")
	elseif option == Visuals_UIMeterDisplayTime_OID
		_DE_MeterDisplayTime.SetValue(value/2)
		SetSliderOptionValue(Visuals_UIMeterDisplayTime_OID, value, "{0}")
	elseif option == Visuals_UIWeathersenseIndicatorDisplayTime_OID
		_DE_WeathersenseDisplayTime.SetValue(value/2)
		SetSliderOptionValue(Visuals_UIWeathersenseIndicatorDisplayTime_OID, value, "{0}")
	elseif option == Gameplay_SettingRescueChanceAloneSlider_OID
		_DE_RescueChanceAlone.SetValue(value / 100)
		SetSliderOptionValue(Gameplay_SettingRescueChanceAloneSlider_OID, _DE_RescueChanceAlone.GetValue() * 100, "{0}%")
	elseif option == Gameplay_SettingRescueChanceFollowersSlider_OID
		_DE_RescueChanceFollower.SetValue(value / 100)
		SetSliderOptionValue(Gameplay_SettingRescueChanceFollowersSlider_OID, _DE_RescueChanceFollower.GetValue() * 100, "{0}%")
	endif
	/;
endEvent

event OnOptionMenuOpen(int option)																		;TRANSLATED
	;/if option == Overview_PresetMenu_OID
		SetMenuDialogOptions(PresetList)
		SetMenuDialogStartIndex(PresetIndex)
		SetMenuDialogDefaultIndex(1)
	/;
	if option == Help_TroubleshootingMenu_OID
		SetMenuDialogOptions(TroubleshootingList)
		SetMenuDialogStartIndex(TroubleshootingIndex)
		SetMenuDialogDefaultIndex(0)
	;/
	elseif option == Visuals_UIMeterLayout_OID
		SetMenuDialogOptions(MeterLayoutList)
		SetMenuDialogStartIndex(MeterLayoutIndex)
		SetMenuDialogDefaultIndex(0)
	elseif option == Visuals_UIMeterDisplay_OID
		SetMenuDialogOptions(MeterDisplayList)
		SetMenuDialogStartIndex(MeterDisplayIndex)
		SetMenuDialogDefaultIndex(2)
	elseif option == Visuals_UIWeathersenseIndicatorDisplay_OID
		SetMenuDialogOptions(WeathersenseDisplayList)
		SetMenuDialogStartIndex(WeathersenseDisplayIndex)
		SetMenuDialogDefaultIndex(2)
	elseif option == Visuals_UIWeathersenseIndicatorLayout_OID
		SetMenuDialogOptions(WeathersenseLayoutList)
		SetMenuDialogStartIndex(WeathersenseLayoutIndex)
		SetMenuDialogDefaultIndex(0)
	elseif option == Visuals_UIEMeterHeight_OID
		SetMenuDialogOptions(MeterHeightList)
		SetMenuDialogStartIndex(ExposureMeterHeightIndex)
		SetMenuDialogDefaultIndex(0)
	elseif option == Visuals_UIWMeterHeight_OID
		SetMenuDialogOptions(MeterHeightList)
		SetMenuDialogStartIndex(WetMeterHeightIndex)
		SetMenuDialogDefaultIndex(0)
	elseif option == Visuals_UIMeterLength_OID
		SetMenuDialogOptions(MeterLengthList)
		SetMenuDialogStartIndex(MeterLengthIndex)
		SetMenuDialogDefaultIndex(0)
	elseif option == Visuals_UIWeathersenseIndicatorDisplay_OID
		SetMenuDialogOptions(WeathersenseDisplayList)
		SetMenuDialogStartIndex(WeathersenseDisplayIndex)
		SetMenuDialogDefaultIndex(2)
	elseif option == Visuals_UIWeathersenseIndicatorLayout_OID
		SetMenuDialogOptions(WeathersenseLayoutList)
		SetMenuDialogStartIndex(WeathersenseLayoutIndex)
		SetMenuDialogDefaultIndex(2)
	elseif option == Visuals_UIWeathersenseIndicatorHeight_OID
		SetMenuDialogOptions(MeterHeightList)
		SetMenuDialogStartIndex(WeathersenseHeightIndex)
		SetMenuDialogDefaultIndex(0)
	elseif option == Visuals_WeathersensePowerMode_OID
		SetMenuDialogOptions(WeathersensePowerModeList)
		SetMenuDialogStartIndex(WeathersensePowerModeIndex)
		SetMenuDialogDefaultIndex(0)
	/;
	endif
endEvent

event OnOptionMenuAccept(int option, int index)															;TRANSLATED
	;/if option == Overview_PresetMenu_OID
		PresetIndex = index
		SetMenuOptionValue(Overview_PresetMenu_OID, PresetList[PresetIndex])
		bPresetChange = true
		ForcePageReset()/;
	if option == Help_TroubleshootingMenu_OID
		if index == 0
			;do nothing
		;/elseif index == 1
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingEP()
			endif
		elseif index == 2
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingFT()
			endif
		elseif index == 3
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingWait()
			endif
		elseif index == 4
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingStats()
			endif
		elseif index == 5
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingWet()
			endif
		elseif index == 6
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingSlow()
			endif
		/;
		elseif index == 7
			bool bChoice = ShowMessage("$CampfireTroubleshooterPrompt")
			if bChoice
				TroubleshootingPlacement()
			endif
		endif
	;/elseif option == Visuals_UIMeterDisplay_OID
		MeterDisplayIndex = index
		SetMenuOptionValue(Visuals_UIMeterDisplay_OID, MeterDisplayList[MeterDisplayIndex])
		_DE_ExposureMeterDisplay_Contextual.SetValueInt(index)
	elseif option == Visuals_UIMeterLayout_OID
		ChooseMeterPositions(index)
		MeterLayoutIndex = index
		SetMenuOptionValue(Visuals_UIMeterLayout_OID, MeterLayoutList[MeterLayoutIndex])
	elseif option == Visuals_UIEMeterHeight_OID
		if index == 1
			_DE_ExposureMeterHeight.SetValue(2)
		else
			_DE_ExposureMeterHeight.SetValue(1)
		endIf
		ExposureMeterHeightIndex = index
		SetMenuOptionValue(Visuals_UIEMeterHeight_OID, MeterHeightList[ExposureMeterHeightIndex])
		ChooseMeterPositions(MeterLayoutIndex)
	elseif option == Visuals_UIWMeterHeight_OID
		if index == 1
			_DE_WetMeterHeight.SetValue(2)
		else
			_DE_WetMeterHeight.SetValue(1)
		endIf
		WetMeterHeightIndex = index
		SetMenuOptionValue(Visuals_UIWMeterHeight_OID, MeterHeightList[WetMeterHeightIndex])
		ChooseMeterPositions(MeterLayoutIndex)
	elseif option == Visuals_UIMeterLength_OID
		if index == 1
			_DE_MeterLength.SetValue(2)
		else
			_DE_MeterLength.SetValue(1)
		endIf
		MeterLengthIndex = index
		SetMenuOptionValue(Visuals_UIMeterLength_OID, MeterLengthList[MeterLengthIndex])
		ChooseMeterPositions(MeterLayoutIndex)
	elseif option == Visuals_UIWeathersenseIndicatorDisplay_OID
		WeathersenseDisplayIndex = index
		SetMenuOptionValue(Visuals_UIWeathersenseIndicatorDisplay_OID, WeathersenseDisplayList[WeathersenseDisplayIndex])
		_DE_WeathersenseDisplay_Contextual.SetValueInt(index)
	elseif option == Visuals_UIWeathersenseIndicatorLayout_OID
		SetWeathersensePosition(index)
		WeathersenseLayoutIndex = index
		SetMenuOptionValue(Visuals_UIWeathersenseIndicatorLayout_OID, WeathersenseLayoutList[WeathersenseLayoutIndex])
	elseif option == Visuals_UIWeathersenseIndicatorHeight_OID
		if index == 1
			_DE_WeathersenseHeight.SetValue(2)
		else
			_DE_WeathersenseHeight.SetValue(1)
		endif
		WeathersenseHeightIndex = index
		SetMenuOptionValue(Visuals_UIWeathersenseIndicatorHeight_OID, MeterHeightList[WeathersenseHeightIndex])
		SetWeathersensePosition(WeathersenseLayoutIndex)
	elseif option == Visuals_WeathersensePowerMode_OID
		_DE_WeathersensePowerMode.SetValue(index)
		WeathersensePowerModeIndex = index
		SetMenuOptionValue(Visuals_WeathersensePowerMode_OID, WeathersensePowerModeList[WeathersensePowerModeIndex])
	/;
	endif
endEvent

event OnOptionKeyMapChange(int option, int keyCode, string conflictControl, string conflictName)
	;/if option == Visuals_HotkeyWeathersense_OID
		if conflictControl != ""
			if conflictName != ""
				ShowMessage("This key is already bound to " + conflictControl + " in " + conflictName + ". Undesirable behavior may occur; use with caution, or assign to a different control.")
				_DE_HotkeyWeathersense.SetValueInt(keyCode)
				RegisterForKey(_DE_HotkeyWeathersense.GetValueInt())
				ForcePageReset()
			else
				ShowMessage("This key is already bound to " + conflictControl + " in Skyrim. Please select a different key.")
			endif
		else
			_DE_HotkeyWeathersense.SetValueInt(keyCode)
			RegisterForKey(_DE_HotkeyWeathersense.GetValueInt())
			ForcePageReset()
		endif
	/;
	if option == Visuals_HotkeySurvivalSkills_OID
		if conflictControl != ""
			if conflictName != ""
				ShowMessage("This key is already bound to " + conflictControl + " in " + conflictName + ". Undesirable behavior may occur; use with caution, or assign to a different control.")
				_DE_HotkeySurvivalSkills.SetValueInt(keyCode)
				RegisterForKey(_DE_HotkeySurvivalSkills.GetValueInt())
				ForcePageReset()
				Game.GetPlayer().RemoveSpell(_DE_SurvivalSkillsCombo_Spell)
			else
				ShowMessage("This key is already bound to " + conflictControl + " in Skyrim. Please select a different key.")
			endif
		else
			_DE_HotkeySurvivalSkills.SetValueInt(keyCode)
			RegisterForKey(_DE_HotkeySurvivalSkills.GetValueInt())
			ForcePageReset()
			Game.GetPlayer().RemoveSpell(_DE_SurvivalSkillsCombo_Spell)
		endif
	endif
endEvent

event OnOptionColorAccept(int option, int color)
	;/if option == Visuals_UIEMeterColorCold_OID
		_DE_EMColorCold_Dark.SetValueInt(color)
		_DE_EMColorCold_Light.SetValueInt(0xFFFFFF)
		SetColorOptionValue(option, color)
	elseif option == Visuals_UIEMeterColorWarm_OID
		_DE_EMColorWarm_Dark.SetValueInt(color)
		_DE_EMColorWarm_Light.SetValueInt(0xFFFFFF)
		SetColorOptionValue(option, color)
	elseif option == Visuals_UIWMeterColor_OID
		_DE_WMColor_Dark.SetValueInt(color)
		SetColorOptionValue(option, color)
	endif
	/;
endEvent

Event OnKeyDown(int KeyCode)
	;debug.trace("[Frostfall] iHotkeyWeathersense = " + iHotkeyWeathersense)
	if UI.IsMenuOpen("Console") || UI.IsMenuOpen("Book Menu") || UI.IsMenuOpen("BarterMenu") || UI.IsMenuOpen("ContainerMenu") || UI.IsMenuOpen("CraftingMenu") || UI.IsMenuOpen("Dialogue Menu") || UI.IsMenuOpen("FavoritesMenu") || UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("Journal Menu") || UI.IsMenuOpen("Lockpicking Menu") || UI.IsMenuOpen("MagicMenu") || UI.IsMenuOpen("MapMenu") || UI.IsMenuOpen("MessageBoxMenu") || UI.IsMenuOpen("Sleep/Wait Menu") || UI.IsMenuOpen("StatsMenu")
		return
	endif
	;/if KeyCode == _DE_HotkeyWeathersense.GetValueInt()
		if Frostfall.ShutdownState == false
			_DE_Weathersense_Spell.Cast(Game.GetPlayer())
		endif
	/;
	if KeyCode == _DE_HotkeySurvivalSkills.GetValueInt()
		;if Frostfall.ShutdownState == false
			_DE_SurvivalSkillsCombo_Spell.Cast(Game.GetPlayer())
		;endif
	endif
endEvent
	
string function GetCustomControl(int keyCode)
	;/if (keyCode == _DE_HotkeyWeathersense.GetValueInt())
		return "Weathersense"
	/;
	if (keyCode == _DE_HotkeySurvivalSkills.GetValueInt())
		return "Survival Skills"
	else
		return ""
	endIf
endFunction
	
function ShutdownProcedure()																			;TRANSLATED
	;Shut Down Frostfall
	;_DE_ExposurePoints.SetValue(100.0)
	;_DE_SwimState.SetValue(0)
	;_DE_Setting_Lighting.SetValue(1)
	;/Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_0_2)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_1)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_2)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_3)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_4)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_4NoFrost)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_5)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_5NoFrost)
	Game.GetPlayer().RemoveSpell(_DE_TorchState_Spell)
	Game.GetPlayer().RemoveSpell(_DE_CloakState_Spell)
	Game.GetPlayer().RemoveSpell(_DE_CloakState_Spell_Burlap)
	Game.GetPlayer().RemoveSpell(_DE_CloakState_Spell_Fur)
	Game.GetPlayer().RemoveSpell(_DE_CloakState_Spell_Hide)
	Game.GetPlayer().RemoveSpell(_DE_CloakState_Spell_Linen)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell1)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell1NoShader)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell2)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell2NoShader)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell3)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell3NoShader)
	Game.GetPlayer().RemoveSpell(_DE_Weathersense_Spell)
	Game.GetPlayer().RemoveSpell(_DE_WEARExamineArmor_Spell)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_1)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_2)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_3)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_3_Perk)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_Death)
	Game.GetPlayer().RemoveSpell(_DE_SurvivalSkillsCombo_Spell)
	Game.GetPlayer().RemoveSpell(_DE_NoWait_Spell)
	Game.GetPlayer().RemoveSpell(_DE_WellInsulatedConditionSpell)
	Game.GetPlayer().RemoveSpell(_DE_ConditioningState_Spell)
	Game.GetPlayer().RemoveSpell(_DE_ConditioningState_Spell_SkyRe)
	Game.GetPlayer().RemoveSpell(_DE_FlyingMountState_Spell)
	Game.GetPlayer().RemoveSpell(_DE_WerewolfSwimState)
	Game.GetPlayer().RemoveSpell(_DE_NoWaitWerewolfFix_Spell)
	Game.GetPlayer().RemoveSpell(_DE_WalkingStickSpell)
	Game.GetPlayer().RemoveSpell(_DE_HandWarmingSpell)
	Game.GetPlayer().RemoveSpell(_DE_FollowerSpell)
	Game.EnableFastTravel()
	ImageSpaceModifier.RemoveCrossFade(4.0)
	_DE_WetState.SetValue(0)
	Frostfall.pWetPoints = 0.0
	;Alias_DE_Player.Clear()
	Frostfall.ShutdownState = true
	/;
endFunction

function StartupProcedure()																				;TRANSLATED
	;Frostfall.ShutdownState = false
endFunction

;#Region Help Topics																					;TRANSLATED
function ShowGuideTopic1()
	ShowMessage("$CampfireGuideExposureTopic1Text", false)
endfunction
function ShowGuideTopic2()
	ShowMessage("$CampfireGuideExposureTopic2Text", false)
endfunction
function ShowGuideTopic3()
	ShowMessage("$CampfireGuideExposureTopic3Text", false)
endfunction
function ShowGuideTopic4()
	ShowMessage("$CampfireGuideExposureTopic4Text", false)
endfunction
function ShowGuideTopic5()
	ShowMessage("$CampfireGuideWaterTopic1Text", false)
endfunction
function ShowGuideTopic6()
	ShowMessage("$CampfireGuideWaterTopic2Text", false)
endfunction
function ShowGuideTopic7()
	ShowMessage("$CampfireGuideExposureTopic5Text", false)
endfunction
function ShowGuideTopic8()
	ShowMessage("$CampfireGuideExposureTopic7Text", false)
endfunction
function ShowGuideTopic9()
	ShowMessage("$CampfireGuideExposureTopic8Text", false)
endfunction
function ShowGuideTopic10()
	ShowMessage("$CampfireGuideExtraTopic1Text", false)
endfunction
function ShowGuideTopic11()
	ShowMessage("$CampfireGuideGearTopic1Text", false)
endfunction
function ShowGuideTopic12()
	ShowMessage("$CampfireGuideGearTopic2Text", false)
endfunction
function ShowGuideTopic13()
	ShowMessage("$CampfireGuideExposureTopic6Text", false)
endfunction
function ShowGuideTopic14()
	ShowMessage("$CampfireGuideCampingTopic1Text", false)
endfunction
function ShowGuideTopic15()
	ShowMessage("$CampfireGuideCampingTopic2Text", false)
endFunction
function ShowGuideTopic16()
	ShowMessage("$CampfireGuideCampingTopic3Text", false)
endFunction
function ShowGuideTopic17()
	ShowMessage("$CampfireGuideGearTopic4Text", false)
endfunction
function ShowGuideTopic18()
	ShowMessage("$CampfireGuideGearTopic3Text", false)
endFunction
;#EndRegion

;#Region Troubleshooters																				;TRANSLATED
;/function TroubleshootingWet()
	Game.DisablePlayerControls()
	Game.EnablePlayerControls()
	utility.wait(1)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell1)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell2)
	Game.GetPlayer().RemoveSpell(_DE_WetState_Spell3)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_1)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_2)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_3)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_3_Perk)
	Game.GetPlayer().RemoveSpell(_DE_ColdWater_Death)
	Frostfall.pWetPoints = 0.0
	_DE_WetState.SetValue(0)
	_DE_SwimState.SetValue(0)
	utility.wait(1)
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction
	
function TroubleshootingWait()
	utility.wait(1)
	Frostfall.pSetting_NoWait = false
	Game.GetPlayer().RemoveSpell(_DE_NoWait_Spell)
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction
	
function TroubleshootingStats()
	utility.wait(1)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_0_2)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_1)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_2)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_3)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_4)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_5)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_4NoFrost)
	Game.GetPlayer().RemoveSpell(_DE_Hypo_Spell_5NoFrost)
	_DE_ExposurePoints.SetValue(90)
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction
	
function TroubleshootingSlow()
	utility.wait(1)
	Game.GetPlayer().SetActorValue("SpeedMult", 100)
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction/;

function TroubleshootingPlacement()
	utility.wait(1)
	_DE_CampsitePlacementOn.SetValue(1)
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction

;/function TroubleshootingFT()
	utility.wait(1)
	_DE_Setting_FastTravel.SetValue(1)
	Game.GetPlayer().RemoveSpell(_DE_NoWait_Spell)
	Frostfall.pSetting_NoWait = false
	Frostfall.pSetting_FastTravelDisable = false
	Game.EnableFastTravel()
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction

function TroubleshootingEP()
	utility.wait(1)
	_DE_ExposurePoints.SetValue(75)
	_DE_Backpack_Menu2_HelpTroubleshootingConfirm.Show()
endFunction/;
;#EndRegion

function RegisterForKeysOnLoad()
	;/if _DE_HotkeyWeathersense.GetValueInt() != 0
		RegisterForKey(_DE_HotkeyWeathersense.GetValueInt())
	endIf
	/;
	if _DE_HotkeySurvivalSkills.GetValueInt() != 0
		RegisterForKey(_DE_HotkeySurvivalSkills.GetValueInt())
	endIf
endFunction

;/_DE_ExposureMeter property ExposureMeter auto
_DE_ExposureMeterUpdate property ExposureMeterDisplay auto
_DE_WetMeter property WetMeter auto
_DE_WetMeterUpdate property WetMeterDisplay auto
_DE_WeathersenseStatusWidget property WeathersenseIndicator auto
_DE_WeathersenseStatusUpdate property WeathersenseIndicatorDisplay auto

function ChooseMeterPositions(int index)
	if index == 0 			;Split, Top, Offset
		SetMeterPositions("right", "top", 1219.0, 75.2, "left", "top", 61.0, 75.2)
	elseif index == 1 		;Split, Top, Screen Edge
		SetMeterPositions("right", "top", 1219.0, 0.0, "left", "top", 61.0, 0.0)
	elseif index == 2 		;Split, Top Corners, Screen Edge
		SetMeterPositions("right", "top", 1280.0, 0.0, "left", "top", 0.0, 0.0)
	elseif index == 3 		;Split, Bottom, Offset
		SetMeterPositions("right", "bottom", 1219.0, 637.0, "left", "bottom", 61.0, 637.0)
	elseif index == 4 		;Split, Bottom, Screen Edge
		SetMeterPositions("right", "bottom", 1219.0, 720.0, "left", "bottom", 61.0, 720.0)
	elseif index == 5 		;Split, Bottom Corners, Screen Edge
		SetMeterPositions("right", "bottom", 1280.0, 720.0, "left", "bottom", 0.0, 720.0)
	elseif index == 6 		;Clustered, Top Right, Offset
		SetMeterPositions("right", "top", 1219.0, 52.0, "right", "top", 1219.0, 75.2)
	elseif index ==	7		;Clustered, Top Right, Edge
		SetMeterPositions("right", "top", 1219.0, 0.0, "right", "top", 1219.0, 23.2)
	elseif index == 8 		;Clustered, Top Right, Corner
		SetMeterPositions("right", "top", 1280.0, 0.0, "right", "top", 1280.0, 23.2)
	elseif index == 9 		;Clustered, Top Left, Offset
		SetMeterPositions("left", "top", 61.0, 52.0, "left", "top", 61.0, 75.2)
	elseif index ==	10		;Clustered, Top Left, Edge
		SetMeterPositions("left", "top", 61.0, 0.0, "left", "top", 61.0, 23.2)
	elseif index == 11		;Clustered, Top Left, Corner
		SetMeterPositions("left", "top", 0.0, 0.0, "left", "top", 0.0, 23.2)
	elseif index == 12 		;Clustered, Bottom Right, Offset
		SetMeterPositions("right", "bottom", 1219.0, 613.8, "right", "bottom", 1219.0, 637.0)
	elseif index ==	13		;Clustered, Bottom Right, Edge
		SetMeterPositions("right", "bottom", 1219.0, 696.8, "right", "bottom", 1219.0, 720.0)
	elseif index == 14 		;Clustered, Bottom Right, Corner
		SetMeterPositions("right", "bottom", 1280.0, 696.8, "right", "bottom", 1280.0, 720.0)
	elseif index == 15  	;Clustered, Bottom Left, Offset
		SetMeterPositions("left", "bottom", 70.0, 613.8, "left", "bottom", 70.0, 637.0)
	elseif index ==	16		;Clustered, Bottom Left, Edge
		SetMeterPositions("left", "bottom", 70.0, 696.8, "left", "bottom", 70.0, 720.0)
	elseif index == 17 		;Clustered, Bottom Left, Corner
		SetMeterPositions("left", "bottom", 0.0, 696.8, "left", "bottom", 0.0, 720.0)
	endif
endFunction

function SetMeterPositions(string Exposure_HAnchor, string Exposure_VAnchor, float Exposure_X, float Exposure_Y, string Wet_HAnchor, string Wet_VAnchor, float Wet_X, float Wet_Y)
	ExposureMeter.HAnchor = Exposure_HAnchor
	ExposureMeter.VAnchor = Exposure_VAnchor

	if _DE_MeterLength.GetValue() == 1
		ExposureMeter.Width = 292.8
		WetMeter.Width = 292.8
	else
		ExposureMeter.Width = 225.8
		WetMeter.Width = 225.8
	endIf

	ExposureMeter.X = Exposure_X
	if ExposureMeter.VAnchor == "bottom"
		if _DE_WetMeterHeight.GetValueInt() == 2 && Exposure_Y != 720.0 && Exposure_Y != Wet_Y
			ExposureMeter.Y = Exposure_Y + 12.0
		else
			ExposureMeter.Y = Exposure_Y
		endIf
	else
		ExposureMeter.Y = Exposure_Y
	endIf
	WetMeter.HAnchor = Wet_HAnchor
	WetMeter.VAnchor = Wet_VAnchor
	WetMeter.X = Wet_X

	if ExposureMeter.VAnchor == "top"
		if _DE_ExposureMeterHeight.GetValueInt() == 2 && Wet_Y != 0.0
			if Exposure_Y == Wet_Y
				WetMeter.Y = Wet_Y
			else
				WetMeter.Y = Wet_Y - 12.0
			endIf
		elseif _DE_WetMeterHeight.GetValueInt() == 2 && Wet_Y == 0.0 && Exposure_Y != 0.0
			WetMeter.Y = Wet_Y - 12.0
		else
			WetMeter.Y = Wet_Y
		endIf
	else
		WetMeter.Y = Wet_Y
	endIf

	if ExposureMeter.HAnchor == "right"
		ExposureMeter.FillDirection = "left"
	else
		ExposureMeter.FillDirection = "right"
	endIf
	if WetMeter.HAnchor == "right"
		WetMeter.FillDirection = "left"
	else
		WetMeter.FillDirection = "right"
	endIf
	if _DE_ExposureMeterHeight.GetValueInt() == 2
		ExposureMeter.Height = 12.0
	else
		ExposureMeter.Height = 25.2
	endIf
	if _DE_WetMeterHeight.GetValueInt() == 2
		WetMeter.Height = 12.0
	else
		WetMeter.Height = 25.2
	endIf

	;Adjust sides for smaller meters
	if _DE_ExposureMeterHeight.GetValueInt() == 2
		if ExposureMeter.HAnchor == "right"
			ExposureMeter.Width -= 24.0
			ExposureMeter.X -= 12.0
		else
			ExposureMeter.Width -= 24.0
			ExposureMeter.X += 12.0
		endIf
	endIf
	if _DE_WetMeterHeight.GetValueInt() == 2
		if WetMeter.HAnchor == "right"
			WetMeter.Width -= 24.0
			WetMeter.X -= 12.0
		else
			WetMeter.Width -= 24.0
			WetMeter.X += 12.0
		endIf
	endIf


	ExposureMeterDisplay.ForceDisplayAndUpdate()
	WetMeterDisplay.ForceDisplayAndUpdate()

	;debug.trace("[Frostfall] EMX:" + ExposureMeter.X + ", EMY:" + ExposureMeter.Y + ", WMX:" + WetMeter.X + ", WMY:" + WetMeter.Y)
endFunction

function SetWeathersensePosition(int index)
	if index == 0 		;"Compass"
		WeathersenseIndicator.HAnchor = "center"
		WeathersenseIndicator.VAnchor = "top"
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
			WeathersenseIndicator.X = 640.0
			WeathersenseIndicator.Y = 12.0
		else
			WeathersenseIndicator.Height = 25.2
			WeathersenseIndicator.X = 640.0
			WeathersenseIndicator.Y = 0.0
		endIf
	elseif index == 1 		;"Compass (Lower)"
		WeathersenseIndicator.HAnchor = "center"
		WeathersenseIndicator.VAnchor = "top"
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
			WeathersenseIndicator.X = 640.0
			WeathersenseIndicator.Y = 21.0
		else
			WeathersenseIndicator.Height = 25.2
			WeathersenseIndicator.X = 640.0
			WeathersenseIndicator.Y = 9.0
		endIf
	elseif index == 2 	;"Top,Center,Edge"
		WeathersenseIndicator.HAnchor = "center"
		WeathersenseIndicator.VAnchor = "top"
		WeathersenseIndicator.X = 640.0
		WeathersenseIndicator.Y = 0.0
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
		else
			WeathersenseIndicator.Height = 25.2
		endIf
	elseif index == 3 	;"Top,Right,Edge"
		WeathersenseIndicator.HAnchor = "right"
		WeathersenseIndicator.VAnchor = "top"
		WeathersenseIndicator.X = 1280.0
		WeathersenseIndicator.Y = 0.0
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
		else
			WeathersenseIndicator.Height = 25.2
		endIf
	elseif index == 4 	;"Top,Left,Edge"
		WeathersenseIndicator.HAnchor = "left"
		WeathersenseIndicator.VAnchor = "top"
		WeathersenseIndicator.X = 0.0
		WeathersenseIndicator.Y = 0.0
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
		else
			WeathersenseIndicator.Height = 25.2
		endIf
	elseif index == 5 	;"Btm,Center,Edge"
		WeathersenseIndicator.HAnchor = "center"
		WeathersenseIndicator.VAnchor = "bottom"
		WeathersenseIndicator.X = 640.0
		WeathersenseIndicator.Y = 720.0
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
		else
			WeathersenseIndicator.Height = 25.2
		endIf
	elseif index == 6 	;"Btm,Left,Edge"
		WeathersenseIndicator.HAnchor = "left"
		WeathersenseIndicator.VAnchor = "bottom"
		WeathersenseIndicator.X = 0.0
		WeathersenseIndicator.Y = 720.0
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
		else
			WeathersenseIndicator.Height = 25.2
		endIf
	elseif index == 7 	;"Btm,Right,Edge"
		WeathersenseIndicator.HAnchor = "right"
		WeathersenseIndicator.VAnchor = "bottom"
		WeathersenseIndicator.X = 1280.0
		WeathersenseIndicator.Y = 720.0
		if _DE_WeathersenseHeight.GetValueInt() == 2
			WeathersenseIndicator.Height = 12.0
		else
			WeathersenseIndicator.Height = 25.2
		endIf
	endIf
	WeathersenseIndicatorDisplay.ForceDisplayAndUpdate()
endFunction
/;