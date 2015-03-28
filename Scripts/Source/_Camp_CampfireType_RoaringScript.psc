Scriptname _Camp_CampfireType_RoaringScript extends ObjectReference  

import CampUtil

int burn_duration = 12

bool property isDeadwood = false auto
bool property isFirewood = false auto

Furniture property _Camp_Campfire auto
Activator property _Camp_Fuel_Roaring_DeadwoodLit auto
Activator property _Camp_Fuel_Roaring_FirewoodLit auto
Activator property _Camp_Fuel_Roaring_DeadwoodUnlit auto
Activator property _Camp_Fuel_Roaring_FirewoodUnlit auto
Light property _Camp_Campfire_Light_5 auto
Book property this_item auto
Actor property PlayerRef auto
GlobalVariable property _Camp_LastUsedCampfireSize auto
Spell property _Camp_InspiredSpell2 auto
Message property _Camp_Inspired2Message auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if akNewContainer == PlayerRef
        ObjectReference f = Game.FindClosestReferenceOfTypeFromRef(_Camp_Campfire, PlayerRef, 500.0)
        if f
            (f as CampCampfire).campfire_size = 4
            _Camp_LastUsedCampfireSize.SetValueInt(4)
            if isDeadwood
                (f as CampCampfire).SetFuel(_Camp_Fuel_Roaring_DeadwoodLit,       \
                                            _Camp_Fuel_Roaring_DeadwoodUnlit,     \
                                            _Camp_Campfire_Light_5, burn_duration)
            elseif isFirewood
                (f as CampCampfire).SetFuel(_Camp_Fuel_Roaring_FirewoodLit,       \
                                            _Camp_Fuel_Roaring_FirewoodUnlit,     \
                                            _Camp_Campfire_Light_5, burn_duration)
            endif
        endif
        PlayerRef.RemoveItem(this_item, 1, true)

        ;Set the inspired spell
        PlayerRef.AddSpell(_Camp_InspiredSpell2, false)
        _Camp_Inspired2Message.Show()
    endif
endEvent