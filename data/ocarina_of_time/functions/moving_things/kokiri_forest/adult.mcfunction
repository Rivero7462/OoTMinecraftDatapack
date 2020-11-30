#Rocks
fill -564 65 -618 -564 65 -618 minecraft:air
fill -553 65 -602 -553 65 -602 minecraft:air
fill -585 65 -631 -585 65 -631 minecraft:air
fill -610 69 -618 -610 69 -618 minecraft:air
fill -597 69 -598 -597 69 -600 minecraft:air
fill -585 69 -600 -585 69 -600 minecraft:air
fill -598 65 -636 -598 65 -636 minecraft:air

#Grass
fill -594 69 -608 -589 69 -606 minecraft:air replace minecraft:grass
fill -565 65 -614 -565 65 -614 minecraft:air replace minecraft:grass
fill -559 65 -617 -556 65 -615 minecraft:air replace minecraft:grass

fill -557 65 -618 -557 65 -618 minecraft:air

#Signs
fill -585 69 -611 -585 69 -611 minecraft:air
fill -597 69 -596 -597 69 -596 minecraft:air
fill -593 69 -595 -593 69 -595 minecraft:air
fill -597 69 -615 -597 69 -615 minecraft:air

#Water Level
fill -581 73 -745 -584 73 -742 minecraft:water
fill -581 73 -760 -578 73 -763 minecraft:water

#Deku Tree
fill -485 70 -643 -485 61 -644 minecraft:acacia_wood replace minecraft:air
fill -485 70 -641 -485 61 -640 minecraft:acacia_wood replace minecraft:air
fill -486 61 -641 -486 68 -643 minecraft:acacia_wood replace minecraft:air
fill -486 69 -643 -486 69 -641 minecraft:acacia_wood[axis=x] replace minecraft:air
fill -485 70 -642 -485 70 -642 minecraft:acacia_wood[axis=x] replace minecraft:air
fill -484 61 -645 -484 69 -645 minecraft:acacia_wood replace minecraft:air
fill -484 69 -639 -484 61 -639 minecraft:acacia_wood replace minecraft:air

#Kill
kill @e[type=wither_skeleton,tag=DekuBabaBody1]
kill @e[type=wither_skeleton,tag=DekuBabaBody2]
kill @e[type=wither_skeleton,tag=DekuBabaBody3]
kill @e[type=zombie,tag=DekuScrub3]
kill @e[type=zombie,tag=DekuScrub4]
kill @e[type=zombie,tag=DekuScrub5]
kill @e[type=zombie,tag=DekuScrub6]
kill @e[type=zombie,tag=DekuScrub7]
kill @e[type=zombie,tag=DekuScrub8]

#Lunge Babas
execute if block -578 70 -684 minecraft:air run fill -601 64 -624 -601 64 -624 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -601 64 -624 -601 64 -624 minecraft:grass_block
execute if block -578 70 -684 minecraft:air run fill -596 68 -611 -596 68 -611 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -596 68 -611 -596 68 -611 minecraft:grass_block
execute if block -578 70 -684 minecraft:air run fill -572 64 -619 -572 64 -619 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -572 64 -619 -572 64 -619 minecraft:smooth_sandstone
execute if block -578 70 -684 minecraft:air run fill -544 64 -628 -544 64 -628 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -544 64 -628 -544 64 -628 minecraft:grass_block
execute if block -578 70 -684 minecraft:air run fill -513 64 -642 -513 64 -642 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -513 64 -642 -513 64 -642 minecraft:grass_block
execute if block -578 70 -684 minecraft:air run fill -489 59 -642 -489 59 -642 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -489 59 -642 -489 59 -642 minecraft:grass_block
execute if block -578 70 -684 minecraft:air run fill -494 59 -665 -494 59 -665 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -494 59 -665 -494 59 -665 minecraft:grass_block
execute if block -578 70 -684 minecraft:air run fill -484 59 -621 -484 59 -621 minecraft:jungle_leaves[persistent=true]
execute if block -578 70 -684 minecraft:gold_block run fill -484 59 -621 -484 59 -621 minecraft:grass_block

