#Big Fairy
execute if entity @s[nbt={Inventory:[{tag:{BigFairy:1b}}]}] run function ocarina_of_time:items/big_fairy/big_fairy

#Bomb
give @s[nbt={Inventory:[{tag:{BombPickup:1b}}]}] minecraft:tnt{display:{Name:"\"Bomb\""}} 5

#Bombchu
scoreboard players add @s[nbt={Inventory:[{tag:{BombchuPickup10:1b}}]}] BombchuCount 10
scoreboard players add @s[nbt={Inventory:[{tag:{BombchuPickup20:1b}}]}] BombchuCount 20
execute if entity @s[nbt={Inventory:[{tag:{BombchuPickup:1b}}]}] unless entity @s[nbt={Inventory:[{tag:{Bombchu:1b}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bombchu\"}"},Unbreakable:1b,HideFlags:63,Bombchu:1b,MainHandItem:1b}

#Fairy
execute if entity @s[nbt={Inventory:[{tag:{Fairy:1b}}]}] run function ocarina_of_time:items/bottled_items/fairy

#Bug
execute if entity @s[nbt={Inventory:[{tag:{Bug:1b}}]}] if entity @s[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run function ocarina_of_time:items/bottled_items/bug

#Deku Nuts
scoreboard players add @s[nbt={Inventory:[{tag:{NutPickup:1b}}]}] DekuNuts 5
execute if entity @s[nbt={Inventory:[{tag:{NutPickup:1b}}]}] unless entity @s[nbt={Inventory:[{tag:{DekuNut:1b}}]}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotDekuNut] run function ocarina_of_time:items/pickup_items/deku_nut

#Fairy Bow
scoreboard players add @s[nbt={Inventory:[{tag:{ArrowPickup5:1b}}]}] ArrowCount2 5
scoreboard players add @s[nbt={Inventory:[{tag:{ArrowPickup10:1b}}]}] ArrowCount2 10
scoreboard players add @s[nbt={Inventory:[{tag:{ArrowPickup30:1b}}]}] ArrowCount2 30
scoreboard players add @s[nbt={Inventory:[{tag:{ArrowPickup50:1b}}]}] ArrowCount2 50

#Gold Skulltula
execute if entity @s[nbt={Inventory:[{tag:{Token:1b}}]}] run function ocarina_of_time:items/skull_token

#Heart
execute if entity @s[nbt={Inventory:[{tag:{Heart:1b}}]}] unless entity @s[tag=HeartCoolDown] run function ocarina_of_time:items/hearts/heart

#Magic Jars
experience add @s[nbt={Inventory:[{tag:{SmallJar:1b}}]}] 3 levels
experience add @s[nbt={Inventory:[{tag:{BigJar:1b}}]}] 6 levels

#Slingshot
scoreboard players add @s[nbt={Inventory:[{tag:{DekuSeedPickup1:1b}}]}] DekuSeeds2 5
scoreboard players add @s[nbt={Inventory:[{tag:{DekuSeedPickup2:1b}}]}] DekuSeeds2 10
scoreboard players add @s[nbt={Inventory:[{tag:{DekuSeedPickup3:1b}}]}] DekuSeeds2 30

#Finish
execute unless entity @s[tag=HeartCoolDown] run clear @s minecraft:shears{PickupItem:1b} 1
clear @s minecraft:carrot_on_a_stick{PickupItem:1b} 1
clear @s minecraft:tnt{PickupItem:1b} 1
