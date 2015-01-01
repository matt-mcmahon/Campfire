scriptname CampUtil hidden

import math
import debug

;@TODO: Change to .esm
CampfireAPI function GetAPI() global
	return (Game.GetFormFromFile(0x00024095, "Campfire.esp") as Quest) as CampfireAPI
endFunction

; Events =====================================================================================

bool function RaiseEvent_CampfireOnGearEquipped(Form akBaseObject, int iGearType) global
	;===========
	;Syntax
	;===========
	;	Event CampfireOnGearEquipped(Form akBaseObject, int iGearType)
	;
	;===========
	;Parameters
	;===========
	;	akBaseObject: The base object the actor just equipped.
	;	iGearType: The type of gear the actor equipped, which is one of the following values:
	;		1: Body gear (Armor, clothing)
	;		2: Hands gear (Gauntlets, gloves)
	;		3: Head gear (Helmet, hat, hoods)
	;		4: Foot gear (Boots, shoes)
	;		5: Backpack
	;		6: Ammo
	;		7: Other (could be shield, cloak, etc)
	;
	;===========
	;Return Values
	;===========
	;	Returns True if the ModEvent was successfully created, False otherwise.
	;
	;===========
	;Examples
	;===========
	;	RegisterForModEvent("Campfire_CampfireOnGearEquipped", "CampfireOnGearEquipped")
	;
	;	Event CampfireOnGearEquipped(Form akBaseObject, int iGearType)
	;		if iGearType == 5
	;			debug.trace("A backpack recognized by Campfire was equipped!")
	;		endif
	;	EndEvent
	;
	;===========
	;Notes
	;===========
	;	* The intent of this event is to notify when a piece of visual worn gear
	;	  (armor, clothing, backpacks, ammo, etc) is equipped, instead of every equipped
	;	  object. Primarily, the emphasis is on gear that has a substantive gameplay purpose
	;	  (not purely cosmetic or utility equipment).
	;
	;	* This event can be raised multiple times for the same Base Object if that object
	;	  is a set of "compound" gear (i.e. having more than one matching keyword, such 
	;	  as ArmorBody AND ArmorGauntlets), allowing you to act on each part of an otherwise
	;	  "one piece" set of gear (example: Vagabond Armor (Immersive Armors), which has both
	;	  body armor and a cloak).
	;
	;	* Unlike OnObjectEquipped, this event filters results based on the equipped item's
	;	  slot mask. Gear that utilizes slots 61 - 53, 51 - 47, or 45 will not be returned.
	;	  Slot 52 is not checked for compatibility reasons. These slots are checked in 
	;	  order of greatest to smallest, so if a piece of gear uses slots 61 and 30, it will 
	;	  be filtered out and this event will not be raised when the object is equipped.
	;
	;	* This event is not raised when weapons are equipped.

	trace("[Campfire] Raising Event: CampfireOnGearEquipped(" + akBaseObject + ", " + iGearType + ")")

	int handle = ModEvent.Create("Campfire_CampfireOnGearEquipped")
	if handle
		ModEvent.PushForm(handle, akBaseObject)
		ModEvent.PushInt(handle, iGearType)
		ModEvent.Send(handle)
		return True
	else
		return False
	endif
endFunction

bool function RaiseEvent_CampfireOnGearUnequipped(Form akBaseObject, int iGearType) global
	;===========
	;Syntax
	;===========
	;	Event CampfireOnGearUnequipped(Form akBaseObject, int iGearType)
	;
	;===========
	;Parameters
	;===========
	;	akBaseObject: The base object the actor just unequipped.
	;	iGearType: The type of gear the actor unequipped, which is one of the following values:
	;		1: Body gear (Armor, clothing)
	;		2: Hands gear (Gauntlets, gloves)
	;		3: Head gear (Helmet, hat, hoods)
	;		4: Foot gear (Boots, shoes)
	;		5: Backpack
	;		6: Ammo
	;		7: Other (could be shield, cloak, etc)
	;
	;===========
	;Return Values
	;===========
	;	Returns True if the ModEvent was successfully created, False otherwise.
	;
	;===========
	;Examples
	;===========
	;	RegisterForModEvent("Campfire_CampfireOnGearUnequipped", "CampfireOnGearUnequipped")
	;
	;	Event CampfireOnGearUnequipped(Form akBaseObject, int iGearType)
	;		if iGearType == 4
	;			debug.trace("The player unequipped some boots!")
	;		endif
	;	EndEvent
	;
	;===========
	;Notes
	;===========
	;	* The intent of this event is to notify when a piece of visual worn gear
	;	  (armor, clothing, backpacks, ammo, etc) is unequipped, instead of every unequipped
	;	  object. Primarily, the emphasis is on gear that has a substantive gameplay purpose
	;	  (not purely cosmetic or utility equipment).
	;
	;	* This event can be raised multiple times for the same Base Object if that object
	;	  is a set of "compound" gear (i.e. having more than one matching keyword, such 
	;	  as ArmorBody AND ArmorGauntlets), allowing you to act on each part of an otherwise
	;	  "one piece" set of gear (example: Vagabond Armor (Immersive Armors), which has both
	;	  body armor and a cloak).
	;
	;	* Unlike OnObjectUnequipped, this event filters results based on the unequipped item's
	;	  slot mask. Gear that utilizes slots 61 - 53, 51 - 47, or 45 will not be returned.
	;	  Slot 52 is not checked for compatibility reasons. These slots are checked in 
	;	  order of greatest to smallest, so if a piece of gear uses slots 61 and 30, it will 
	;	  be filtered out and this event will not be raised when the object is unequipped.
	;
	;	* This event is not raised when weapons are unequipped.

	trace("[Campfire] Raising Event: CampfireOnGearUnequipped(" + akBaseObject + ", " + iGearType + ")")

	int handle = ModEvent.Create("Campfire_CampfireOnGearUnequipped")
	if handle
		ModEvent.PushForm(handle, akBaseObject)
		ModEvent.PushInt(handle, iGearType)
		ModEvent.Send(handle)
		return True
	else
		return False
	endif
