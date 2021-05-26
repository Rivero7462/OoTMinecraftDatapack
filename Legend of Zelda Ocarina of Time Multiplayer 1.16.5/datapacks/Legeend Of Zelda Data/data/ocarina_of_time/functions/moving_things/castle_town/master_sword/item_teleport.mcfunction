data merge entity @e[type=armor_stand,tag=MasterSword,limit=1] {DisabledSlots:4144959}
execute as @e[type=item] at @a unless entity @s[nbt={PickupDelay:99s}] unless entity @s[nbt={PickupDelay:100s}] unless entity @s[nbt={Item:{id:"minecraft:tnt"}}] run data merge entity @s {PickupDelay:0s}
execute as @e[type=item] at @a unless entity @s[nbt={PickupDelay:99s}] unless entity @s[nbt={PickupDelay:100s}] unless entity @s[nbt={Item:{id:"minecraft:tnt"}}] run tp @s ~ ~ ~
