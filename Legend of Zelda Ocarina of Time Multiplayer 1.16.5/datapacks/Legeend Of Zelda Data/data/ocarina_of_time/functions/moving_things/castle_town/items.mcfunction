#Stones
data merge entity @s[nbt={Item:{tag:{Emerald:1b}}}] {PickupDelay:100,Age:0}
data merge entity @s[nbt={Item:{tag:{Ruby:1b}}}] {PickupDelay:100,Age:0}
data merge entity @s[nbt={Item:{tag:{Sapphire:1b}}}] {PickupDelay:100,Age:0}

#Bazzar
execute if entity @s[x=910,y=63,z=1427,dx=0,dy=1,dz=10] run tp @s 907 62 1432

#Item Shop
execute if entity @s[x=908,y=64,z=1415,dx=1,dy=1,dz=2] run tp @s 906 63 1416

#Treasure Shop
execute if entity @s[nbt={Item:{tag:{TreasureItem:1b}}}] run data merge entity @s {PickupDelay:100}
execute if entity @s[nbt={Item:{tag:{TreasureItem:1b}}}] run scoreboard players set @s timer 0

#Shooting Gallery
execute if entity @s[x=876,y=61,z=1404,dx=0,dz=2] run tp @s 875 59 1405
execute if entity @s[x=871,y=61,z=1401,dx=2,dz=0] run tp @s 872 60 1402

#Mask Shop
execute if entity @s[x=891,y=53,z=1392,dx=6,dz=0] run tp @s 894 53 1394
