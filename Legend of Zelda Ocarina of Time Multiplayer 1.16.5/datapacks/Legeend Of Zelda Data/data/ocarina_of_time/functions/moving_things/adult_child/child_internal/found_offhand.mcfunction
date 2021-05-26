execute store result block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot byte 1 run scoreboard players add $inventory.slot Inventory 106

data modify block 914 4 -633 RecordItem.tag.phi.modifyinv.offhand append from block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0]
data remove block 914 4 -633 RecordItem.tag.phi.modifyinv.whole_inventory[0]
