execute unless entity @s[team=Rock] run team join Rock @s
playsound minecraft:entity.player.burp ambient @a ~ ~ ~ .1 2
scoreboard players add @s timer 1
scoreboard players add @s time 1
#Start
execute if entity @s[scores={timer=1}] rotated as @a run tag @s add MirrorCeiling
execute if entity @s[scores={timer=1}] rotated as @a run function ocarina_of_time:items/bombchu/floor
execute if entity @s[scores={timer=1..2}] at @s facing entity @a feet rotated ~180 0 run tp @s ~ ~ ~ ~ 0
#Rotation
execute store result score @s lifetime run data get entity @s Rotation[0]
execute store result score @s GameTimer run data get entity @s Rotation[0]

#Floor
execute if entity @s[tag=Floor,scores={timer=6..,time=4..}] at @s run tp @s ^ ^ ^.2
execute if entity @s[tag=Floor,scores={timer=6..,time=6..}] unless block ^ ^ ^.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_up
execute if entity @s[tag=Floor,scores={timer=6..,time=6..}] unless block ^-.2 ^ ^.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_up
execute if entity @s[tag=Floor,scores={timer=6..,time=6..}] unless block ^.2 ^ ^.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_up
execute if entity @s[tag=Floor,scores={timer=6..,time=6..}] if block ^ ^ ^.4 #ocarina_of_time:bombchu if block ^ ^-.4 ^.1 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_down

#Wall Up
execute if entity @s[tag=WallUp,scores={timer=6..,time=1}] unless block ~-.5 ~ ~ #ocarina_of_time:bombchu if block ~.5 ~ ~ #ocarina_of_time:bombchu at @s run tp @s ^ ^.2 ^ 90 ~
execute if entity @s[tag=WallUp,scores={timer=6..,time=1}] unless block ~.5 ~ ~ #ocarina_of_time:bombchu if block ~-.5 ~ ~ #ocarina_of_time:bombchu at @s run tp @s ^ ^.2 ^ -90 ~
execute if entity @s[tag=WallUp,scores={timer=6..,time=1}] unless block ~ ~ ~.5 #ocarina_of_time:bombchu if block ~ ~ ~-.5 #ocarina_of_time:bombchu at @s run tp @s ^ ^.2 ^ 0 ~
execute if entity @s[tag=WallUp,scores={timer=6..,time=1}] unless block ~ ~ ~-.5 #ocarina_of_time:bombchu if block ~ ~ ~.5 #ocarina_of_time:bombchu at @s run tp @s ^ ^.2 ^ 180 ~

execute if entity @s[tag=WallUp,scores={timer=6..,time=4..}] at @s run tp @s ^ ^.2 ^

execute if entity @s[tag=WallUp,scores={timer=6..,time=6..}] unless block ^ ^.4 ^ #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/ceiling
execute if entity @s[tag=WallUp,scores={timer=6..,time=6..}] if block ^ ^.4 ^ #ocarina_of_time:bombchu if block ^ ^.1 ^.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/floor

execute if entity @s[tag=WallUp,scores={timer=6..,time=6..}] if block ~ ~ ~.5 #ocarina_of_time:bombchu if block ~ ~ ~-.5 #ocarina_of_time:bombchu run tag @s add NorthSouth
execute if entity @s[tag=WallUp,scores={timer=6..,time=6..}] if block ~.5 ~ ~ #ocarina_of_time:bombchu if block ~-.5 ~ ~ #ocarina_of_time:bombchu run tag @s add EastWest

#Wall Down
execute if entity @s[tag=WallDown,scores={timer=6..,time=1}] unless block ~-.5 ~ ~ #ocarina_of_time:bombchu if block ~.5 ~ ~ #ocarina_of_time:bombchu at @s run tp @s ^ ^-.2 ^ -90 ~
execute if entity @s[tag=WallDown,scores={timer=6..,time=1}] unless block ~.5 ~ ~ #ocarina_of_time:bombchu if block ~-.5 ~ ~ #ocarina_of_time:bombchu at @s run tp @s ^ ^-.2 ^ 90 ~
execute if entity @s[tag=WallDown,scores={timer=6..,time=1}] unless block ~ ~ ~.5 #ocarina_of_time:bombchu if block ~ ~ ~-.5 #ocarina_of_time:bombchu at @s run tp @s ^ ^-.2 ^ 180 ~
execute if entity @s[tag=WallDown,scores={timer=6..,time=1}] unless block ~ ~ ~-.5 #ocarina_of_time:bombchu if block ~ ~ ~.5 #ocarina_of_time:bombchu at @s run tp @s ^ ^-.2 ^ 0 ~