#Npcs
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air run tp @e[type=armor_stand,tag=KnowItAllBrother4] -601.2 56.8 -611 -90 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air run data merge entity @e[type=armor_stand,tag=KnowItAllBrother4,limit=1] {Pose:{Head:[40f,0f,0f],RightLeg:[-40f,0f,0f],LeftLeg:[-40f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=KnowItAllBrother4] -599 57 -608 135 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=KnowItAllBrother4,limit=1] {Pose:{Head:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=KnowItAllBrother7] -588 55.3 -640.2
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother7,limit=1] {Pose:{RightArm:[20f,0f,0f],LeftArm:[20f,0f,0f],RightLeg:[-45f,0f,30f],LeftLeg:[-45f,0f,-30f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=KnowItAllBrother7] -585 65 -632
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother7,limit=1] {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=KnowItAllBrother3] -585.7 54.9 -638.3 50 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother3,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[20f,0f,0f],LeftArm:[20f,0f,0f],RightLeg:[-45f,0f,30f],LeftLeg:[-45f,0f,-30f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=KnowItAllBrother3] -557 65 -617 180 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother3,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air as @e[type=armor_stand,tag=KnowItAllBrother2] at @s run tp @s ~ 62 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block as @e[type=armor_stand,tag=KnowItAllBrother2] at @s run tp @s ~ 64.3 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=KnowItAllBrother2,limit=1] {Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air as @e[type=armor_stand,tag=KnowItAllBrother1] at @s run tp @s ~ 65 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block as @e[type=armor_stand,tag=KnowItAllBrother1] at @s run tp @s ~ 69 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air run tp @e[type=armor_stand,tag=Twin3] -553.8 53.3 -638.2 45 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air run data merge entity @e[type=armor_stand,tag=Twin3,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Twin3] -557.0 68.35 -634.2 0 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=Twin3,limit=1] {Pose:{Head:[30f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air run tp @e[type=armor_stand,tag=Twin2] -544 54 -608 -175 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Twin2] -579 65 -635 0 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:air run tp @e[type=armor_stand,tag=Twin1] -559 54.06250 -611 180 ~
execute if block -576 70 -684 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Twin1] -596 65 -626 -135 ~
execute unless block -555 72 -688 minecraft:gold_block if entity @a[tag=ZeldaOcarina] unless entity @a[tag=MidoSaria] run tp @e[type=armor_stand,tag=Mido] -559 75 -688
execute if block -555 72 -688 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=Mido] -555 75 -688
execute unless block -555 72 -688 minecraft:gold_block run fill -559 76 -688 -559 75 -688 minecraft:barrier
execute if block -555 72 -688 minecraft:gold_block run fill -559 76 -688 -559 75 -688 minecraft:air
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=Mido,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block as @e[type=zombie,tag=DekuScrubSeeds] at @s run tp @s -557 ~ ~
execute if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=Saria2] -569 79.3 -821.1
execute unless block -618 72 -676 minecraft:gold_block run tp @e[type=armor_stand,tag=Fado] -617 71 -671 -45 ~
execute if block -618 72 -676 minecraft:gold_block unless block -618 72 -680 minecraft:gold_block run tp @e[type=armor_stand,tag=Fado] -617 75 -671 -45 ~
execute if block -618 72 -680 minecraft:gold_block run tp @e[type=armor_stand,tag=Fado] -617 71 -671 -45 ~
execute unless block -618 72 -676 minecraft:gold_block run tp @e[type=armor_stand,tag=Grog2] -617 75 -671
execute if block -618 72 -676 minecraft:gold_block run tp @e[type=armor_stand,tag=Grog2] -617 71 -671
tp @e[type=armor_stand,tag=SkullKid1] -618 69 -672

