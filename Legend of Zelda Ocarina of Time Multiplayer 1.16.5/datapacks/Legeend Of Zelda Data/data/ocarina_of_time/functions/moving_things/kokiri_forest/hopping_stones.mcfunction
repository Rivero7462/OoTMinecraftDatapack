execute unless entity @a[x=-575,y=65,z=-633,dx=1,dz=1] unless entity @a[x=-571,y=65,z=-634,dx=3,dz=3] unless entity @a[x=-565,y=65,z=-633,dx=1,dz=1] run tag @s remove Wait

execute if entity @a[x=-575,y=65,z=-633,dx=1,dz=1] unless entity @s[tag=Wait] unless entity @s[tag=0] run tag @s add 1
execute if entity @a[x=-575,y=65,z=-633,dx=1,dz=1] unless entity @s[tag=Wait] unless entity @s[tag=0] if entity @s[tag=2,tag=!3] run tag @s remove 2
execute if entity @a[x=-575,y=65,z=-633,dx=1,dz=1] unless entity @s[tag=Wait] unless entity @s[tag=0] run tag @s add Wait

execute if entity @a[x=-571,y=65,z=-634,dx=3,dz=3] unless entity @s[tag=Wait] unless entity @s[tag=0] run tag @s add 2
execute if entity @a[x=-571,y=65,z=-634,dx=3,dz=3] unless entity @s[tag=Wait] unless entity @s[tag=0] if entity @s[tag=!1,tag=!3] run tag @s remove 1
execute if entity @a[x=-571,y=65,z=-634,dx=3,dz=3] unless entity @s[tag=Wait] unless entity @s[tag=0] if entity @s[tag=!1,tag=!3] run tag @s remove 3
execute if entity @a[x=-571,y=65,z=-634,dx=3,dz=3] unless entity @s[tag=Wait] unless entity @s[tag=0] run tag @s add Wait

execute if entity @a[x=-565,y=65,z=-633,dx=1,dz=1] unless entity @s[tag=Wait] unless entity @s[tag=0] run tag @s add 3
execute if entity @a[x=-565,y=65,z=-633,dx=1,dz=1] unless entity @s[tag=Wait] unless entity @s[tag=0] if entity @s[tag=2,tag=!1] run tag @s remove 2
execute if entity @a[x=-565,y=65,z=-633,dx=1,dz=1] unless entity @s[tag=Wait] unless entity @s[tag=0] run tag @s add Wait

execute if entity @s[tag=1,tag=2,tag=3] unless entity @s[tag=0] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 1
execute if entity @s[tag=1,tag=2,tag=3] run tag @s add 0