execute if entity @s[tag=WallDown,scores={timer=6..,time=4..}] at @s run tp @s ^ ^-.2 ^

execute if entity @s[tag=WallDown,scores={timer=6..,time=6..}] unless block ^ ^-.4 ^ #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/floor
execute if entity @s[tag=WallDown,scores={timer=6..,time=6..}] if block ^ ^-.4 ^ #ocarina_of_time:bombchu if block ^ ^-.2 ^-.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/ceiling

execute if entity @s[tag=WallDown,scores={timer=6..,time=6..}] if block ~ ~ ~.5 #ocarina_of_time:bombchu if block ~ ~ ~-.5 #ocarina_of_time:bombchu run tag @s add NorthSouth
execute if entity @s[tag=WallDown,scores={timer=6..,time=6..}] if block ~.5 ~ ~ #ocarina_of_time:bombchu if block ~-.5 ~ ~ #ocarina_of_time:bombchu run tag @s add EastWest

#Ceiling
execute if entity @s[tag=Ceiling,scores={timer=6..,time=4..}] at @s run tp @s ^ ^ ^-.2
execute if entity @s[tag=Ceiling,scores={timer=6..,time=6..}] unless block ^ ^ ^-.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_down
execute if entity @s[tag=Ceiling,scores={timer=6..,time=6..}] unless block ^-.4 ^ ^-.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_down
execute if entity @s[tag=Ceiling,scores={timer=6..,time=6..}] unless block ^.4 ^ ^-.4 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_down
execute if entity @s[tag=Ceiling,scores={timer=6..,time=6..}] if block ^ ^ ^-.4 #ocarina_of_time:bombchu if block ^ ^.4 ^-.15 #ocarina_of_time:bombchu run function ocarina_of_time:items/bombchu/wall_up

#Enemies
execute if entity @s[scores={timer=1..250}] if entity @e[type=!area_effect_cloud,type=!player,tag=!Bombchu,distance=..1] unless entity @s[scores={timer=250..}] run scoreboard players set @s timer 250
execute if entity @s[scores={timer=1..250}] if block ^ ^ ^.3 minecraft:mossy_cobblestone run scoreboard players set @s timer 250
execute if entity @s[scores={timer=1..250}] if block ^ ^ ^-.3 minecraft:mossy_cobblestone run scoreboard players set @s timer 250
execute if entity @s[scores={timer=1..250}] if block ^ ^.3 ^ minecraft:mossy_cobblestone run scoreboard players set @s timer 250
execute if entity @s[scores={timer=1..250}] if block ^ ^-.3 ^ minecraft:mossy_cobblestone run scoreboard players set @s timer 250

#Water
execute if block ~ ~ ~ minecraft:water run kill @s

