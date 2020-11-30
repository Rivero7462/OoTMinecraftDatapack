tag @e[type=area_effect_cloud,tag=HoppingStones] remove 0

#Rocks
scoreboard players set @a HoldingRock 1
execute unless entity @a[tag=Adult] run fill -564 65 -618 -564 65 -618 minecraft:granite_slab
execute unless entity @a[tag=Adult] run fill -553 65 -602 -553 65 -602 minecraft:granite_slab
execute unless entity @a[tag=Adult] if block -585 62 -631 minecraft:gold_block run fill -585 65 -631 -585 65 -631 minecraft:granite_slab
execute unless entity @a[tag=Adult] unless block -585 62 -631 minecraft:gold_block run fill -585 65 -631 -585 65 -631 minecraft:smooth_stone_slab
execute unless entity @a[tag=Adult] run fill -610 69 -618 -610 69 -618 minecraft:granite_slab
execute unless entity @a[tag=Adult] run fill -597 69 -598 -597 69 -598 minecraft:granite_slab
execute unless entity @a[tag=Adult] run fill -597 69 -600 -597 69 -600 minecraft:granite_slab
execute unless entity @a[tag=Adult] run fill -585 69 -600 -585 69 -600 minecraft:granite_slab
execute unless entity @a[tag=Adult] run fill -598 65 -636 -598 65 -636 minecraft:granite_slab
execute run fill -586 65 -629 -586 65 -629 minecraft:granite_slab
execute run fill -587 65 -630 -587 65 -630 minecraft:granite_slab
execute run fill -587 65 -632 -587 65 -632 minecraft:granite_slab
execute run fill -586 65 -633 -586 65 -633 minecraft:granite_slab
execute run fill -584 65 -633 -584 65 -633 minecraft:granite_slab
execute run fill -583 65 -632 -583 65 -632 minecraft:granite_slab
execute run fill -583 65 -630 -583 65 -630 minecraft:granite_slab
execute run fill -584 65 -629 -584 65 -629 minecraft:granite_slab

#Grass
execute if entity @a[tag=Adult] run fill -597 69 -608 -595 69 -606 minecraft:grass
execute if entity @a[tag=Adult] run fill -555 65 -616 -553 65 -618 minecraft:grass
execute unless entity @a[tag=Adult] run fill -597 69 -608 -597 69 -608 minecraft:grass
execute unless entity @a[tag=Adult] run fill -596 69 -607 -596 69 -607 minecraft:grass
execute unless entity @a[tag=Adult] run fill -594 69 -608 -594 69 -608 minecraft:grass
execute unless entity @a[tag=Adult] run fill -594 69 -606 -594 69 -606 minecraft:grass
execute unless entity @a[tag=Adult] run fill -591 69 -608 -591 69 -608 minecraft:grass
execute unless entity @a[tag=Adult] run fill -589 69 -607 -589 69 -607 minecraft:grass
execute unless entity @a[tag=Adult] run fill -565 65 -614 -565 65 -614 minecraft:grass
execute unless entity @a[tag=Adult] run fill -559 65 -617 -559 65 -617 minecraft:grass
execute unless entity @a[tag=Adult] run fill -558 65 -615 -558 65 -615 minecraft:grass
execute unless entity @a[tag=Adult] run fill -556 65 -616 -556 65 -616 minecraft:grass
fill -585 69 -608 -585 69 -608 minecraft:grass
fill -585 69 -606 -585 69 -606 minecraft:grass
fill -579 75 -680 -580 75 -680 minecraft:grass
fill -580 75 -681 -580 75 -681 minecraft:grass
fill -562 75 -712 -563 75 -712 minecraft:grass
fill -563 75 -713 -563 75 -713 minecraft:grass
fill -571 75 -713 -571 75 -712 minecraft:grass
fill -572 75 -712 -572 75 -712 minecraft:grass

#Signs
execute unless entity @a[tag=Adult] unless block -585 69 -611 minecraft:oak_sign run clone -585 66 -611 -585 66 -611 -585 69 -611
execute unless entity @a[tag=Adult] unless block -585 69 -607 minecraft:oak_sign run clone -585 66 -607 -585 66 -607 -585 69 -607
execute unless entity @a[tag=Adult] unless block -593 69 -595 minecraft:oak_sign run clone -593 66 -595 -593 66 -595 -593 69 -595
execute unless block -592 69 -584 minecraft:oak_sign run clone -592 66 -584 -592 66 -584 -592 69 -584
execute unless block -582 70 -577 minecraft:oak_sign run clone -582 66 -577 -582 66 -577 -582 70 -577
execute unless block -570 63 -608 minecraft:oak_sign run clone -570 60 -608 -570 60 -608 -570 63 -608
execute unless block -554 65 -624 minecraft:oak_sign run clone -554 62 -624 -554 62 -624 -554 65 -624
execute unless block -563 65 -631 minecraft:oak_sign run clone -563 62 -631 -563 62 -631 -563 65 -631
execute unless block -611 65 -629 minecraft:oak_sign run clone -611 62 -629 -611 62 -629 -611 65 -629
execute unless block -596 58 -700 minecraft:oak_sign run clone -596 55 -700 -596 55 -700 -596 58 -700

