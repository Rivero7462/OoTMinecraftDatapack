scoreboard objectives setdisplay sidebar DekuNuts
tag @a add HideDisplayScore

execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] run particle minecraft:crit ^ ^.6 ^3.5 0.1 0 0.1 1 100 normal
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] run particle minecraft:flash ~ ~ ~ 0 0 0 0 3 normal
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2

#Enemies
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Skulltula,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Beamos,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=LungeBaba,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Tektite,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Shabom,distance=..5] run tag @s add Kill
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=BariJelly,nbt={Invulnerable:0b},distance=..4] run tag @s add Kill
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Biri,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Bari,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Tailpasaran,distance=..2] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Stinger,distance=..2] unless entity @s[tag=Seen] run tag @s add Seen
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Stinger,distance=..3,tag=Seen] unless entity @s[scores={timer=..70}] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=BabyDodongo,distance=..3] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Dodongo,distance=..3] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=bat,tag=Keese,distance=..3] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.5] at @s if entity @s[tag=Attack] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.5] run tag @s add Attack
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=DekuScrub,tag=!SpecialScrub,distance=..2] run tag @s add Scared
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=DekuScrub,distance=..2,tag=Scared,scores={lifetime=15..}] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=armor_stand,tag=BusinessScrub,scores={timer=2..},distance=..2] run tag @s add Appear
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Stalchild,distance=..1.5] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=LarvaHealth,distance=..1.5] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Stalfos,distance=..1.5] unless entity @s[tag=Block] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Wallmaster,distance=..1.5,scores={timer=131..180}] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Floormaster,distance=..1.5] unless entity @s[scores={timer=40..75}] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Floormaster,distance=..1.5] unless entity @s[scores={timer=40..75}] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=BlueBubble,distance=..1.5] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=GreenBubble,distance=..1.5] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=ForestPoe,distance=..1.8,scores={HoverTimer=21..160}] run scoreboard players set @s HoverTimer 150
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=PurplePoe,distance=..1.8] unless entity @s[tag=Meg] run tag @s add Hide
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=FlyingTile,distance=..1.8] run tag @s add Kill
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=TorchSlug,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Octo,distance=..3] run tag @s add Stun2
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Spike,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=armor_stand,tag=DarkLink,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=armor_stand,tag=GerudoThief,distance=..1.8] if entity @e[type=zombie,tag=GerudoThief,tag=Resist] run tag @s add DoBlock
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=armor_stand,tag=GerudoThief,distance=..1.8] if entity @e[type=zombie,tag=GerudoThief,tag=!Resist] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Lizalfos,tag=!JumpAttack,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Dinolfos,tag=!JumpOver,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Wolfos,tag=Resist,distance=..1.8] run scoreboard players set @s lifetime 200
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Wolfos,tag=!Resist,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=FlyingPot,tag=Attack,distance=..1.8] run kill @s
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=Gohma,tag=Attack,distance=..1.8] run tag @s add Stun2
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^3 ^3.5 as @e[type=zombie,tag=GanonHead,distance=..1.8] run tag @e[type=armor_stand,tag=GanonBody] add ShakeHead
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] positioned ^ ^.6 ^3.5 as @e[type=zombie,tag=TailHealth,distance=..1.8,nbt={Invulnerable:0b}] run tag @s add ItemHurt

#Finish
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={DekuNuts=..0}] run scoreboard players remove @s DekuNuts 1
