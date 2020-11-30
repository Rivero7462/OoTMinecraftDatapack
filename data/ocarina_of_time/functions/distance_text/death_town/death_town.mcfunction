#Sheik
#1
execute as @s[tag=Sheik1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"To save the forest girl, you need "},{"text":"another item","color":"red"},{"text":"... Head to Kakariko Village!"}]
execute as @s[tag=Sheik1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Sheik1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"It looks like you have the Item you need... The "},{"text":"forest girl","color":"green"},{"text":" is waiting for your help..."}]
execute as @s[tag=Sheik1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Poe Guy
#1
execute as @s[tag=GhostCatcher,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Poe Collector:","color":"gold"},{"text":" Oh...you are quite an energetic young man. You're brave and handsome too. Heh heh heh... Your name is "},{"selector":"@p"},{"text":", isn't it? Heh heh he... Don't be surprised. I can read people's minds. If I looked as good as you, I could run a different kind of business...heh he heh... My shop is the only "},{"text":"Ghost Shop ","color":"red"},{"text":"in Hyrule. Because of the great Ganondorf, it is a fine time for a business like this...heh heh heh... Oh...I can only hope the world gets even worse! The ghosts, called"},{"text":" Poes","color":"red"},{"text":", are spirits of concentrated hatred that appear in the fields and graveyard. They hate the world! Young man, if you catch a Poe, I will pay a lot of money for it... Heh heh hee!"}]
execute as @s[tag=GhostCatcher,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=GhostCatcher,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=GhostCatcher,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Poe Collector:","color":"gold"},{"text":" Hey, young man. What's happening today? If you have a "},{"text":"Poe","color":"red"},{"text":", I will buy it. Your card now has "},{"score":{"name":"@s","objective":"timer"},"color":"light_purple"},{"text":" points. Come back again! Heh heh heh!"}]
execute as @s[tag=GhostCatcher,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Secret
#1
execute as @s[tag=AlaskanGopher,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] if entity TheAlaskanGopher run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"Hey there! Good job finding this sec- oh hey me. Guess it's not really a secret to you is it? Well, here's the head! It's a secret to everybody but you."}]
execute as @s[tag=AlaskanGopher,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"I've been searching for this secret for a very long time. I found these sweet action figures and this head... so you can have it! This head must have been here for about 7 Years."}]
execute as @s[tag=AlaskanGopher,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] unless block 1395 66 931 minecraft:gold_block run give @p minecraft:player_head{SecretMask:1b,display:{Name:"\"Redead\""},SkullOwner:{Id:[I;1817635841,-403421629,-1874538214,16471404],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJhZTM3MjI0M2VhYjRhZWIyNGU1YjU4NWVhNjUzYzgwMjUxYmZkY2U2MGU2NzM3YjZkYTZiN2E1ZDQwZDFiNyJ9fX0="}]}},SecretMask:1b}
execute as @s[tag=AlaskanGopher,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run fill 1395 66 931 1395 66 931 minecraft:gold_block
execute as @s[tag=AlaskanGopher,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone8,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Malon set the original record in the obstacle course at Lon Lon Ranch."}]
execute as @s[tag=GossipStone8,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone9,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Malon of Lon Lon Ranch hopes a knight in shining armor will come and sweep her off her feet someday."}]
execute as @s[tag=GossipStone9,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 3
execute as @s[tag=GossipStone10,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that it is against the rules to use glasses at the Treasure Chest Shop in Hyrule Castle Town Market."}]
execute as @s[tag=GossipStone10,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 4
execute as @s[tag=GossipStone11,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Gerudo sometimes come to Hyrule Castle Town to look for boyfriends."}]
execute as @s[tag=GossipStone11,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gopher
#1
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"The hidden alcove is somewhere in the "},{"text":"Lost Woods","color":"green"},{"text":" and you must have a secret "},{"text":"on you","color":"red"},{"text":" to enter.\n"},{"text":"Kokiri Forest","color":"green"},{"text":"\n"},{"text":"Two in Castle Town","color":"aqua"},{"text":"\nThe field outside of "},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Kakariko Village","color":"red"},{"text":"\n"},{"text":"Goron City","color":"gold"},{"text":"\n"},{"text":"Zora's Domain","color":"blue"},{"text":"\n"},{"text":"Fishing Pond","color":"aqua"},{"text":"\n"},{"text":"Destroyed Castle Town","color":"red"},{"text":"\n"},{"text":"Zora's Domain ","color":"blue"},{"text":"(Adult)\n"},{"text":"Zora's Fountain ","color":"aqua"},{"text":"(Adult)\n"},{"text":"Inside Gerudo Fortress","color":"yellow"},{"text":"\n"},{"text":"Haunted Wasteland","color":"gold"},{"text":"\n"},{"text":"Desert Colossus","color":"yellow"},{"text":"\n"},{"text":"Outside Ganon's Castle","color":"red"},{"text":". Good Luck!"}]
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"You...you got them all?! WOW! Nice job! I bet you sure feel powerful! Just don't do too crazy or you might destroy this world by accident!"}]
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
