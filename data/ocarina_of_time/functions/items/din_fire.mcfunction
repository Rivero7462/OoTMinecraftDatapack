scoreboard objectives add SpiritMagic dummy
scoreboard players add @s SpiritMagic 1

execute if entity @s[scores={SpiritMagic=1}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 .8
execute if entity @s[scores={SpiritMagic=1}] run experience add @a -3 levels
execute if entity @s[scores={SpiritMagic=1}] run summon firework_rocket ~ ~1 ~ {Silent:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16777215]}]}}}}
execute if entity @s[scores={SpiritMagic=1}] run effect give @p resistance 1000000 255 true
execute if entity @s[scores={SpiritMagic=2}] run effect clear @p resistance

#Enemies
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=LungeBaba,distance=..8] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=WallSkull,distance=..8] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=GoldSkull,distance=..8] unless entity @s[nbt={Invulnerable:1b}] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Skulltula,distance=..8] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=LarvaHealth,distance=..8] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Beamos,distance=..8] run tag @s add Stun
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=BabyDodongo,distance=..8] run effect give @s resistance 1 255 true
execute if entity @s[scores={SpiritMagic=1}] as @e[type=bat,tag=Keese,distance=..8] run effect give @s resistance 1 255 true
execute if entity @s[scores={SpiritMagic=1}] as @e[type=bat,tag=Keese,distance=..8] run tag @s add Flame
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Dodongo,distance=..8] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=DekuScrub,distance=..8] run tag @s add Scared
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=DekuScrub,tag=Scared,distance=..8,scores={lifetime=15..}] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=armor_stand,tag=BusinessScrub,scores={timer=2..},distance=..8] run tag @s add Appear
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Stalchild,distance=..8] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Shabom,distance=..8] run tag @s add Kill
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Biri,distance=..8] run tag @s add Kill
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Bari,distance=..8] run tag @s add Kill
execute if entity @s[scores={SpiritMagic=1}] as @e[type=armor_stand,tag=UnlitTorch,distance=..8] at @s run fill ~ ~1 ~ ~ ~1 ~ minecraft:torch
execute if entity @s[scores={SpiritMagic=1}] as @e[type=armor_stand,tag=UnlitTorch,distance=..8] run tag @s add LitTorch
execute if entity @s[scores={SpiritMagic=1}] as @e[type=wither_skeleton,tag=Redead,distance=..8] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={SpiritMagic=1}] as @e[type=wither_skeleton,tag=Redead,distance=..8] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={SpiritMagic=1}] as @e[type=wither_skeleton,tag=Gibdo,distance=..8] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={SpiritMagic=1}] as @e[type=wither_skeleton,tag=Gibdo,distance=..8] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Wallmaster,distance=..8,scores={timer=131..180}] run tag @s add Kill
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Spike,distance=..8,tag=!Stun] run tag @s add Stun
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Spike,distance=..8,tag=Stun] run tag @s add Kill
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=ShellBlade,distance=..8] run tag @s add Kill
execute if entity @s[scores={SpiritMagic=1}] as @e[type=armor_stand,tag=DarkLink,distance=..8] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/din_fire
execute if entity @s[scores={SpiritMagic=1}] as @e[type=armor_stand,tag=SpikeWall,distance=..16] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=armor_stand,tag=GerudoThief,distance=..16] run tag @s add Damage
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Wolfos,distance=..16] run tag @s add Damage
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Guay,distance=..16] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=Anubis,distance=..16] run kill @s
execute if entity @s[scores={SpiritMagic=1}] as @e[type=zombie,tag=GanonHead,distance=..16] run tag @e[type=armor_stand,tag=GanonBody] add ShakeHead
execute if entity @s[scores={SpiritMagic=1}] if entity @a[x=751,y=35,z=2037,dx=12,dz=10] run function ocarina_of_time:moving_things/hyrule_field/grottos/all_webs
execute if entity @s[scores={SpiritMagic=1}] positioned 938 83 -1154 if entity @a[distance=..5] if block 936 87 -1154 minecraft:ice run summon minecraft:area_effect_cloud 946 84 -1190 {Tags:["TwistedRoom","TwistedRoom5"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={SpiritMagic=1}] positioned 938 83 -1154 if entity @a[distance=..5] if block 936 87 -1154 minecraft:ice run fill 936 87 -1154 936 87 -1154 minecraft:air

#After
execute if entity @s[scores={SpiritMagic=30}] run tag @s remove DinFire
execute if entity @s[scores={SpiritMagic=30}] run scoreboard objectives remove SpiritMagic
