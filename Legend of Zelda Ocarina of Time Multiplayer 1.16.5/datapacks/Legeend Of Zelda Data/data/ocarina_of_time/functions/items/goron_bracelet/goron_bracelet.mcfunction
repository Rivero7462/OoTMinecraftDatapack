execute if entity @a[tag=Holding] run scoreboard players add @s timer 1
execute if entity @a[tag=Holding] run particle smoke ~ ~.5 ~ 0 0 0 0 1
execute if entity @a[tag=Holding] unless entity @s[scores={timer=2..}] run playsound entity.tnt.primed block @p ~ ~ ~
execute if entity @a[tag=Holding] run scoreboard objectives add HoldingBomb minecraft.custom:minecraft.sneak_time
execute at @a if entity @a[tag=Holding] unless entity @a[scores={HoldingBomb=1..}] run tp @s ~ ~2 ~ ~ 0

#Tp Foward
execute if entity @a[scores={HoldingBomb=1..}] run scoreboard players add @s lifetime 1
execute if entity @a[scores={HoldingBomb=1..}] unless entity @s[scores={lifetime=23..}] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.25

#Tp Vertical
execute if entity @a[scores={HoldingBomb=1..}] if entity @s[scores={lifetime=1..14}] at @s run tp @s ^ ^.05 ^
execute if entity @a[scores={HoldingBomb=1..}] if entity @s[scores={lifetime=15..}] at @s run data merge entity @s {NoGravity:0b}

#Enemies
execute if entity @s[scores={timer=110..}] run effect give @a[distance=..3] minecraft:wither 1 1 true
execute if entity @s[scores={timer=110..}] run tag @e[type=zombie,tag=Beamos,distance=..3] add Dead
execute if entity @s[scores={timer=110..}] as @e[type=zombie,tag=Armos,tag=Resist,distance=..3] at @s if entity @s[tag=Attack] run tag @s add Kill
execute if entity @s[scores={timer=110..}] run effect give @e[type=zombie,tag=Armos,tag=Resist,distance=..3] minecraft:wither 1 1 true
execute if entity @s[scores={timer=110..}] as @e[type=zombie,tag=Armos,tag=Resist,distance=..3] run tag @s add Attack
execute if entity @s[scores={timer=110..}] run data merge entity @e[type=zombie,tag=Dodongo,distance=..3,limit=1] {Invulnerable:0b}
execute if entity @s[scores={timer=110..}] run effect give @e[type=zombie,tag=Dodongo,distance=..3] minecraft:instant_health 1 1 true
execute if entity @s[scores={timer=110..}] run tag @e[type=armor_stand,tag=Goron11,distance=..3] add Wait
execute if entity @s[scores={timer=110..}] run tag @e[type=armor_stand,tag=Goron12,distance=..4] add Wait
execute positioned ~ ~-1 ~ as @e[type=armor_stand,tag=DodongoHead,tag=Fireball1,scores={lifetime=1..70},distance=..2] run tag @s add Stun

#After Enemies
execute if entity @s[scores={timer=110..}] run fill ~-2 ~-2 ~-2 ~2 ~4 ~2 minecraft:air replace minecraft:mossy_cobblestone
execute if entity @s[scores={timer=110..}] at @s run particle minecraft:explosion ~ ~.5 ~ 1 1 1 0 5
execute if entity @s[scores={timer=110..}] run playsound entity.generic.explode block @p
execute if entity @s[scores={timer=110..}] run tag @a remove Holding
execute if entity @s[scores={timer=110..}] run scoreboard objectives remove HoldingBomb
execute if entity @s[scores={timer=110..}] run kill @s