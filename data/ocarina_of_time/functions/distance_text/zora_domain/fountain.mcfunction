#Gossip Stone 1
execute as @s[tag=GossipStone22,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that there is a secret near the lone tree not far from the river in the northwest part of Hyrule Field."}]
execute as @s[tag=GossipStone22,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone23,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that you can swim faster by holding sprint underwater."}]
execute as @s[tag=GossipStone23,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
