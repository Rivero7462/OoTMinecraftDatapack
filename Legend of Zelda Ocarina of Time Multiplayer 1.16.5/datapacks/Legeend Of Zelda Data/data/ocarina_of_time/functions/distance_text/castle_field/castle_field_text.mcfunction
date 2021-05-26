#Malon
#1
execute as @s[tag=Malon2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Incubate the egg, then use the hatchling. Hee hee! My dad is really troublesome, for an adult, isn't he?! Hee hee!"}]
execute as @s[tag=Malon2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#GateKeeper
#1
execute as @s[tag=Guard5,scores={text=1}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"So you want to see the Princess Zelda, eh? You probably heard about her in town and decided you had to meet her... Well... Go home! Get out of here! The princess would never grant an audience to the likes of you!"}]
execute as @s[tag=Guard5,scores={text=1}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Guard5,scores={text=1}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Do you really want to go through this gate that much? Let me think about it... OK, but in return... give me "},{"text":"10 Rupees","color":"red"},{"text":"... (right click to open gate)"}]
execute as @s[tag=Guard5,scores={text=1}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Guard5,scores={text=2}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"There's a lot going on in the castle right now. I can't allow even a dog to get into the castle!"}]
execute as @s[tag=Guard5,scores={text=2}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext

#Talon
#1
execute as @s[tag=TalonSleep3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Zzzzzzz... Mumble mumble... Welcome... Our ranch is so fun... C'mon and look around..."}]
execute as @s[tag=TalonSleep3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone12,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that there are the heads of those you meet hidden in various places around in Hyrule."}]
execute as @s[tag=GossipStone12,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone13,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that, contrary to her elegant image, Princess Zelda of Hyrule Castle is in fact a tomboy!"}]
execute as @s[tag=GossipStone13,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 3
execute as @s[tag=GossipStone31,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that you may find something new in dungeons that you have already finished."}]
execute as @s[tag=GossipStone31,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Eagle
#1
execute as @s[tag=Eagle,scores={text=1}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"The current time is: "},{"text":"Day","color":"red"},{"text":"."}]
execute as @s[tag=Eagle,scores={text=1}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Eagle,scores={text=1}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"The current time is: "},{"text":"Night","color":"red"},{"text":"."}]
execute as @s[tag=Eagle,scores={text=1}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
