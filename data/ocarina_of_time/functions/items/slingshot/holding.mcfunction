execute unless entity @a[tag=ShootingGame] run scoreboard objectives setdisplay sidebar DekuSeeds2
execute if entity @a[tag=ShootingGame] run scoreboard objectives setdisplay sidebar MinigameSeeds
tag @a add HideDisplayScore
execute run tag @s[scores={DekuSeeds2=..0}] add EmptySlingshot

execute unless entity @s[scores={DekuSeeds2=..0}] unless entity @a[nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand minecraft:snowball{display:{Name:"\"Deku Seeds\""},SlingshotAmmo:1b} 1

execute if entity @s[tag=EmptySlingshot] run clear @s minecraft:snowball
execute if entity @s[tag=EmptySlingshot] run tag @s remove HoldingSlingshot

execute if entity @s[scores={DekuSeeds1=1..}] unless entity @a[tag=ShootingGame] run scoreboard players remove @s DekuSeeds2 1
execute if entity @s[scores={DekuSeeds1=1..}] if entity @a[tag=ShootingGame] run scoreboard players remove @s MinigameSeeds 1
execute if entity @s[scores={DekuSeeds1=1..}] run scoreboard players reset @s DekuSeeds1

execute unless entity @s[nbt={SelectedItem:{tag:{Slingshot:1b}}}] run clear @s minecraft:snowball
execute unless entity @s[nbt={SelectedItem:{tag:{Slingshot:1b}}}] run tag @s remove HoldingSlingshot

scoreboard players set @e[type=item,nbt={Item:{tag:{SlingshotAmmo:1b}}}] DekuSeeds3 1
kill @e[scores={DekuSeeds3=1}]
