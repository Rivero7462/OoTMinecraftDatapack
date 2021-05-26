scoreboard players set @s timer 0
scoreboard objectives remove MinigameBombchus
fill 869 41 1431 869 41 1422 minecraft:air
clear @a minecraft:carrot_on_a_stick{MinigameBombchu:1b}
kill @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0]
data merge entity @e[type=villager,tag=BowlingShop,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Minigame Bombchus\"}"},Unbreakable:1b,HideFlags:63,MinigameBombchu:1b,Bombchu:1b,MainHandItem:1b}},rewardExp:0b}]}}
tag @s remove Prize
tag @s remove Finish
tag @a remove BowlingGame
