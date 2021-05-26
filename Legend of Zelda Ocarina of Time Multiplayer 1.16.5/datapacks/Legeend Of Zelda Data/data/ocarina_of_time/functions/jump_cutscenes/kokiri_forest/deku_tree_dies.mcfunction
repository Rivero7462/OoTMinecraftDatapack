execute unless entity @a[tag=DeadDekuTree2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[tag=DeadDekuTree2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=1}] run tag @a add NoNavi
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=1}] run tag @s add StopTime
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=1}] run summon minecraft:armor_stand -507 67 -646 {Tags:["Navi2"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[-80f],CustomName:"\"Navi\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Well done, "},{"selector":"@p"},{"text":"..."}]
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=1}] run tp @a -512 65 -642
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=2}] run fill -511 66 -642 -511 66 -642 minecraft:barrier
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=2}] run fill -512 66 -643 -512 66 -643 minecraft:barrier
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=2}] run fill -513 66 -642 -513 66 -642 minecraft:barrier
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=2}] run fill -512 66 -641 -512 66 -641 minecraft:barrier
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=2}] run function ocarina_of_time:music/deku_tree
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Thou hast verily demonstrated thy courage..."}]
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Deku Tree: ","color":"gold"},{"text":"I knew thou wouldst be able to carry out my wishes..."}]
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Now I have more to tell thee..."}]
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Now...listen carefully... A "},{"text":"wicked man of the desert","color":"red"},{"text":" cast this dreadful curse upon me..."}]
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] at @a run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ .3 1
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run stopsound @a music
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run tp @a -497 50 -635.0
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run tag @a add StopParticles
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run stopsound @a music
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run tp @e[type=horse,tag=GanonHorse1] -490.0 50 -626
execute unless entity @a[tag=DeadDekuTree2] if entity @a[scores={click=9}] run tag @a add DeadDekuTree2
execute if entity @e[type=horse,tag=GanonHorse1] if entity @a[tag=DeadDekuTree2,scores={click=9}] run scoreboard objectives remove click

execute if entity @a[tag=DeadDekuTree2] unless entity @a[scores={click=6..}] run particle minecraft:flame -492 50.5 -635.0 .2 .4 5 0 20 normal
execute if entity @a[tag=DeadDekuTree2] run scoreboard players add @e[type=horse,tag=GanonHorse1,limit=1] timer 1
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=15..115}] as @e[type=horse,tag=GanonHorse1] at @s run tp @s -490.0 ~ ~-.2 180 ~
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=15..115}] at @e[type=horse,tag=GanonHorse1,limit=1] run tp @e[type=armor_stand,tag=Ganondorf3] ~ ~.8 ~
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=116..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=116..}] run scoreboard players set @a click 1
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=116..}] run kill @e[type=armor_stand,tag=Ganondorf3]
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=116..}] run kill @e[type=horse,tag=GanonHorse1]
execute if entity @e[type=horse,tag=GanonHorse1,scores={timer=116..}] run scoreboard players set @a timer 0