#Text
scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother2] text 1
execute as @e[type=armor_stand,tag=KnowItAllBrother3] if block -578 70 -684 minecraft:air unless block -557 62 -617 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=KnowItAllBrother3] if block -578 70 -684 minecraft:air if block -557 62 -617 minecraft:gold_block run scoreboard players set @s text 2
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother3] text 3
execute if block -578 70 -684 minecraft:air run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother4] text 1
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother4] text 2
execute as @e[type=armor_stand,tag=KnowItAllBrother5] if block -578 70 -684 minecraft:air unless block -607 54 -607 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=KnowItAllBrother5] if block -578 70 -684 minecraft:air if block -607 54 -607 minecraft:gold_block run scoreboard players set @s text 2
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother5] text 3
execute as @e[type=armor_stand,tag=KnowItAllBrother6] if block -578 70 -684 minecraft:air unless block -609 54 -609 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=KnowItAllBrother6] if block -578 70 -684 minecraft:air if block -609 54 -609 minecraft:gold_block run scoreboard players set @s text 2
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother6] text 3
execute if block -578 70 -684 minecraft:air run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother7] text 1
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother7] text 2
execute as @e[type=armor_stand,tag=Twin1] if block -578 70 -684 minecraft:air unless block -596 62 -626 minecraft:gold_block run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=Twin1] if block -578 70 -684 minecraft:air if block -596 62 -626 minecraft:gold_block run scoreboard players set @s text 2
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Twin1] text 3
execute if block -578 70 -684 minecraft:air run scoreboard players set @e[type=armor_stand,tag=Twin2] text 1
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Twin2] text 2
scoreboard players set @e[type=armor_stand,tag=Twin3] text 1
execute if block -578 70 -684 minecraft:air run scoreboard players set @e[type=armor_stand,tag=FakeTwin3] text 0
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeTwin3] text 1
execute if block -578 70 -684 minecraft:air run scoreboard players set @e[type=armor_stand,tag=Twin4] text 1
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Twin4] text 2
execute if block -578 70 -684 minecraft:air run scoreboard players set @e[type=armor_stand,tag=Twin5] text 1
execute if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Twin5] text 2
execute unless block -559 72 -688 minecraft:gold_block unless block -555 72 -688 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Mido] text 5
execute if block -559 72 -688 minecraft:gold_block unless block -555 72 -688 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Mido] text 6
execute if block -555 72 -688 minecraft:gold_block unless block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Mido] text 7
execute if block -555 72 -688 minecraft:gold_block if block -578 70 -684 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Mido,scores={text=1..7}] text 8

#Sprout
execute unless entity @a[tag=ForestMedallion1,scores={click=..20}] if block -488 56 -641 minecraft:gold_block run tp @e[type=armor_stand,tag=Sprout] -489 60 -642

#Enemies
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=DekuScrub12]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=DekuScrub13]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=DekuScrub14]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=LungeBaba12]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=LungeBaba13]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=LungeBaba14]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=LungeBaba15]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=LungeBaba16]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=LungeBaba17]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=Octorok1]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=Octorok2]
execute if block -578 70 -684 minecraft:gold_block run kill @e[type=zombie,tag=Skulltula8]

#Cow
execute if entity @a[tag=GetCow] run fill -575 49 -605 -575 49 -605 minecraft:gold_block
execute if block -575 49 -605 minecraft:gold_block run tag @a remove GetCow
execute if block -575 49 -605 minecraft:gold_block unless entity @e[type=cow,tag=LinkCow] run summon minecraft:cow -575 51 -602 {Tags:["LinkCow","Cow"],Rotation:[0f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1,Silent:1b,DeathLootTable:"ocarina_of_time:entities/nothing"}

#Rupee Chest
execute if block -545 73 -643 minecraft:chest{Items:[]} run fill -546 69 -643 -546 69 -643 minecraft:gold_block

#Bean Spot
execute as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/kokiri_forest/bean_spots/loop
#1
fill -550 64 -638 -550 64 -638 minecraft:grass_block
#2
fill -633 68 -644 -633 68 -644 minecraft:grass_block
#3
fill -582 74 -705 -582 74 -705 minecraft:grass_block

#Rupee Convert
fill -630 65 -613 -630 65 -613 minecraft:air
tp @e[type=villager,tag=WoodsConvert1] -625 64 -611

fill -580 75 -694 -580 75 -694 minecraft:air
tp @e[type=villager,tag=WoodsConvert2] -579 74 -693
