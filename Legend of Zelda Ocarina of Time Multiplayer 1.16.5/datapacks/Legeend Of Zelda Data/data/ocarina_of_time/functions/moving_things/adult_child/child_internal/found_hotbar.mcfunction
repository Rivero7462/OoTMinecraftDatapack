data modify block 914 4 -633 RecordItem.tag.phi.modifyinv.hotbar append from block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0]
data remove block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0]

execute store result score $inventory.slot Inventory run data get block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot
scoreboard players remove $inventory.slot_count Inventory 1
function ocarina_of_time:moving_things/adult_child/child_internal/check_hotbar
