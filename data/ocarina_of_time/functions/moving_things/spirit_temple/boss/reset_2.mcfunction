scoreboard players set @s timer 20
scoreboard players set @s GameTimer 0
scoreboard players set @s BlueRupee 0
scoreboard players set @s BlueRupee2 0
data merge entity @s {HandItems:[{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:19}},{}]}
data merge entity @e[type=ravager,tag=TwinrovaHealth,limit=1] {Invulnerable:1b}
tp @s ~ 128 ~
tag @e[type=area_effect_cloud,tag=TwinrovaSpot,limit=1,sort=nearest] add Cooldown
tag @a remove ReflectFire
tag @a remove ReflectIce
tag @s remove Hurt
tag @s remove Shoot
tag @s remove Fire
tag @s remove Ice