execute if entity @s[scores={timer=250..}] run effect give @a[distance=..1.5] minecraft:wither 1 1 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=LungeBaba,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=LarvaHealth,distance=..1.5] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] run tag @e[type=zombie,tag=Beamos,distance=..1.5] add Dead
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=BabyDodongo,distance=..1.5] run tag @s add Kill
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.5] at @s if entity @s[tag=Attack] run tag @s add Kill
execute if entity @s[scores={timer=250..}] run effect give @e[type=zombie,tag=Resist,tag=Armos,distance=..1.5] minecraft:wither 1 1 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.5] run tag @s add Attack
execute if entity @s[scores={timer=250..}] run data merge entity @e[type=zombie,tag=Dodongo,distance=..1.5,limit=1] {Invulnerable:0b}
execute if entity @s[scores={timer=250..}] run effect give @e[type=zombie,tag=Dodongo,distance=..1.5] minecraft:instant_health 1 1 true
execute if entity @s[scores={timer=250..}] run tag @e[type=zombie,tag=Octorok,distance=..1.5] add Kill
execute if entity @s[scores={timer=250..}] run tag @e[type=zombie,tag=Shabom,distance=..1.5] add Kill
execute if entity @s[scores={timer=250..}] run tag @e[type=zombie,tag=Biri,distance=..1.5] add Kill
execute if entity @s[scores={timer=250..}] run tag @e[type=zombie,tag=Bari,distance=..1.5] add Kill
execute if entity @s[scores={timer=250..}] run tag @e[type=zombie,tag=Stinger,distance=..1.5] add Kill
execute if entity @s[scores={timer=250..}] run tag @e[type=armor_stand,tag=Goron11,distance=..1.5] add Wait
execute if entity @s[scores={timer=250..}] run tag @e[type=armor_stand,tag=Goron12,distance=..1.5] add Wait
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=WallSkull,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=GoldSkull,distance=..1.5] unless entity @s[nbt={Invulnerable:1b}] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Skulltula,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Tektite,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=bat,tag=Keese,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Poe,distance=..1.5] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=DekuScrub,distance=..1.5] run tag @s add Scared
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=DekuScrub,tag=Scared,distance=..1.5,scores={lifetime=15..}] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=armor_stand,tag=BusinessScrub,scores={timer=2..},distance=..3] run tag @s add Appear
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Stalchild,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Peahat,distance=..1.5] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={timer=250..}] as @e[type=wither_skeleton,tag=ClubMoblin,distance=..1.5] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=wither_skeleton,tag=Moblin,distance=..1.5] run tag @s add Kill
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Stalfos,distance=..1.5] unless entity @s[tag=Block] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Wallmaster,distance=..1.5,scores={timer=131..180}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Floormaster,distance=..1.5] unless entity @s[scores={timer=40..75}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=BlueBubble,tag=Ground,distance=..1.5] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=GreenBubble,distance=..1.5] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=FlyingTile,distance=..1.5] run tag @s add Kill
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=LikeLike,distance=..1.5] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Switch,distance=..2] run tag @s remove Off
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=DoorMimic,distance=..2] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=wither_skeleton,tag=FlareDancer,distance=..1.5] run tag @s add Headless
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=FlareDancer,distance=..1.5] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Spike,distance=..1.5,tag=!Stun] run tag @s add Stun
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Spike,distance=..1.5,tag=Stun] run tag @s add Kill
execute if entity @s[scores={timer=250..}] as @e[type=ravager,tag=BongoBongo,distance=..1.5] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=chicken,tag=Cucco,distance=..1] run tag @s add Stun
execute if entity @s[scores={timer=250..}] as @e[type=armor_stand,tag=GerudoThief,distance=..1] if entity @e[type=zombie,tag=GerudoThief,tag=Resist] run tag @s add DoBlock
execute if entity @s[scores={timer=250..}] as @e[type=armor_stand,tag=GerudoThief,distance=..1] if entity @e[type=zombie,tag=GerudoThief,tag=!Resist] run tag @s add Damage2
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Wolfos,tag=Resist,distance=..3] run scoreboard players set @s lifetime 200
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Wolfos,tag=!Resist,distance=..3] run tag @s add Damage2
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Leever,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Guay,distance=..3] run kill @s
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=IronKnuckle,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=armor_stand,tag=GossipStone,distance=..3] run tag @s add Rocket
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=FlyingPot,tag=Attack,distance=..3] run tag @s add Rocket
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Leever,distance=..3] run effect give @s minecraft:wither 1 1 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Lizalfos,tag=!JumpAttack,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=250..}] as @e[type=zombie,tag=Lizalfos,tag=!JumpOver,distance=..3] run effect give @a minecraft:instant_health 1 0 true

#Finish
execute if entity @s[scores={timer=250..}] run fill ~-2 ~-3 ~-2 ~2 ~6 ~2 minecraft:air replace minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:water run kill @s
execute if entity @s[scores={timer=250..}] run particle minecraft:explosion ~ ~.5 ~ 1 1 1 0 5
execute if entity @s[scores={timer=250..}] at @a run playsound entity.generic.explode block @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=250..}] run kill @s
