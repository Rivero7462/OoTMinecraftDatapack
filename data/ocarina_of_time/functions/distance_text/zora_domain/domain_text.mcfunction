execute as @s[tag=Zora] at @s run tp @s ~ ~ ~ facing entity @p

#1
execute as @s[tag=Zora1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"All of the water in Hyrule flows from "},{"text":"Zora's Fountain","color":"blue"},{"text":". That water flows through Zora's River, which eventually reaches "},{"text":"Lake Hylia","color":"blue"},{"text":" to the south."}]
execute as @s[tag=Zora1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zora1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Oh, it's you, "},{"selector":"@p"},{"text":"! Thanks to you, Lord Jabu-Jabu is back to normal!"}]
execute as @s[tag=Zora1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Zora 2
#1
execute as @s[tag=Zora2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Who are you? We are the "},{"text":"Zoras","color":"blue"},{"text":", the proud aquatic people! So...you say you have some connection with Hyrule's Royal Family... Well, what do you want from us?"}]
execute as @s[tag=Zora2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Zora2,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Zora2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"We are good at diving! How about you? If you want to be a master diver, try the "},{"text":"diving game","color":"red"},{"text":" at the top of the waterfall! Have you tried it already?"}]
execute as @s[tag=Zora2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Zora2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Oh, hi, "},{"selector":"@p"},{"text":"! You're all Princess Ruto will talk about lately!"}]
execute as @s[tag=Zora2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#1
execute as @s[tag=Zora3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Have you seen Lord Jabu-Jabu? Oh, that's not good. Everybody who comes around here should see "},{"text":"Lord Jabu-Jabu","color":"red"},{"text":" at least once! Zora's Fountain is just beyond King Zora's throne. This is where Lord Jabu-Jabu swims. But...unless you have King Zora's permission, you can't go to Zora's Fountain."}]
execute as @s[tag=Zora3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zora3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Have you seen Lord Jabu-Jabu? According to the \"Legend of Zora,\" the act of offering a "},{"text":"fish ","color":"red"},{"text":"to Lord Jabu-Jabu will make you happy."}]
execute as @s[tag=Zora3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Zora3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Oh, it's you, "},{"selector":"@p"},{"text":"! Thanks to you, Lord Jabu-Jabu is back to normal!"}]
execute as @s[tag=Zora3,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#1
execute as @s[tag=Zora4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"We Zoras all serve the great "},{"text":"King Zora","color":"red"},{"text":"."}]
execute as @s[tag=Zora4,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zora4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Oh, hi, "},{"selector":"@p"},{"text":"! You're all Princess Ruto will talk about lately!"}]
execute as @s[tag=Zora4,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Zora 5
#1
execute as @s[tag=Zora5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Zora's Fountain is the source of the river. "},{"text":"Lord Jabu-Jabu","color":"red"},{"text":" lives in the fountain. Lord Jabu-Jabu is the patron deity of the Zoras. "},{"text":"Princess Ruto","color":"red"},{"text":" is in charge of preparing his meals, morning and night."}]
execute as @s[tag=Zora5,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zora5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Lord Jabu-Jabu is the patron deity of the Zoras. "},{"text":"Princess Ruto","color":"red"},{"text":" is in charge of preparing his meals, morning and night."}]
execute as @s[tag=Zora5,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Zora5,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Oh, it's you, "},{"selector":"@p"},{"text":"! Thanks to you, Lord Jabu-Jabu is back to normal!"}]
execute as @s[tag=Zora5,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Zora 6
#1
execute as @s[tag=Zora6,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"I want to buy a fish, but they are a little too expensive... I have no choice but to catch one of the fish that's swimming around out there."}]
execute as @s[tag=Zora6,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Zora 7
#1
execute as @s[tag=Zora7,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Our diving game is "},{"text":"20 Rupees","color":"red"},{"text":". Want to play? (Right-click to play)"}]
execute as @s[tag=Zora7,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zora7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run advancement grant @a only minecraft:_gear/silver_scale
execute as @s[tag=Zora7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" What a graceful dive! Now please take this! This is a "},{"text":"scale ","color":"red"},{"text":"of our kind. With this, you can dive much deeper under the water.\nYou got the "},{"text":"Silver Scale","color":"blue"},{"text":"! You can dive deeper than you could before."}]
execute as @s[tag=Zora7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @e[type=area_effect_cloud,tag=Progress] add SilverScale
execute as @s[tag=Zora7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @e[type=villager,tag=DivingZora,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Diving Game\""},DivingGame:1b}},rewardExp:0b}]}}
execute as @s[tag=Zora7,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Zora7,scores={text=2}] at @s if entity @a[distance=..2] run scoreboard players set @s text 3
#3
execute as @s[tag=Zora7,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" You can play again for "},{"text":"20 Rupees","color":"red"},{"text":". Want to?"}]
execute as @s[tag=Zora7,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Zora7,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora:","color":"gold"},{"text":" Go over the falls for a shortcut."}]
execute as @s[tag=Zora7,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext

#1
execute as @s[tag=Zora8,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"We haven't found Princess Ruto, even though some of us have searched as far as "},{"text":"Lake Hylia","color":"blue"},{"text":"..."}]
execute as @s[tag=Zora8,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Zora8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Oh, hi, "},{"selector":"@p"},{"text":"! You're all Princess Ruto will talk about lately!"}]
execute as @s[tag=Zora8,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#King Zora
#1
execute as @s[tag=FakeKingZora,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Oh, my dear, sweet "},{"text":"Princess Ruto","color":"red"},{"text":"... Where has she gone? I'm so worried..."}]
execute as @s[tag=FakeKingZora,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=FakeKingZora,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Please find my dear "},{"text":"Princess Ruto","color":"red"},{"text":" immediately!"}]
execute as @s[tag=FakeKingZora,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=FakeKingZora,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Oh, "},{"selector":"@p"},{"text":"! So you saved the princess, eh? I really appreciate it!"}]
execute as @s[tag=FakeKingZora,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=FakeKingZora,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Oh-I've come back to life! Was it you who saved me? Don't be nervous! It looks like you have a hard time breathing underwater. As an expression of my gratitue, I grant you this "},{"text":"tunic","color":"red"},{"text":". With this, you won't choke underwater."}]
execute as @s[tag=FakeKingZora,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:leather_chestplate{display:{color:1521151,Name:"{\"text\":\"Zora Tunic\"}"},Unbreakable:1b,ZoraTunic:1b,HideFlags:46}
execute as @s[tag=FakeKingZora,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1767 58 2289 1767 58 2289 minecraft:gold_block
execute as @s[tag=FakeKingZora,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=FakeKingZora,scores={text=4}] at @s if entity @a[distance=..2] run scoreboard players set @s text 1
#5
execute as @s[tag=FakeKingZora,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Ah, I see... Princess Ruto went to the Water Temple..."}]
execute as @s[tag=FakeKingZora,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Ruto
#1
execute as @s[tag=Ruto3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Did my most precious possession help you in your quest? Heehee!"}]
execute as @s[tag=Ruto3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Secret
#1
execute as @s[tag=Drearion,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] if entity Drearion run tellraw @a ["",{"text":"Drearion:","color":"gold"},{"text":" Thank you for saving me! I- wait... you're me! Gosh I must have been here for a while... Anyway, here's this for you... Me?"}]
execute as @s[tag=Drearion,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Drearion: ","color":"gold"},{"text":"Thank you for saving me! I got stuck here when I was testing the map. Here's a gift but dont tell Rivero!"}]
execute as @s[tag=Drearion,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] unless block 1749 11 2314 minecraft:gold_block run give @a minecraft:player_head{display:{Name:"\"Frog\""},SkullOwner:{Id:[I;-1098589116,-1763359373,-1630895429,-489885590],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2NiYzUzODljZjU1ZmQyMmVkZjU5ODk5MzVmZGQ1NzdmOWMxOWY5ODI5ZjcwZjE4MzZhZWNiMGNhMzM2ODQ3YyJ9fX0="}]}},SecretMask:1b}
execute as @s[tag=Drearion,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1749 11 2314 1749 11 2314 minecraft:gold_block
execute as @s[tag=Drearion,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone21,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that falling attacks do twice the damage to enemies as normal attacks."}]
execute as @s[tag=GossipStone21,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
