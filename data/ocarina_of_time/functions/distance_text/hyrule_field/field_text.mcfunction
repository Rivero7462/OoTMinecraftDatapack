#Running Man
#1
execute as @s[tag=RunningMan,scores={text=1}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"In old times, I heard there were many wild rabbits in the land of Hyrule. Not anymore, though, because of excessive hunting. I want to become a rabbit... Listen to the wind with those ears, hop across the ground with those legs... Even if I can only pretend."}]
execute as @s[tag=RunningMan,scores={text=1}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=RunningMan,scores={text=2}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"I bet nobody is faster than I am now! But I don't know if I should be happy or sad..."}]
execute as @s[tag=RunningMan,scores={text=2}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone32,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that you can activate some switches by using a sword."}]
execute as @s[tag=GossipStone32,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Business Scrub 1
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:"golden_carrot",Count:1,tag:{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! In return for sparing me, I will sell you a Piece of Heart! "},{"text":"Ten Rupees","color":"red"},{"text":" it is! Let's make a deal!"}]
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0
