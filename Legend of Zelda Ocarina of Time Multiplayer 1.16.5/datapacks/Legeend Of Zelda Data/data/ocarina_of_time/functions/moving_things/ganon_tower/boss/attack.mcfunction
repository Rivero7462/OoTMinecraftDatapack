tag @s remove Reflect
data merge entity @s {Invulnerable:0b}
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 1.3
playsound minecraft:ui.toast.out hostile @a ~ ~ ~ 2 2
scoreboard players add @s time 1
scoreboard players set @s timer 0
