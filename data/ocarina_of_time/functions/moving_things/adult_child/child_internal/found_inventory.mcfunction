execute store result block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot byte 1 run scoreboard players remove $inventory.slot Inventory 9

data modify block 914 4 -633 RecordItem.tag.phi.modifyinv.inventory append from block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0]
data remove block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0]

execute store result score $inventory.slot Inventory run data get block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot
function ocarina_of_time:moving_things/adult_child/child_internal/check_inventory
