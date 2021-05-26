scoreboard players add @s timer 1

#Appear
execute if entity @s[scores={timer=10}] run tp @s ~ 44.7 ~ facing entity @p

#Facing
execute unless entity @e[type=zombie,tag=VolvagiaHead,tag=Stun] if entity @s[scores={timer=15..60}] run tp @s ~ ~ ~ facing entity @p

#Fire Breath
execute if entity @e[type=zombie,tag=VolvagiaHead,tag=FireBreath] if entity @s[scores={timer=61..180}] rotated as @e[type=zombie,tag=VolvagiaHead,limit=1] run tp @s ~ ~ ~ ~ ~
#Spin Attack
execute if entity @e[type=zombie,tag=VolvagiaHead,tag=SpinAttack] if entity @s[scores={timer=61..110}] run tp @s ~ ~ ~ ~180 ~
execute if entity @e[type=zombie,tag=VolvagiaHead,tag=SpinAttack] if entity @s[scores={timer=61..110}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 1 true
execute if entity @e[type=zombie,tag=VolvagiaHead,tag=SpinAttack] if entity @s[scores={timer=111}] run scoreboard players set @s timer 181

#Under
execute if entity @s[scores={timer=184..200}] run tp @s ~ ~-.2 ~

#Kill
execute if entity @s[scores={timer=201}] run kill @e[type=armor_stand,tag=VolvagiaGround]
