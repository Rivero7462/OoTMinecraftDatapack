scoreboard players add @s timer 1
scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=4..}] run scoreboard players set @s ArrowCount 0
execute if entity @s[scores={timer=10..}] run scoreboard players set @s timer 6
execute unless entity @s[tag=SpinAttack,scores={lifetime=117..125}] run tp @e[type=zombie,tag=GerudoThief] @s
scoreboard objectives add GerudoThief minecraft.custom:minecraft.damage_taken

#Start
execute if entity @s[scores={timer=1}] run data merge entity @s {Pose:{Head:[10f,0f,0f],RightArm:[-120f,110f,-30f],LeftArm:[20f,0f,-30f]}}
execute if entity @s[scores={timer=1..5}] unless block ~ ~-.1 ~ minecraft:smooth_stone run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=1..5}] unless block ~ ~-.1 ~ minecraft:smooth_stone run scoreboard players set @s timer 2

#Choose
execute unless entity @s[scores={timer=1..5}] if entity @s[tag=!Choice] unless entity @a[distance=..5] run tag @s add Choice1
execute unless entity @s[scores={timer=1..5}] if entity @s[tag=!Choice] unless entity @a[distance=..5] run tag @s remove Choice2
execute unless entity @s[scores={timer=1..5}] if entity @s[tag=!Choice] if entity @a[distance=..5] run tag @s add Choice2
execute unless entity @s[scores={timer=1..5}] if entity @s[tag=!Choice] if entity @a[distance=..5] run tag @s remove Choice1
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=1..5}] if entity @s[tag=Choice1] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=1..5}] if entity @s[tag=Choice2] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=1..5}] if entity @s[scores={lifetime=0..99}] facing entity @p feet rotated ~ 0 if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~ ~ 0
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=1..5}] if entity @s[scores={lifetime=0..99}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air run tp @s ~ ~ ~ ~ 0

execute if entity @s[scores={lifetime=1}] run tag @s add RemoveResist

#Choices 1
execute unless entity @s[tag=Stun] if entity @s[tag=Choice1,scores={lifetime=5..99,timer=6..7}] run tag @s add Approach
execute unless entity @s[tag=Stun] if entity @s[tag=Choice1,scores={lifetime=5..99,timer=8,ArrowCount=0..1}] run tag @s add StrafeRight
execute unless entity @s[tag=Stun] if entity @s[tag=Choice1,scores={lifetime=5..99,timer=8,ArrowCount=2..3}] run tag @s add StrafeLeft
execute unless entity @s[tag=Stun] if entity @s[tag=Choice1,scores={lifetime=5..99,timer=9}] run tag @s add SpinAttack
execute unless entity @s[tag=Stun] if entity @s[tag=Choice1,scores={lifetime=5..99}] run tag @s add Choice

#Choice 2
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99,timer=6}] run tag @s add Approach
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99,timer=7,ArrowCount=0..1}] run tag @s add StrafeRight
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99,timer=7,ArrowCount=2..3}] run tag @s add StrafeLeft
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99,timer=8}] run tag @s add BackJump
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99,timer=9}] run tag @s add BigJump
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99}] run tag @s add Choice
execute unless entity @s[tag=Stun] if entity @s[tag=Choice2,scores={lifetime=5..99}] run tag @e[type=zombie,tag=GerudoThief] add Resist

execute if entity @s[scores={lifetime=5..99}] run scoreboard players set @s lifetime 100

