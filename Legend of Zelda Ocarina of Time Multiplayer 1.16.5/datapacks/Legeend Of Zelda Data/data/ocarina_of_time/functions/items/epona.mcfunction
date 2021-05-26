#Forceload
execute if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @s[nbt={Attributes:[{Name:"generic.movement_speed",Base:0.3}]}] run forceload remove all 
execute unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] as @a run forceload add ~ ~

#Moving
execute if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tag @a add NoOcarina
execute if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0.3}]}
execute unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tag @a remove NoOcarina
execute unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0.0}]}
