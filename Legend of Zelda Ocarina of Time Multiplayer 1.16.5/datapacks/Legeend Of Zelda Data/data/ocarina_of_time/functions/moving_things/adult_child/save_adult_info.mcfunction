data modify block 914 4 -637 RecordItem.tag.phi.modifyinv.inventory set value []
data modify block 914 4 -637 RecordItem.tag.phi.modifyinv.hotbar set value []
data modify block 914 4 -637 RecordItem.tag.phi.modifyinv.armor set value []
data modify block 914 4 -637 RecordItem.tag.phi.modifyinv.offhand set value []
data modify block 914 4 -637 RecordItem.tag.phi.modifyinv.whole_inventory set from entity @s Inventory

#Sort
execute store result score $inventory.slot Inventory run data get block 914 4 -637 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot
execute store result score $inventory.slot_count Inventory run data get block 914 4 -637 RecordItem.tag.phi.modifyinv.whole_inventory

function ocarina_of_time:moving_things/adult_child/adult_internal/check_hotbar
function ocarina_of_time:moving_things/adult_child/adult_internal/check_inventory
function ocarina_of_time:moving_things/adult_child/adult_internal/check_armor
function ocarina_of_time:moving_things/adult_child/adult_internal/check_offhand

#Store
data modify block 913 4 -637 Items set from block 914 4 -637 RecordItem.tag.phi.modifyinv.hotbar
data modify block 912 4 -637 Items set from block 914 4 -637 RecordItem.tag.phi.modifyinv.inventory
data modify block 911 4 -637 Items set from block 914 4 -637 RecordItem.tag.phi.modifyinv.armor
data modify block 910 4 -637 Items set from block 914 4 -637 RecordItem.tag.phi.modifyinv.offhand
