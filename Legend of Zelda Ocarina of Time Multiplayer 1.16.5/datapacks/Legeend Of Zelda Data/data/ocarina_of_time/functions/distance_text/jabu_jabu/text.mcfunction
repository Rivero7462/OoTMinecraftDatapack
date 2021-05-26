#Ruto
#1
execute if entity @s[scores={text=1}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You're that worried about me? Then I will give you the honor of carrying me! However...I won't leave until I find the thing I'm looking for. You'd better believe me!"}]
execute if entity @s[scores={text=1}] if entity @a[distance=..2] run tag @a add CarryRuto
execute if entity @s[scores={text=1}] if entity @a[distance=..2] run data merge entity @s {Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]}}
execute if entity @s[scores={text=1}] if entity @a[distance=..2] run tp @s ~ 21.3 ~
execute if entity @s[scores={text=1}] if entity @a[distance=..2] run scoreboard players set @s text 0
#2
execute if entity @s[scores={text=2}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"How inconsiderate! How could you leave me behind?! If you're a man, act like one! Take responsibility!"}]
execute if entity @s[scores={text=2}] if entity @a[distance=..2] run scoreboard players set @s text 0
#3
execute if entity @s[scores={text=3}] if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You... You're late! What took you so long? You're useless! I was just lonely, that's all... Just a little!"}]
execute if entity @s[scores={text=3}] if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 1
execute as @s[tag=BusinessScrub5,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub5,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! In return, I will sell you Deku Nuts! "},{"text":"five ","color":"red"},{"text":"for "},{"text":"20 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub5,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub5,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0
