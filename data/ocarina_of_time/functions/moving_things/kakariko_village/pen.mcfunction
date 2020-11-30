execute store result score @s CuccoCount if entity @e[x=1533,y=70,z=1952,dx=3,dy=2,dz=5,type=chicken]
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=1}] run scoreboard players set @s text 2
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=2}] run scoreboard players set @s text 3
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=3}] run scoreboard players set @s text 4
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=4}] run scoreboard players set @s text 5
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=5}] run scoreboard players set @s text 6
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=6}] run scoreboard players set @s text 7
execute unless entity @s[scores={text=9..10}] unless entity @a[tag=Adult] if entity @s[scores={CuccoCount=7}] run scoreboard players set @s text 8
execute if entity @s[scores={text=10}] if entity @s[scores={CuccoCount=7}] run scoreboard players set @s text 9
execute if entity @s[scores={text=9}] if entity @s[scores={CuccoCount=0..6}] run scoreboard players set @s text 10
