execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{GoronTunic:1b}}]}] run tag @s add WearingGoronTunic
execute if entity @s[tag=WearingGoronTunic] run tag @s add HideDisplayScore
execute if entity @s[tag=WearingGoronTunic] run scoreboard players reset @s FireTimer

execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{GoronTunic:1b}}]}] run tag @s remove WearingGoronTunic
execute unless entity @s[tag=WearingGoronTunic] unless entity @s[scores={FireTimer=0..500}] run scoreboard players set @s FireTimer 500
execute unless entity @s[tag=WearingGoronTunic] run scoreboard objectives setdisplay sidebar FireTimer
execute unless entity @s[tag=WearingGoronTunic] run scoreboard players remove @s FireTimer 1

execute if entity @s[scores={FireTimer=..0}] if entity @s[gamemode=adventure] run kill @s
execute if entity @s[scores={FireTimer=..0}] if entity @s[gamemode=adventure] run tag @s remove HotArea
execute if entity @s[scores={FireTimer=..0}] if entity @s[gamemode=adventure] run scoreboard players reset @s FireTimer
