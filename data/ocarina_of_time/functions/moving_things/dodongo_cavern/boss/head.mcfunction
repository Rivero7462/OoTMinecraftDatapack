execute unless entity @s[tag=Stun] unless entity @s[tag=Wait] unless entity @s[tag=Spin] unless entity @s[tag=Fireball1] unless entity @s[tag=Roll] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Wait] unless entity @s[tag=Spin] unless entity @s[tag=Fireball1] unless entity @s[tag=Roll] run scoreboard players add @s GameTimer 1

#Spin
execute if entity @s[tag=Spin] run tag @s remove Wait
execute if entity @s[tag=Spin] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={ArrowCount=1}] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 unless entity @s[distance=..0.9] at @s if block ^-4 ^ ^ minecraft:air run tag @s add Right
execute if entity @s[scores={ArrowCount=1}] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.9] at @s unless block ^-4 ^ ^ minecraft:air run tag @s add FullRight
execute if entity @s[scores={ArrowCount=1}] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 unless entity @s[distance=..0.9] at @s if block ^4 ^ ^ minecraft:air run tag @s add Left
execute if entity @s[scores={ArrowCount=1}] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.9] at @s unless block ^4 ^ ^ minecraft:air run tag @s add FullLeft
#Right
execute if entity @s[tag=Right,scores={ArrowCount=2..10}] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=Right,scores={ArrowCount=2..10}] run scoreboard players set @s timer 0
execute if entity @s[tag=Right,scores={ArrowCount=11..}] run tag @s remove Spin
#Full Right
execute if entity @s[tag=FullRight,scores={ArrowCount=2..19}] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=FullRight,scores={ArrowCount=2..19}] run scoreboard players set @s timer 0
execute if entity @s[tag=FullRight,scores={ArrowCount=20..}] run tag @s remove Spin
#Left
execute if entity @s[tag=Left,scores={ArrowCount=2..10}] run tp @s ~ ~ ~ ~-10 ~
execute if entity @s[tag=Left,scores={ArrowCount=2..10}] run scoreboard players set @s timer 0
execute if entity @s[tag=Left,scores={ArrowCount=11..}] run tag @s remove Spin
#Full Left
execute if entity @s[tag=FullLeft,scores={ArrowCount=2..19}] run tp @s ~ ~ ~ ~-10 ~
execute if entity @s[tag=FullLeft,scores={ArrowCount=2..19}] run scoreboard players set @s timer 0
execute if entity @s[tag=FullLeft,scores={ArrowCount=20..}] run tag @s remove Spin

#Move forward
execute if entity @s[scores={timer=1}] run scoreboard players set @s ArrowCount 0
execute if entity @s[scores={timer=1}] run tag @s remove Right
execute if entity @s[scores={timer=1}] run tag @s remove FullRight
execute if entity @s[scores={timer=1}] run tag @s remove Left
execute if entity @s[scores={timer=1}] run tag @s remove FullLeft
execute if entity @s[scores={timer=1..50}] run tp @s ^ ^ ^.15

#Walking
execute if entity @s[scores={timer=51..}] positioned ^ ^ ^5 unless entity @a[distance=..4] at @s run tp @s ^ ^ ^.05
#Turn
execute if entity @s[scores={timer=51..}] unless block ^ ^ ^3.9 minecraft:air run tag @s add Spin
execute if entity @s[scores={timer=51..}] unless block ^ ^ ^3.9 minecraft:air unless entity @s[scores={ArrowCount=1..}] run scoreboard players set @s ArrowCount 1
execute if entity @s[scores={timer=51..}] unless block ^ ^ ^3.9 minecraft:air if block ^-4 ^ ^ minecraft:air run tag @s add Right
execute if entity @s[scores={timer=51..}] unless block ^ ^ ^3.9 minecraft:air if block ^4 ^ ^ minecraft:air run tag @s add Left