#Bushes
data remove block -589 64 -618 Items
execute positioned -589 64 -618 unless entity @a[tag=Adult] unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/2_green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=south]{LootTable:"ocarina_of_time:chests/general/2_green_rupee"} destroy
execute positioned -589 64 -618 if entity @a[tag=Adult] run fill -589 64 -618 -589 64 -618 minecraft:grass_block
execute positioned -589 64 -618 if entity @a[tag=Adult] run fill -589 65 -618 -589 65 -618 minecraft:large_fern
kill @e[type=item,x=-589,y=64,z=-618,dx=0,dz=0]
data remove block -578 64 -641 Items
execute positioned -578 64 -641 unless entity @a[tag=Adult] unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/2_green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=south]{LootTable:"ocarina_of_time:chests/general/2_green_rupee"} destroy
execute positioned -578 64 -641 if entity @a[tag=Adult] run fill -578 64 -641 -578 64 -641 minecraft:grass_block
execute positioned -578 64 -641 if entity @a[tag=Adult] run fill -578 65 -641 -578 65 -641 minecraft:large_fern
data remove block -588 68 -583 Items
execute positioned -588 68 -583 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/2_green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=east]{LootTable:"ocarina_of_time:chests/general/2_green_rupee"} destroy

#Saria's Hearts
data remove block -557 53 -613 Items
data remove block -557 53 -609 Items
data remove block -561 53 -613 Items
data remove block -561 53 -609 Items
execute positioned -557 53 -613 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=west]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
execute positioned -557 53 -609 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=west]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
execute positioned -561 53 -613 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=west]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
execute positioned -561 53 -609 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=west]{LootTable:"ocarina_of_time:chests/general/heart"} destroy

#Pots
fill -576 51 -598 -576 51 -598 minecraft:flower_pot
fill -541 54 -613 -541 54 -613 minecraft:flower_pot
fill -541 54 -609 -541 54 -609 minecraft:flower_pot
fill -602 57 -617 -602 57 -617 minecraft:flower_pot
fill -608 57 -615 -608 57 -615 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Lost Woods Bushes
data remove block -563 69 -663 Items
execute positioned -563 69 -663 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=north]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -561 69 -654 Items
execute positioned -561 69 -654 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/blue_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=north]{LootTable:"ocarina_of_time:chests/general/blue_rupee"} destroy
data remove block -571 69 -655 Items
execute positioned -571 69 -655 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=east]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy

#Pond
data remove block -549 67 -684 Items
execute positioned -549 67 -684 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -548 67 -684 Items
execute positioned -548 67 -684 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -547 67 -684 Items
execute positioned -547 67 -684 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -547 67 -686 Items
execute positioned -547 67 -686 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -546 67 -685 Items
execute positioned -546 67 -685 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -545 67 -684 Items
execute positioned -545 67 -684 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -546 67 -683 Items
execute positioned -546 67 -683 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -547 67 -682 Items
execute positioned -547 67 -682 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy

#Meadow Rupees
data remove block -580 74 -734 Items
execute positioned -580 74 -734 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/blue_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=east]{LootTable:"ocarina_of_time:chests/general/blue_rupee"} destroy
data remove block -568 74 -752 Items
execute positioned -568 74 -752 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/blue_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=south]{LootTable:"ocarina_of_time:chests/general/blue_rupee"} destroy
data remove block -575 74 -747 Items
execute positioned -575 74 -747 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=north]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -567 74 -766 Items
execute positioned -567 74 -766 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=east]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block -578 74 -768 Items
execute positioned -578 74 -768 unless block ~ ~ ~ minecraft:chest{LootTable:"ocarina_of_time:chests/general/blue_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:chest[facing=west]{LootTable:"ocarina_of_time:chests/general/blue_rupee"} destroy

#Destroy
execute positioned -559 70 -612 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:oak_log
execute positioned -560 70 -609 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:oak_log
execute positioned -558 70 -609 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:oak_log
execute positioned -553 52 -643 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:coarse_dirt
execute positioned -590 65 -642 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:grass_block
execute positioned -590 69 -580 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute positioned -596 69 -586 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air

#Running Man
execute if entity @a[tag=TimedRace4] run tp @e[type=armor_stand,tag=RunningMan3] -631 63.4 -626 90 0
execute unless entity @a[tag=TimedRace4] run tp @e[type=armor_stand,tag=RunningMan3] -631 56 -626
execute unless entity @a[tag=TimedRace4] run data merge entity @e[type=armor_stand,tag=RunningMan3,limit=1] {Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]}}

