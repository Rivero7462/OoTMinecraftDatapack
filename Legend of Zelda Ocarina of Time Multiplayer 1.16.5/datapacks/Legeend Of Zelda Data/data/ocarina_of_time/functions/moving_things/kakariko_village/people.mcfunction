#Child 
#All Time
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Guard29] at @s run tp @s 1515 74 1957
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Guard28] at @s run tp @s 1484 69 1933
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Guard30] at @s run tp @s 1521 78 1890
#Day
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Guard28] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=KakarikoBuffGuy] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Ichiro1] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=DoorGuy] remove NightText
execute unless entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block run tp @e[type=armor_stand,tag=Mutoh] 1509 68 1928 90 ~
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Mutoh] remove NightText
execute unless entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Grog] at @s run tp @s ~ 63 ~
execute unless entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Anju] at @s run tp @s 1538 70 1951 225 ~
execute unless entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Sabooro2] at @s run tp @s 1534 54.3 1917
execute unless entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Shiro2] at @s run tp @s 1544 54.9 1917.2
execute unless entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Jiro2] at @s run tp @s 1538 54 1917
#Adult Day
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=RedTwin2] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=BlueTwin2] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Shikashi2] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=BeardGuy2] remove NightText
execute unless entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Anju] remove NightText

#Night
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Guard28] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=KakarikoBuffGuy] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Ichiro1] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=DoorGuy] add NightText
execute if entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block run tp @e[type=armor_stand,tag=Mutoh] 1543 59 1923 180 ~
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Mutoh] add NightText
execute if entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Grog] at @s run tp @s ~ 68 ~
execute if entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Anju] at @s run tp @s 1522 60 1949 45 ~
execute if entity @a[scores={time=13001..23000}] run kill @e[type=chicken,tag=Cucco]
execute if entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Sabooro2] at @s run tp @s 1534 58.3 1917
execute if entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Shiro2] at @s run tp @s 1544 58.9 1917.2
execute if entity @a[scores={time=13001..23000}] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Jiro2] at @s run tp @s 1538 59 1917
#Adult Night
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=RedTwin2] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=BlueTwin2] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Shikashi2] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=BeardGuy2] add NightText
execute if entity @a[scores={time=13001..23000}] run tag @e[type=armor_stand,tag=Anju] add NightText

#Adult
#All Time
execute if entity @a[tag=Adult] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Guard29] at @s run tp @s 1515 71 1957
execute if entity @a[tag=Adult] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Guard28] at @s run tp @s 1482 65 1933
execute if entity @a[tag=Adult] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Guard30] at @s run tp @s 1521 74 1890
execute if entity @a[tag=Adult] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Sabooro2] at @s run tp @s 1534 54.3 1917
execute if entity @a[tag=Adult] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Shiro2] at @s run tp @s 1544 54.9 1917.2
execute if entity @a[tag=Adult] if block 1550 66 1942 minecraft:gold_block as @e[type=armor_stand,tag=Jiro2] at @s run tp @s 1538 54 1917
#Day
#Night

#Rupee
execute unless block 1532 70 1943 minecraft:gold_block if entity @a[x=1532,y=76.5,z=1943,dx=0,dy=0,dz=0] run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute unless block 1532 70 1943 minecraft:gold_block if entity @a[x=1532,y=76.5,z=1943,dx=0,dy=0,dz=0] run fill 1532 70 1943 1532 70 1943 minecraft:gold_block