#Fireball
execute if entity @s[scores={timer=51..}] positioned ^ ^ ^5 if entity @a[distance=..4] run tag @s add Fireball1
execute unless entity @s[tag=Stun] if entity @s[tag=Fireball1] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:dead_fire_coral_fan,Count:1b,tag:{CustomModelData:2}}]}

execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1..70}] run particle minecraft:flame ~ ~2 ~ .3 .3 .3 0.01 5
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=71}] run summon minecraft:armor_stand ~ ~.5 ~ {Tags:["Fireball"],ArmorItems:[{},{},{},{id:netherrack,Count:1b}],NoGravity:1b,Invisible:1b}
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=100}] run data merge entity @s {ArmorItems:[{},{},{},{id:dead_fire_coral_fan,Count:1b,tag:{CustomModelData:1}}]}
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=130}] run tag @s remove Fireball1
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=130}] run tag @s add Roll

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] unless entity @e[type=armor_stand,tag=Bomb] run tag @a remove Holding
execute if entity @s[scores={time=1}] run tag @e[type=ravager,tag=DodongoHealth] add Stun
execute if entity @s[scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={time=1}] run tag @e[type=armor_stand,tag=DodongoBody] add Attack
execute if entity @s[scores={time=1}] run tag @s remove Fireball1
execute if entity @s[scores={time=1}] run kill @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}}]
execute if entity @s[scores={time=1}] run tag @a remove Holding
execute if entity @s[scores={time=1}] run scoreboard objectives remove HoldingBomb
execute if entity @s[scores={time=1}] run kill @e[type=armor_stand,tag=Bomb]
execute if entity @s[scores={time=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:dead_fire_coral_fan,Count:1b,tag:{CustomModelData:1}}]}
execute if entity @s[scores={time=20}] run data merge entity @e[type=ravager,tag=DodongoHealth,limit=1] {Invulnerable:0b}
execute if entity @s[scores={time=20..140}] run particle minecraft:falling_dust blue_wool ^ ^1 ^-3 2 2 2 1 3
execute if entity @s[scores={time=140..}] run data merge entity @e[type=ravager,tag=DodongoHealth,limit=1] {Invulnerable:1b}
execute if entity @s[scores={time=140..}] run tag @s add Roll
execute if entity @s[scores={time=140..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Roll
execute if entity @s[scores={timer=51..}] unless entity @a[distance=..25] run tag @s add Roll
execute if entity @s[tag=!Spin,scores={timer=51..}] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.4142] run tag @s add Roll

execute if entity @s[tag=Roll] run scoreboard players set @s timer 0
execute if entity @s[tag=Roll] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Roll] run summon minecraft:armor_stand ^ ^1 ^-2 {Tags:["DodongoRoll"],Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:chorus_plant,Count:1b}],NoGravity:1b,Invisible:1b}
execute if entity @s[tag=Roll] run tag @s add Wait
execute if entity @s[tag=Wait] run tag @s remove Roll

#Attack
execute unless entity @s[tag=Roll] unless entity @s[tag=Stun] positioned ^ ^ ^-2 if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true

#Sounds
execute if entity @s[scores={lifetime=1}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 .6
execute if entity @s[scores={lifetime=7}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 .7
execute if entity @s[scores={lifetime=14}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 .8
execute if entity @s[scores={lifetime=21}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 .9
execute if entity @s[scores={lifetime=28}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={lifetime=35}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.1
execute if entity @s[scores={lifetime=42}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.2
execute if entity @s[scores={lifetime=49}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.3
execute if entity @s[scores={lifetime=56}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.4
execute if entity @s[scores={lifetime=63}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.5
execute if entity @s[scores={lifetime=70}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={time=20}] run playsound entity.generic.explode block @p ~ ~ ~ 1 .6
execute if entity @s[scores={time=23}] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=1}] run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=1}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=20..}] run scoreboard players set @s GameTimer 0