#Shops
#1
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=Slingshot] run data merge entity @e[type=villager,tag=KokiriShop,limit=1] {Tags:["KokiriShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (10)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup10:1b}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shield,Count:1,tag:{Wooden:1b,display:{Name:"\"Deku Shield\""},Unbreakable:1,Damage:1}},rewardExp:0b,maxUses:9999999}]}}
#2
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=Slingshot] unless entity @a[tag=Adult] run data merge entity @e[type=villager,tag=KokiriShop,limit=1] {Tags:["KokiriShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (10)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup10:1b}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shield,Count:1,tag:{Wooden:1b,display:{Name:"\"Deku Shield\""},Unbreakable:1,Damage:1}},rewardExp:0b,maxUses:9999999}]}}
#3
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBow] run data merge entity @e[type=villager,tag=KokiriShop,limit=1] {Tags:["KokiriShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (10)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup10:1b}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shield,Count:1,tag:{Wooden:1b,display:{Name:"\"Deku Shield\""},Unbreakable:1,Damage:1}},rewardExp:0b,maxUses:0}]}}
#4
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBow] run data merge entity @e[type=villager,tag=KokiriShop,limit=1] {Tags:["KokiriShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (10)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup10:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shield,Count:1,tag:{Wooden:1b,display:{Name:"\"Deku Shield\""},Unbreakable:1,Damage:1}},rewardExp:0b,maxUses:0}]}}

#Rupee Spot
execute unless entity @a[tag=Adult] run fill -545 73 -643 -545 73 -643 minecraft:air
execute if entity @a[tag=Adult] unless block -546 69 -643 minecraft:gold_block run clone -545 69 -643 -545 69 -643 -545 73 -643

#Bean Spots
#1
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean6] run clone -547 61 -641 -545 61 -639 -551 65 -639
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean6] run fill -550 65 -638 -550 65 -638 minecraft:pumpkin_stem[age=6]
#2
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean7] run clone -633 64 -648 -631 64 -646 -634 69 -645
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean7] run fill -633 69 -644 -633 69 -644 minecraft:pumpkin_stem[age=6]
#3
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean8] run clone -581 70 -707 -579 70 -705 -583 75 -706
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean8] run fill -582 75 -705 -582 75 -705 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone1] run summon minecraft:armor_stand -597 75 -650 {Tags:["GossipStone1","GossipStone","Npc"],Rotation:[-90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone2] run summon minecraft:armor_stand -465 60 -621 {Tags:["GossipStone2","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#3
execute unless entity @e[type=armor_stand,tag=GossipStone3] run summon minecraft:armor_stand -472 60 -661 {Tags:["GossipStone3","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#4
execute unless entity @e[type=armor_stand,tag=GossipStone4] run summon minecraft:armor_stand -635 64 -607 {Tags:["GossipStone4","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#5
execute unless entity @e[type=armor_stand,tag=GossipStone5] run summon minecraft:armor_stand -567 78 -746 {Tags:["GossipStone5","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#6
execute unless entity @e[type=armor_stand,tag=GossipStone6] run summon minecraft:armor_stand -580 78 -758 {Tags:["GossipStone6","GossipStone","Npc"],Rotation:[-90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#7
execute unless entity @e[type=armor_stand,tag=GossipStone7] run summon minecraft:armor_stand -578 83 -816 {Tags:["GossipStone7","GossipStone","Npc"],Rotation:[-90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grottos
fill -595 74 -650 -595 74 -650 minecraft:grass_block
fill -577 41 -652 -577 41 -652 minecraft:grass
fill -575 41 -659 -575 41 -659 minecraft:grass
fill -577 41 -659 -577 41 -659 minecraft:grass
fill -577 41 -657 -577 41 -657 minecraft:grass
fill -571 47 -683 -571 47 -683 minecraft:grass
fill -569 47 -690 -569 47 -690 minecraft:grass
fill -571 47 -690 -571 47 -690 minecraft:grass
fill -571 47 -688 -571 47 -688 minecraft:grass
fill -575 74 -736 -575 74 -736 minecraft:grass_block
fill -566 82 -815 -566 82 -815 minecraft:grass_block