#Strafe Right
execute if entity @s[tag=StrafeRight,scores={lifetime=119}] run tag @s remove NormalSlash
execute if entity @s[tag=StrafeRight,scores={lifetime=119}] run scoreboard players set @s time 0
execute if entity @s[tag=StrafeRight,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 if block ^.6 ^ ^ minecraft:air if block ^.6 ^ ^-.4 minecraft:air if block ^.6 ^ ^.4 minecraft:air run tp @s ^.3 ^ ^.1 ~ 0
execute if entity @s[tag=StrafeRight,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^ minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[tag=StrafeRight,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[tag=StrafeRight,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0

execute if entity @s[tag=StrafeRight,scores={lifetime=201..}] run function ocarina_of_time:enemies/gerudo_thief/reset

#Strafe Left
execute if entity @s[tag=StrafeLeft,scores={lifetime=119}] run tag @s remove NormalSlash
execute if entity @s[tag=StrafeLeft,scores={lifetime=119}] run scoreboard players set @s time 0
execute if entity @s[tag=StrafeLeft,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.4 minecraft:air if block ^-.6 ^ ^.4 minecraft:air run tp @s ^-.3 ^ ^.1 ~ 0
execute if entity @s[tag=StrafeLeft,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^ minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[tag=StrafeLeft,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[tag=StrafeLeft,scores={lifetime=119..200}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0

execute if entity @s[tag=StrafeLeft,scores={lifetime=201..}] run function ocarina_of_time:enemies/gerudo_thief/reset

#Approach
execute if entity @s[tag=Approach,scores={lifetime=100..105}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Approach,scores={lifetime=106..117}] if block ^ ^ ^.6 minecraft:air if block ^-.4 ^ ^.6 minecraft:air if block ^.4 ^ ^.6 minecraft:air run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=Approach,scores={lifetime=118}] run tag @s add NormalSlash

#Spin Attack
execute if entity @s[tag=SpinAttack,scores={lifetime=100}] run data merge entity @s {Pose:{RightArm:[-30f,90f,0f],LeftArm:[-20f,30f,-30f]}}
execute if entity @s[tag=SpinAttack,scores={lifetime=100..125}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=SpinAttack,scores={lifetime=126}] run data merge entity @s {Pose:{RightArm:[90f,0f,90f],LeftArm:[-90f,0f,90f]}}
execute if entity @s[tag=SpinAttack,scores={lifetime=127..132}] as @e[type=zombie,tag=GerudoThief] at @s facing entity @p feet rotated ~ 0 facing entity @p feet if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.2 minecraft:air if block ^-.6 ^ ^.2 minecraft:air run tp @s ^ ^.1 ^.3 ~ 0
execute if entity @s[tag=SpinAttack,scores={lifetime=133..137}] as @e[type=zombie,tag=GerudoThief] at @s facing entity @p feet rotated ~ 0 facing entity @p feet if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.2 minecraft:air if block ^-.6 ^ ^.2 minecraft:air run tp @s ^ ^ ^.3 ~ 0
execute if entity @s[tag=SpinAttack,scores={lifetime=138..143}] as @e[type=zombie,tag=GerudoThief] at @s facing entity @p feet rotated ~ 0 facing entity @p feet if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.2 minecraft:air if block ^-.6 ^ ^.2 minecraft:air if block ~ ~-.1 ~ minecraft:air run tp @s ^ ^-.1 ^.2 ~ 0
execute if entity @s[tag=SpinAttack,scores={lifetime=127..143}] positioned as @e[type=zombie,tag=GerudoThief,limit=1] run tp @s ~ ~ ~ ~40 0
execute if entity @s[tag=SpinAttack,scores={lifetime=144}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=SpinAttack,scores={lifetime=145}] run tag @s add RemoveResist
execute if entity @s[tag=SpinAttack,scores={lifetime=165}] run tag @e[type=zombie,tag=GerudoThief] add Resist
execute if entity @s[tag=SpinAttack,scores={lifetime=165..}] run function ocarina_of_time:enemies/gerudo_thief/reset

#Back Jump
execute if entity @s[tag=BackJump,scores={lifetime=100}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=BackJump,scores={lifetime=101..111}] if block ^ ^ ^-.6 minecraft:air if block ^-.4 ^ ^-.6 minecraft:air if block ^.4 ^ ^-.6 minecraft:air run tp @s ^ ^ ^-.3 ~ 0
execute if entity @s[tag=BackJump,scores={lifetime=112..}] run function ocarina_of_time:enemies/gerudo_thief/reset

#Big Jump
execute if entity @s[tag=DoBigJump] run function ocarina_of_time:enemies/gerudo_thief/reset
execute if entity @s[tag=DoBigJump] run tag @s add BigJump
execute if entity @s[tag=DoBigJump] unless entity @s[scores={lifetime=104..}] run scoreboard players set @s lifetime 104
execute if entity @s[tag=DoBigJump] run tag @s remove DoBigJump

execute if entity @s[tag=BigJump,scores={lifetime=100..105}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=106}] run tag @s add RemoveResist
execute if entity @s[tag=BigJump,scores={lifetime=106..115}] if block ^ ^ ^.6 minecraft:air if block ^-.4 ^ ^.6 minecraft:air if block ^.4 ^ ^.6 minecraft:air run tp @s ^ ^.3 ^.3 ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=116..120}] if block ^ ^ ^.6 minecraft:air if block ^-.4 ^ ^.6 minecraft:air if block ^.4 ^ ^.6 minecraft:air run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=121..130}] if block ^ ^ ^.6 minecraft:air if block ^-.4 ^ ^.6 minecraft:air if block ^.4 ^ ^.6 minecraft:air if block ~ ~-.1 ~ minecraft:air run tp @s ^ ^-.3 ^.1 ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=121..130}] unless block ^ ^ ^.6 minecraft:air if block ~ ~-.1 ~ minecraft:air run tp @s ^ ^-.3 ^ ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=121..130}] unless block ^-.4 ^ ^.6 minecraft:air if block ~ ~-.1 ~ minecraft:air run tp @s ^ ^-.3 ^ ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=121..130}] unless block ^.4 ^ ^.6 minecraft:air if block ~ ~-.1 ~ minecraft:air run tp @s ^ ^-.3 ^ ~ 0
execute if entity @s[tag=BigJump,scores={lifetime=131}] run tag @e[type=zombie,tag=GerudoThief] add Resist
execute if entity @s[tag=BigJump,scores={lifetime=131}] run scoreboard players add @s timer 1
execute if entity @s[tag=BigJump,scores={lifetime=131..}] run function ocarina_of_time:enemies/gerudo_thief/reset

