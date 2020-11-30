#Nothing
execute unless entity @s[x=1617,y=73,z=1958,dx=1,dz=2] unless entity @s[x=1617,y=73,z=1952,dx=1,dz=1] unless entity @s[x=1620,y=75,z=1944,dx=1,dz=1] unless entity @s[x=1623,y=75,z=1944,dx=1,dz=1] unless entity @s[x=1626,y=75,z=1946,dx=1,dz=2] unless entity @s[x=1626,y=75,z=1952,dx=1,dz=1] unless entity @s[x=1626,y=75,z=1958,dx=1,dz=1] unless entity @s[x=1619,y=73,z=1962,dx=2,dz=1] run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
#Places
execute if entity @s[x=1619,y=73,z=1962,dx=2,dz=1] if block 1627 66 1976 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1619,y=73,z=1962,dx=2,dz=1] unless block 1627 66 1976 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1619,y=73,z=1962,dx=2,dz=1] run fill 1627 66 1976 1627 66 1976 minecraft:gold_block
execute if entity @s[x=1626,y=75,z=1958,dx=1,dz=1] if block 1627 66 1976 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1626,y=75,z=1958,dx=1,dz=1] unless block 1627 66 1976 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1626,y=75,z=1958,dx=1,dz=1] run fill 1627 66 1975 1627 66 1975 minecraft:gold_block
execute if entity @s[x=1626,y=75,z=1952,dx=1,dz=1] if block 1627 66 1974 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1626,y=75,z=1952,dx=1,dz=1] unless block 1627 66 1974 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1626,y=75,z=1952,dx=1,dz=1] run fill 1627 66 1974 1627 66 1974 minecraft:gold_block
execute if entity @s[x=1626,y=75,z=1946,dx=1,dz=2] if block 1627 66 1973 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1626,y=75,z=1946,dx=1,dz=2] unless block 1627 66 1973 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1626,y=75,z=1946,dx=1,dz=2] run fill 1627 66 1973 1627 66 1973 minecraft:gold_block
execute if entity @s[x=1623,y=75,z=1944,dx=1,dz=1] if block 1627 66 1972 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1623,y=75,z=1944,dx=1,dz=1] unless block 1627 66 1972 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1623,y=75,z=1944,dx=1,dz=1] run fill 1627 66 1972 1627 66 1972 minecraft:gold_block
execute if entity @s[x=1620,y=75,z=1944,dx=1,dz=1] if block 1627 66 1971 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1620,y=75,z=1944,dx=1,dz=1] unless block 1627 66 1971 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1620,y=75,z=1944,dx=1,dz=1] run fill 1627 66 1971 1627 66 1971 minecraft:gold_block
execute if entity @s[x=1617,y=73,z=1952,dx=1,dz=1] if block 1627 66 1970 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1617,y=73,z=1952,dx=1,dz=1] unless block 1627 66 1970 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1617,y=73,z=1952,dx=1,dz=1] run fill 1627 66 1970 1627 66 1970 minecraft:gold_block
execute if entity @s[x=1617,y=73,z=1958,dx=1,dz=2] if block 1627 66 1969 minecraft:gold_block run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Nope, nothing here!","color":"red"}]
execute if entity @s[x=1617,y=73,z=1958,dx=1,dz=2] unless block 1627 66 1969 minecraft:gold_block run function ocarina_of_time:moving_things/kakariko_village/grave_digging/prize
execute if entity @s[x=1617,y=73,z=1958,dx=1,dz=2] run fill 1627 66 1969 1627 66 1969 minecraft:gold_block
data merge entity @e[type=villager,tag=DampeShop,limit=1] {Tags:["DampeShop","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:"lime_dye",Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},maxUses:1,sell:{id:"stone_shovel",Count:1,tag:{display:{Name:"{\"text\":\"1 Dig\"}"}}},rewardExp:false}]}}

clear @a minecraft:stone_shovel{display:{Name:"{\"text\":\"1 Dig\"}"}}
