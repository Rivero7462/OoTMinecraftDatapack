#Grass
fill -596 69 -608 -595 69 -608 minecraft:air replace grass
fill -595 69 -606 -595 69 -607 minecraft:air replace minecraft:grass
fill -596 69 -606 -597 69 -606 minecraft:air replace minecraft:grass
fill -597 69 -607 -597 69 -607 minecraft:air replace minecraft:grass
fill -553 65 -618 -555 65 -616 minecraft:air replace minecraft:grass

fill -557 65 -618 -557 65 -618 minecraft:large_fern

#Signs
execute unless block -597 69 -596 minecraft:dark_oak_sign run clone -597 66 -596 -597 66 -596 -597 69 -596
execute unless block -597 69 -615 minecraft:dark_oak_sign run clone -597 66 -615 -597 66 -615 -597 69 -615

#Water Level
fill -581 73 -745 -584 73 -742 minecraft:dirt
fill -581 73 -760 -578 73 -763 minecraft:dirt

#Deku Tree
execute if block -486 69 -642 minecraft:acacia_wood run fill -484 61 -645 -484 69 -645 minecraft:air replace minecraft:acacia_wood
execute if block -486 69 -642 minecraft:acacia_wood run fill -484 69 -639 -484 61 -639 minecraft:air replace minecraft:acacia_wood
execute if block -486 69 -642 minecraft:acacia_wood run fill -485 70 -640 -486 61 -644 minecraft:air

#Kill
kill @e[type=zombie,tag=DekuScrub12]
kill @e[type=zombie,tag=DekuScrub13]
kill @e[type=zombie,tag=DekuScrub14]
kill @e[type=zombie,tag=LungeBaba12]
kill @e[type=zombie,tag=LungeBaba13]
kill @e[type=zombie,tag=LungeBaba14]
kill @e[type=zombie,tag=LungeBaba15]
kill @e[type=zombie,tag=LungeBaba16]
kill @e[type=zombie,tag=LungeBaba17]
kill @e[type=zombie,tag=LungeBaba18]
kill @e[type=zombie,tag=LungeBaba19]
kill @e[type=zombie,tag=Octorok1]
kill @e[type=zombie,tag=Octorok2]
kill @e[type=zombie,tag=Skulltula8]

#Lunge Babas
fill -601 64 -624 -601 64 -624 minecraft:grass_block
fill -596 68 -611 -596 68 -611 minecraft:grass_block
fill -572 64 -619 -572 64 -619 minecraft:smooth_sandstone
fill -544 64 -628 -544 64 -628 minecraft:grass_block
fill -513 64 -642 -513 64 -642 minecraft:grass_block
fill -489 59 -642 -489 59 -642 minecraft:grass_block
fill -494 59 -665 -494 59 -665 minecraft:grass_block
fill -484 59 -621 -484 59 -621 minecraft:grass_block

#Npcs
execute if block -576 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=KnowItAllBrother4] -599 57 -608 135 ~
execute if block -576 70 -684 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=KnowItAllBrother4,limit=1] {Pose:{Head:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=KnowItAllBrother7] -585 65 -632
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother7,limit=1] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
#tp @e[type=armor_stand,tag=KnowItAllBrother7] -585 64.6 -632 0 ~
#data merge entity @e[type=armor_stand,tag=KnowItAllBrother7,limit=1] {Pose:{Head:[20f,0f,0f],RightLeg:[-40f,0f,40f],LeftLeg:[-40f,0f,-40f],RightArm:[-40f,0f,-30f],LeftArm:[-40f,0f,30f]}}
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=KnowItAllBrother3] -557 64.6 -617 180 ~
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother3,limit=1] {Pose:{Head:[30f,0f,0f],LeftArm:[-30f,0f,30f],RightArm:[-30f,0f,-30f],LeftLeg:[-30f,0f,-30f],RightLeg:[-30f,0f,30f]}}
#tp @e[type=armor_stand,tag=KnowItAllBrother3] -557 64.6 -617 180 ~
#data merge entity @e[type=armor_stand,tag=KnowItAllBrother3,limit=1] {Pose:{Head:[30f,0f,0f],RightLeg:[-30f,0f,40f],LeftLeg:[-30f,0f,-40f],RightArm:[-30f,0f,-30f],LeftArm:[-30f,0f,30f]}}
execute if block -576 70 -684 minecraft:gold_block as @e[type=armor_stand,tag=KnowItAllBrother2] at @s run tp @s ~ 65 ~
execute if block -576 70 -684 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=KnowItAllBrother2,limit=1] {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block as @e[type=armor_stand,tag=KnowItAllBrother1] at @s run tp @s ~ 69 ~
execute if block -576 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Twin3] -557.0 68.35 -634.2 0 ~
execute if block -576 70 -684 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=Twin3,limit=1] {Pose:{Head:[30f,0f,0f]}}
execute if block -576 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Twin2] -579 65 -635 0 ~
execute if block -576 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Twin1] -596 65 -626 -135 ~
execute if block -576 70 -684 minecraft:gold_block run tp @e[type=armor_stand,tag=Fado] -576 71 -627.0 -90 ~
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=Mido] -590 57 -640
execute if block -576 70 -684 minecraft:gold_block if entity @a[tag=ZeldaOcarina] run data merge entity @e[type=armor_stand,tag=Mido,limit=1] {Pose:{Head:[40f,0f,0f]}}
fill -559 76 -688 -559 75 -688 minecraft:air
execute if block -576 70 -684 minecraft:gold_block as @e[type=zombie,tag=DekuScrubSeeds] at @s run tp @s -560 ~ ~
execute if entity @a[tag=ZeldaOcarina] run tp @e[type=armor_stand,tag=Saria2] -569 83.3 -821.1
tp @e[type=armor_stand,tag=Grog2] -617 71 -671
tp @e[type=armor_stand,tag=SkullKid1] -618 78 -672