#Cross Sword Block
execute if entity @s[tag=DoBlock] run function ocarina_of_time:enemies/gerudo_thief/reset
execute if entity @s[tag=DoBlock] run tag @s add Block
execute if entity @s[tag=DoBlock] unless entity @s[scores={lifetime=104..}] run scoreboard players set @s lifetime 104
execute if entity @s[tag=DoBlock] run tag @s remove DoBlock

execute if entity @e[type=zombie,tag=GerudoThief,nbt={HurtTime:10s}] unless entity @s[tag=NormalSlash] unless entity @s[scores={lifetime=1..5}] unless entity @s[scores={timer=1..5}] unless entity @s[tag=BigJump,scores={lifetime=106..130}] unless entity @s[tag=SpinAttack,scores={lifetime=145..}] run tag @s add Choice
execute if entity @e[type=zombie,tag=GerudoThief,nbt={HurtTime:10s}] unless entity @s[tag=NormalSlash] unless entity @s[scores={lifetime=1..5}] unless entity @s[scores={timer=1..5}] unless entity @s[tag=BigJump,scores={lifetime=106..130}] unless entity @s[tag=SpinAttack,scores={lifetime=145..}] run tag @s add Block
execute if entity @s[tag=Block] run scoreboard players add @s time 1
execute if entity @s[tag=Block,scores={time=1}] run scoreboard players set @s lifetime -100
execute if entity @s[tag=Block,scores={time=1}] run playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=Block,scores={time=1}] run data merge entity @s {Pose:{RightArm:[-20f,-30f,40f],LeftArm:[-20f,30f,-40f]}}
execute if entity @s[tag=Block,scores={time=15..}] run scoreboard players set @s time 100

