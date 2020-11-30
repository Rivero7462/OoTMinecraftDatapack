tag @s remove Shoot
tag @s remove Hover
tag @a remove ReflectIce
tag @a remove ReflectFire
tag @s remove Hurt
stopsound @a hostile minecraft:entity.bee.loop_aggressive
kill @e[type=area_effect_cloud,tag=IceBeam]
kill @e[type=area_effect_cloud,tag=FireBeam]
scoreboard players set @s timer 0
scoreboard players set @s GameTimer 0