execute if entity @a[tag=DeadDekuTree2,scores={click=1}] run tellraw @a ["",{"text":"Deku Tree: ","color":"gold"},{"text":"This evil man ceaselessly uses his vile, sorcerous powers in his search for the Sacred Realm that is connected to Hyrule..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[tag=DeadDekuTree2,scores={click=3}] run tellraw @a ["",{"text":"Deku Tree: ","color":"gold"},{"text":"For it is in that Sacred Realm that one will find the divine relic, the "},{"text":"Triforce","color":"red"},{"text":", which contains the essence of the gods..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=3}] at @a run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ .3 1
execute if entity @a[tag=DeadDekuTree2,scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[tag=DeadDekuTree2,scores={click=5}] run tellraw @a ["",{"text":"Deku Tree: ","color":"gold"},{"text":"Before time began, before spirits and life existed..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=5}] run function ocarina_of_time:music/chamber_of_sages
execute if entity @a[tag=DeadDekuTree2,scores={click=5}] run tp @a -483 50 -636
execute if entity @a[tag=DeadDekuTree2,scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[tag=DeadDekuTree2,scores={click=7}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Three golden goddesses descended upon the chaos that was Hyrule..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=7}] run scoreboard players set @a click 8
execute unless entity @e[type=horse,tag=GanonHorse1] if entity @a[tag=DeadDekuTree2,scores={click=9}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Din, the goddess of power..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[tag=DeadDekuTree2,scores={click=11}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Nayru, the goddess of wisdom..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[tag=DeadDekuTree2,scores={click=13}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Farore, the goddess of courage..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[tag=DeadDekuTree2,scores={click=15}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Din... With her strong flaming arms, she cultivated the land and created the red earth."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[tag=DeadDekuTree2,scores={click=17}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Nayru... Poured her wisdom onto the earth and gave the spirit of law to the world."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[tag=DeadDekuTree2,scores={click=19}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Farore... With her rich soul, produced all life-forms who would uphold the law."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=19}] run clone -461 41 -645 -452 53 -631 -482 41 -645
execute if entity @a[tag=DeadDekuTree2,scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[tag=DeadDekuTree2,scores={click=21}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" The three goddesses, their labors completed, departed for the heavens."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[tag=DeadDekuTree2,scores={click=23}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" And golden sacred triangles remained at the point where the goddesses left the world."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=23}] run clone -451 41 -645 -442 53 -631 -482 41 -645
execute if entity @a[tag=DeadDekuTree2,scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[tag=DeadDekuTree2,scores={click=25}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Since then, the sacred triangles have become the basis of our world's providence."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[tag=DeadDekuTree2,scores={click=27}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" And the resting place of the triangles has become the Sacred Realm."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=27}] run tag @a remove StopParticles
execute if entity @a[tag=DeadDekuTree2,scores={click=27}] run function ocarina_of_time:music/deku_tree
execute if entity @a[tag=DeadDekuTree2,scores={click=27}] run tp @a -512 65 -642
execute if entity @a[tag=DeadDekuTree2,scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[tag=DeadDekuTree2,scores={click=29}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Thou must never allow the desert man in black armor to lay his hands on the sacred Triforce..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[tag=DeadDekuTree2,scores={click=31}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Thou must never suffer that man, with his evil heart, to enter the Sacred Realm of legend..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[tag=DeadDekuTree2,scores={click=33}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" That evil man who cast the death curse upon me and sapped my power..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[tag=DeadDekuTree2,scores={click=35}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Because of that curse, my end is nigh..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[tag=DeadDekuTree2,scores={click=37}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Though your valiant efforts to break the curse were successful, I was doomed before you started..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[tag=DeadDekuTree2,scores={click=39}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Yes, I will pass away soon... But do not grieve for me..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[tag=DeadDekuTree2,scores={click=41}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" I have been able to tell you of these important matters..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=41}] run scoreboard players set @a click 42
execute if entity @a[tag=DeadDekuTree2,scores={click=43}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" This is Hyrule's final hope..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=43}] run scoreboard players set @a click 44
execute if entity @a[tag=DeadDekuTree2,scores={click=45}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"... Go now to Hyrule Castle..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=45}] run scoreboard players set @a click 46
execute if entity @a[tag=DeadDekuTree2,scores={click=47}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" There thou wilt surely meet the "},{"text":"Princess of Destiny","color":"red"},{"text":"..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=47}] run scoreboard players set @a click 48
execute if entity @a[tag=DeadDekuTree2,scores={click=49}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Take "},{"text":"this stone","color":"red"},{"text":" with thee, the stone that man wanted so much that he cast the curse upon me..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=49}] run advancement grant @a only minecraft:_gear/kokiri_emerald
execute if entity @a[tag=DeadDekuTree2,scores={click=49}] run summon minecraft:item -506 75 -642 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Kokiri Emerald\"}"},Unbreakable:1b,Damage:6,HideFlags:63,KokiriEmerald:1b}},Tags:["NoPickup"]}
execute if entity @a[tag=DeadDekuTree2,scores={click=49}] run fill -506 66 -642 -506 66 -642 minecraft:barrier
execute if entity @a[tag=DeadDekuTree2,scores={click=49}] run scoreboard players set @a click 50
execute if entity @a[tag=DeadDekuTree2,scores={click=51}] run tellraw @a ["",{"text":"You got the "},{"text":"Kokiri's Emerald","color":"green"},{"text":"! This is the Spiritual Stone of the Forest, now entrusted to you by the Great Deku Tree."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[tag=DeadDekuTree2,scores={click=53}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" The future depends upon thee, "},{"selector":"@p"},{"text":"... Thou art courageous..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=53}] run scoreboard players set @a click 54
execute if entity @a[tag=DeadDekuTree2,scores={click=55}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Navi the fairy... Help "},{"selector":"@p"},{"text":" to carry out my will..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=55}] run fill -506 66 -642 -506 66 -642 minecraft:air
execute if entity @a[tag=DeadDekuTree2,scores={click=55}] run kill @e[type=item,nbt={Item:{tag:{KokiriEmerald:1b}}}]
execute if entity @a[tag=DeadDekuTree2,scores={click=55}] run scoreboard players set @a click 56
execute if entity @a[tag=DeadDekuTree2,scores={click=57}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" I entreat thee... Navi... Good...bye..."}]
execute if entity @a[tag=DeadDekuTree2,scores={click=57}] run stopsound @a music
execute if entity @a[tag=DeadDekuTree2,scores={click=57}] run tag @a add DeadDekuTree3
execute if entity @a[tag=DeadDekuTree2,scores={click=57}] at @a run playsound minecraft:item.crossbow.loading_start ambient @a ~ ~ ~ 1 .5
execute if entity @a[tag=DeadDekuTree2,scores={click=57}] run scoreboard players set @a click 58
execute if entity @a[tag=DeadDekuTree2,scores={click=59}] run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" Let's go to Hyrule Castle, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! Good-bye...Great Deku Tree...","color":"aqua"}]
execute if entity @a[tag=DeadDekuTree2,scores={click=59}] run scoreboard players set @a click 60

execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=3..}] run scoreboard players set @s lifetime 3
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run kill @e[type=armor_stand,tag=Navi2]
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run fill -511 66 -643 -513 66 -641 minecraft:air
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run tag @a remove DeadDekuTree2
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run tp @e[type=armor_stand,tag=Mido] -542 65 -628 270 ~
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run scoreboard players set @a timer 0
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run scoreboard players set @a GameTimer 0
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run scoreboard players set @e[type=armor_stand,tag=Mido] text 0
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run tag @a add MidoDeadDekuTree
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run spawnpoint @a -568 70 -704
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run tp @a -537 65 -628 90 ~

execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run function ocarina_of_time:music/kokiri_forest
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run tag @a remove DeadDekuTree
execute if entity @a[scores={click=60..}] if entity @a[tag=!DeadDekuTree3] run scoreboard objectives remove click

execute if entity @a[tag=DeadDekuTree3] run scoreboard players add @a GameTimer 1
execute if entity @a[scores={GameTimer=1..3}] run fill -494 60 -616 -444 60 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=4..6}] run fill -494 61 -616 -444 61 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=7..9}] run fill -494 62 -616 -444 62 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=10..12}] run fill -494 63 -616 -444 63 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=13..15}] run fill -494 64 -616 -444 64 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=16..18}] run fill -494 65 -616 -444 65 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=19..21}] run fill -494 66 -616 -444 66 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=22..24}] run fill -494 67 -616 -444 67 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=25..27}] run fill -494 68 -616 -444 68 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=25..27}] run fill -494 68 -616 -444 68 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=28..30}] run fill -494 69 -616 -444 69 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=28..30}] run fill -494 69 -616 -444 69 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=31..33}] run fill -494 70 -616 -444 70 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=31..33}] run fill -494 70 -616 -444 70 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=34..36}] run fill -494 71 -616 -444 71 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=34..36}] run fill -494 71 -616 -444 71 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=37..39}] run fill -494 72 -616 -444 72 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=37..39}] run fill -494 72 -616 -444 72 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=40..42}] run fill -494 73 -616 -444 73 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=40..42}] run fill -494 73 -616 -444 73 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=43..45}] run fill -494 74 -616 -444 74 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=46..48}] run fill -494 75 -616 -444 75 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=49..51}] run fill -494 76 -616 -444 76 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=52..54}] run fill -494 77 -616 -444 77 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=52..54}] run fill -494 77 -616 -444 77 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=55..57}] run fill -494 78 -616 -444 78 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=55..57}] run fill -494 78 -616 -444 78 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=58..60}] run fill -494 79 -616 -444 79 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=58..60}] run fill -494 79 -616 -444 79 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=61..63}] run fill -494 80 -616 -444 80 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=61..63}] run fill -494 80 -616 -444 80 -663 minecraft:light_gray_concrete replace minecraft:dark_oak_wood
execute if entity @a[scores={GameTimer=64..66}] run fill -494 81 -616 -444 81 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=67..69}] run fill -494 82 -616 -444 82 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=70..72}] run fill -494 83 -616 -444 83 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=73..75}] run fill -494 84 -616 -444 84 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=76..78}] run fill -494 85 -616 -444 85 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=79..81}] run fill -494 86 -616 -444 86 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=82..84}] run fill -494 87 -616 -444 87 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=85..87}] run fill -494 88 -616 -444 88 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=88..90}] run fill -494 89 -616 -444 89 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=91..93}] run fill -494 90 -616 -444 90 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=94..96}] run fill -494 91 -616 -444 91 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=97..99}] run fill -494 92 -616 -444 92 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=100..102}] run fill -494 93 -616 -444 93 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=103..105}] run fill -494 94 -616 -444 94 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=106..108}] run fill -494 95 -616 -444 95 -663 minecraft:acacia_wood replace minecraft:oak_wood
execute if entity @a[scores={GameTimer=109..}] run tag @a remove NoNavi
execute if entity @a[scores={GameTimer=109..}] run tag @a remove DeadDekuTree3

execute at @e[type=horse,tag=GanonHorse1,limit=1] run tp @e[type=armor_stand,tag=Ganondorf3] ~ ~.8 ~

kill @e[type=wither_skeleton,tag=DekuBabaBody]

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi1] timer 1
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 67 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi1] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