#Caught
execute if entity @s[tag=SpinAttack,scores={lifetime=127..143}] if entity @a[scores={GerudoThief=1..}] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Don't take us so lightly!"}]
execute if entity @s[tag=SpinAttack,scores={lifetime=127..143}] if entity @a[scores={GerudoThief=1..}] run tag @a add ThiefCaught
execute if entity @s[tag=SpinAttack,scores={lifetime=127..143}] if entity @a[scores={GerudoThief=1..}] run tag @a add GerudoCaught

#Normal Slash
execute if entity @a[scores={GerudoThief=1..}] run tag @s add Choice
execute if entity @a[scores={GerudoThief=1..}] run tag @s add NormalSlash

execute if entity @s[tag=NormalSlash] run scoreboard players set @a GerudoThief 0
execute if entity @s[tag=NormalSlash] run scoreboard players add @s time 1
execute if entity @s[tag=NormalSlash,scores={time=1}] run tag @s add RemoveResist
execute if entity @s[tag=NormalSlash,scores={time=1}] run data merge entity @s {Pose:{RightArm:[-120f,110f,-30f]}}
execute if entity @s[tag=NormalSlash,scores={time=2}] run data merge entity @s {Pose:{RightArm:[-120f,80f,-20f]}}
execute if entity @s[tag=NormalSlash,scores={time=3}] run data merge entity @s {Pose:{RightArm:[-120f,50f,-10f]}}
execute if entity @s[tag=NormalSlash,scores={time=4}] run data merge entity @s {Pose:{RightArm:[-80f,20f,-5f]}}
execute if entity @s[tag=NormalSlash,scores={time=5}] run data merge entity @s {Pose:{RightArm:[-40f,0f,0f]}}
execute if entity @s[tag=NormalSlash,scores={time=6}] run data merge entity @s {Pose:{RightArm:[-50f,0f,-5f]}}
execute if entity @s[tag=NormalSlash,scores={time=7}] run data merge entity @s {Pose:{RightArm:[-60f,20f,-10f]}}
execute if entity @s[tag=NormalSlash,scores={time=8}] run data merge entity @s {Pose:{RightArm:[-70f,40f,-15f]}}
execute if entity @s[tag=NormalSlash,scores={time=9}] run data merge entity @s {Pose:{RightArm:[-80f,60f,-18f]}}
execute if entity @s[tag=NormalSlash,scores={time=10}] run data merge entity @s {Pose:{RightArm:[-90f,80f,-20f]}}
execute if entity @s[tag=NormalSlash,scores={time=11}] run data merge entity @s {Pose:{RightArm:[-100f,100f,-25f]}}
execute if entity @s[tag=NormalSlash,scores={time=12}] run data merge entity @s {Pose:{RightArm:[-120f,110f,-30f]}}
execute if entity @s[tag=NormalSlash,scores={time=1}] run data merge entity @s {Pose:{LeftArm:[20f,0f,-30f]}}
execute if entity @s[tag=NormalSlash,scores={time=2}] run data merge entity @s {Pose:{LeftArm:[35f,0f,-35f]}}
execute if entity @s[tag=NormalSlash,scores={time=3}] run data merge entity @s {Pose:{LeftArm:[50f,0f,-40f]}}
execute if entity @s[tag=NormalSlash,scores={time=4}] run data merge entity @s {Pose:{LeftArm:[65f,0f,-45f]}}
execute if entity @s[tag=NormalSlash,scores={time=5}] run data merge entity @s {Pose:{LeftArm:[80f,0f,-50f]}}
execute if entity @s[tag=NormalSlash,scores={time=6}] run data merge entity @s {Pose:{LeftArm:[70f,0f,-45f]}}
execute if entity @s[tag=NormalSlash,scores={time=7}] run data merge entity @s {Pose:{LeftArm:[60f,0f,-42f]}}
execute if entity @s[tag=NormalSlash,scores={time=8}] run data merge entity @s {Pose:{LeftArm:[50f,0f,-40f]}}
execute if entity @s[tag=NormalSlash,scores={time=9}] run data merge entity @s {Pose:{LeftArm:[40f,0f,-37f]}}
execute if entity @s[tag=NormalSlash,scores={time=10}] run data merge entity @s {Pose:{LeftArm:[30f,0f,-35f]}}
execute if entity @s[tag=NormalSlash,scores={time=11}] run data merge entity @s {Pose:{LeftArm:[25f,0f,-32f]}}
execute if entity @s[tag=NormalSlash,scores={time=12}] run data merge entity @s {Pose:{LeftArm:[20f,0f,-30f]}}
execute if entity @s[tag=NormalSlash,scores={time=12}] run tag @e[type=zombie,tag=GerudoThief] add Resist

