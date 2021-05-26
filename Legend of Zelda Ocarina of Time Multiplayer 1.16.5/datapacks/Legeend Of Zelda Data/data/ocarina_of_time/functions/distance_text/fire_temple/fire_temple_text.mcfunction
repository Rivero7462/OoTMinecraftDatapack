#Trapped Goron1
#Generic
execute as @s[tag=TrappedGoron,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":": Please...don't...eat me... If you eat something like me, you'll get a stomachache! You'll be sorry!"}]
execute as @s[tag=TrappedGoron,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#1
execute as @s[tag=TrappedGoron1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":": Are you releasing me? Am I free to go? I'll tell you a secret for saving me! In order to get into the room where Darunia went, you have to do something about the pillar stuck in the ceiling. Find a path that leads to a room above the ceiling right away!"}]
execute as @s[tag=TrappedGoron1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3042 44 1976
execute as @s[tag=TrappedGoron1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#2
execute as @s[tag=TrappedGoron2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? I'll tell you a secret for saving me! There are switches in this temple that you have to strike to activate. But you can also use the Goron \"special crop\" to do the job."}]
execute as @s[tag=TrappedGoron2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3112 44 2005
execute as @s[tag=TrappedGoron2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#3
execute as @s[tag=TrappedGoron3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? Here's a secret for saving me! A wall that looks similar to the ones you can destroy with the Goron's \"special crop\" can be destroyed using the legendary hammer."}]
execute as @s[tag=TrappedGoron3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3121 42 1914
execute as @s[tag=TrappedGoron3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#4
execute as @s[tag=TrappedGoron4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? Here's a tip for rescuing me! Somewhere in this temple, you're sure to meet up with some creatures that dance as they attack. Arrows won't hurt them! Looks like you might need some of the Goron \"special crop\"! That's all I have to tell you!"}]
execute as @s[tag=TrappedGoron4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3138 86 1956
execute as @s[tag=TrappedGoron4,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#5
execute as @s[tag=TrappedGoron5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? I'll tell you a secret for saving me! In this temple, there are "},{"text":"doors that fall down","color":"red"},{"text":" when you try to open them. When one of these doors starts to fall, move! If you use a sample of the Goron \"special crop,\" you can break it..."}]
execute as @s[tag=TrappedGoron5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3128 106 1981
execute as @s[tag=TrappedGoron5,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#6
execute as @s[tag=TrappedGoron6,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? Let me tell you a secret as a reward for releasing me! If you are careful and take it slow, you won't get hurt by fire walls that might appear... Did you know that?"}]
execute as @s[tag=TrappedGoron6,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3113 105 1914
execute as @s[tag=TrappedGoron6,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#7
execute as @s[tag=TrappedGoron7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? I'll tell you a secret for saving me! If you find a place that you can see on the map but can't reach, try playing your ocarina!"}]
execute as @s[tag=TrappedGoron7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3119 110 1985
execute as @s[tag=TrappedGoron7,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#8
execute as @s[tag=TrappedGoron8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? I'll tell you a secret for saving me! A door is hidden behind the statue at the entrance to this temple. But the Goron \"special crop\" won't work on it... Don't you have anything stronger?"}]
execute as @s[tag=TrappedGoron8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3032 104 1956
execute as @s[tag=TrappedGoron8,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#9
execute as @s[tag=TrappedGoron9,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Are you releasing me? Am I free to go? Oh, I see. Big Brother Darunia asked you to rescue me. I owe you big-time! Please help Big Brother!"}]
execute as @s[tag=TrappedGoron9,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s 3066 38 1945
execute as @s[tag=TrappedGoron9,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