#Text
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother2] text 4
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother3] text 4
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother4] text 1
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother5] text 1
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother6] text 1
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=KnowItAllBrother7] text 3
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Twin1] text 4
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Twin2] text 4
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Twin3] text 3
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=FakeTwin3] text 3
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Twin4] text 2
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Twin5] text 2
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Mido] text 4

#Sprout
execute unless entity @a[tag=StaffRole] run tp @e[type=armor_stand,tag=Sprout] -488 56 -642

#Cow
execute if block -575 49 -605 minecraft:gold_block run kill @e[type=cow,tag=LinkCow]

#Bean Spot
#1
fill -550 64 -638 -550 64 -638 minecraft:farmland[moisture=0]
execute if entity @a[x=-550,y=65,z=-638,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean6] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned -550 65 -638 run function ocarina_of_time:items/magic_bean
execute if block -550 65 -638 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean6] run tag @s add PlantBean6
#2
fill -633 68 -644 -633 68 -644 minecraft:farmland[moisture=0]
execute if entity @a[x=-633,y=69,z=-644,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean7] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned -633 69 -644 run function ocarina_of_time:items/magic_bean
execute if block -633 69 -644 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean7] run tag @s add PlantBean7
#3
fill -582 74 -705 -582 74 -705 minecraft:farmland[moisture=0]
execute if entity @a[x=-582,y=75,z=-705,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean8] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned -582 75 -705 run function ocarina_of_time:items/magic_bean
execute if block -582 75 -705 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean8] run tag @s add PlantBean8

#Rupee Convert
execute if block -630 65 -613 minecraft:air run clone -625 65 -611 -625 65 -611 -630 65 -613
tp @e[type=villager,tag=WoodsConvert1] -630 64 -613

execute if block -580 75 -694 minecraft:air run clone -579 75 -693 -579 75 -693 -580 75 -694
tp @e[type=villager,tag=WoodsConvert2] -580 74 -694

#Gold Skulltula
#1
execute unless block -638 69 -647 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-634,y=69,z=-645,dx=2,dz=2] run summon minecraft:zombie -631 69 -644 {Tags:["GoldSkull18","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block -638 69 -647 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-634,y=69,z=-645,dx=2,dz=2] run fill -638 69 -647 -638 69 -647 minecraft:gold_block
execute unless block -638 69 -647 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-634,y=69,z=-645,dx=2,dz=2] run kill @s
#2
execute unless block -582 74 -708 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-583,y=75,z=-706,dx=2,dz=2] run summon minecraft:zombie -582 75 -707 {Tags:["GoldSkull19","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block -582 74 -708 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-583,y=75,z=-706,dx=2,dz=2] run fill -582 74 -708 -582 74 -708 minecraft:gold_block
execute unless block -582 74 -708 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-583,y=75,z=-706,dx=2,dz=2] run kill @s
#3
execute unless block -549 64 -642 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-551,y=65,z=-639,dx=2,dz=2] run summon minecraft:zombie -550 65 -636 {Tags:["GoldSkull20","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block -549 64 -642 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-551,y=65,z=-639,dx=2,dz=2] run fill -549 64 -642 -549 64 -642 minecraft:gold_block
execute unless block -549 64 -642 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=-551,y=65,z=-639,dx=2,dz=2] run kill @s