execute if entity @s[tag=NormalSlash,tag=Approach,scores={time=12..}] run scoreboard players set @s lifetime 118
execute if entity @s[tag=NormalSlash,tag=Approach,scores={time=12..,ArrowCount=0..1}] run tag @s add StrafeLeft
execute if entity @s[tag=NormalSlash,tag=Approach,scores={time=12..,ArrowCount=2..3}] run tag @s add StrafeRight
execute if entity @s[tag=NormalSlash,tag=Approach,scores={time=12..}] run tag @s remove Approach
execute if entity @s[tag=!StrafeLeft,tag=!StrafeRight,scores={time=13..}] run scoreboard players set @s time 100

execute if entity @s[scores={time=100..}] run function ocarina_of_time:enemies/gerudo_thief/reset

#Kill
execute unless entity @e[type=zombie,tag=GerudoThief] run kill @s

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s RedRupee 1
execute if entity @s[scores={RedRupee=1..}] if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~
execute if entity @s[scores={RedRupee=1}] run function ocarina_of_time:enemies/gerudo_thief/reset
execute if entity @s[scores={RedRupee=1}] run tag @s add RemoveResist
execute if entity @s[scores={RedRupee=1}] run data merge entity @e[type=zombie,tag=GerudoThief,limit=1] {NoAI:1b}
execute if entity @s[scores={RedRupee=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .2 .1 .2 1 1
execute if entity @s[scores={RedRupee=110}] run data merge entity @e[type=zombie,tag=GerudoThief,limit=1] {NoAI:0b}
execute if entity @s[scores={RedRupee=110}] run tag @e[type=zombie,tag=GerudoThief] add Resist
execute if entity @s[scores={RedRupee=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s RedRupee 0

execute if entity @s[tag=Stun] if entity @e[type=zombie,tag=GerudoThief,nbt={HurtTime:10s}] run scoreboard players set @s RedRupee 109

#Damage
execute if entity @s[tag=Damage] run tag @s add RemoveResist
execute if entity @s[tag=Damage2] run tag @s add RemoveResist

#Resist
execute if entity @s[tag=RemoveResist] run tag @e[type=zombie,tag=GerudoThief] remove Resist
execute if entity @s[tag=RemoveResist] run effect clear @e[type=zombie,tag=GerudoThief] minecraft:resistance
execute if entity @s[tag=RemoveResist] run tag @s remove RemoveResist

execute if entity @s[tag=Damage] run effect give @e[type=zombie,tag=GerudoThief] minecraft:instant_health 1 1 true
execute if entity @s[tag=Damage] run tag @e[type=zombie,tag=GerudoThief] add Resist
execute if entity @s[tag=Damage] run playsound minecraft:entity.panda.sneeze hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Damage] run tag @s remove Damage

execute if entity @s[tag=Damage2] run effect give @e[type=zombie,tag=GerudoThief] minecraft:instant_health 1 0 true
execute if entity @s[tag=Damage2] run tag @e[type=zombie,tag=GerudoThief] add Resist
execute if entity @s[tag=Damage2] run playsound minecraft:entity.panda.sneeze hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Damage2] run tag @s remove Damage2

#Sounds
execute if entity @s[tag=SpinAttack,scores={lifetime=122}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=NormalSlash,scores={time=2}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1
execute if entity @e[type=zombie,tag=GerudoThief,tag=!Resist,nbt={HurtTime:10s}] run playsound minecraft:entity.panda.sneeze hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=0}] run playsound minecraft:entity.horse.breathe hostile @a ~ ~ ~ 1 2
