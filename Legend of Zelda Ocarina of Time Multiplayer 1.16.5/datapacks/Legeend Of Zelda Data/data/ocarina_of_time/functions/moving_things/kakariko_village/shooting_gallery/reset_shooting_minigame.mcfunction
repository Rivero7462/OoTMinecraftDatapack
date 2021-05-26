tag @a add NoBow
clear @a minecraft:arrow
clear @a minecraft:bow
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
give @a minecraft:arrow{display:{Name:"{\"text\":\"Shooting Game\"}"},NormalArrow:1b,ShootingGallery:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
scoreboard players set @a MinigameSeeds 15
kill @e[type=item,x=1524,y=47,z=1962,dx=4,dz=1]
scoreboard players set @s lifetime 0
scoreboard players set @a MiniGameTime -20