endFunction

; Functions ==================================================================================

Armor function GetPlayerEquippedHead() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		return Campfire.CampData.CurrentHead
	endif
endFunction

Armor function GetPlayerEquippedBody() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		return Campfire.CampData.CurrentBody
	endif
endFunction

Armor function GetPlayerEquippedHands() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		return Campfire.CampData.CurrentHands
	endif
endFunction

Armor function GetPlayerEquippedFeet() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		return Campfire.CampData.CurrentFeet
	endif
endFunction

Armor function GetPlayerEquippedBackpack() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		return Campfire.CampData.CurrentBackpack
	endif
endFunction

Ammo function GetPlayerEquippedAmmo() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		return Campfire.CampData.CurrentAmmo
	endif
endFunction

bool function IsRefInInterior(ObjectReference akObject) global
	;===========
	;Syntax
	;===========
	;	bool Function IsRefInInterior(ObjectReference akObject)
	;
	;===========
	;Parameters
	;===========
	;	akObject: The object reference to check.
	;
	;===========
	;Return Value
	;===========
	;	Returns true if the object is in an interior cell, taking into account special worldspaces.
	;
	;===========
	;Examples
	;===========
	;	;Is the box in an interior?
	;	if IsRefInInterior(Box)
	;		Debug.Trace("Box is inside!")
	;	endif
	;
	;===========
	;Notes
	;===========
	;	* The standard IsInInterior() function can only return whether or not the current cell 
	;	  is marked as an Interior. There are numerous worldspaces (such as AlftandWorld, 
	;	  Blackreach, BlindCliffCaveWorld, etc) that look and act like interiors, but are set 
	;	  as external worldspaces. This can cause IsInInterior() to return undesirable results.
	;	  This function takes these known base game (and DLC) worldspaces into account when
	;	  evaluating the object reference's location.

	CampfireAPI Campfire = GetAPI()

	if Campfire == none
		RaiseCampAPIError()
	else
		if akObject.IsInInterior()
			return True
		else
			if Campfire._Camp_WorldspacesInteriors.HasForm(akObject.GetWorldSpace())
				return True
			else
				return False
			endif
		endif
	endif
endFunction

bool function PlayerCanPlaceObjects() global
	CampfireAPI Campfire = GetAPI()
	if Campfire == none
		RaiseCampAPIError()
	else
		;Eliminated combat check; this can happen too often.
		if Campfire.PlayerRef.IsSwimming()
			;_DE_Placement_Swimming.Show()	;@TODO: Rename
			notification("[Debug]You can't use this while swimming.")
			return False
		elseif Campfire.PlayerRef.IsOnMount()
			;silently fail 					;@TODO: Provide error
			notification("[Debug]You can't use this while mounted.")
			return False
		elseif Campfire.PlayerRef.GetSleepState() != 0
			;@TODO: Error
			notification("[Debug]You can't use this while lying down.")
			return False
		elseif Campfire.PlayerRef.GetSitState() != 0
			;@TODO: Error
			notification("[Debug]You can't use this while using something else.")
			return False
		else
			return True
		endif
	endif
endFunction

function ExitMenus() global
	Game.DisablePlayerControls()
	Game.EnablePlayerControls()
endFunction

function RaiseCampAPIError() global
	debug.trace("[Campfire] Fatal API error occurred.")
endFunction