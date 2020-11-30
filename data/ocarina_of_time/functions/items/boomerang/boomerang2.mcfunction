execute at @s if entity @s[scores={lifetime=52..}] run tp @s ^ ^ ^1 facing entity @p

execute if entity @s[distance=..1] if entity @s[scores={lifetime=25..}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Boomerang\"}"},Unbreakable:1b,Damage:8,HideFlags:63,Boomerang:1b}
execute if entity @s[distance=..1] if entity @s[scores={lifetime=25..}] run tag @a remove ThrowBoomerang
execute if entity @s[distance=..1] if entity @s[scores={lifetime=25..}] run tag @a remove BoomerangMode
execute if entity @s[distance=..1] if entity @s[scores={lifetime=25..}] run kill @e[type=armor_stand,tag=BoomerangStart]
execute if entity @s[distance=..1] if entity @s[scores={lifetime=25..}] run kill @s

#Enemies
execute at @s positioned ~ ~ ~ as @e[type=wither_skeleton,tag=DekuBabaBody,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=LungeBaba,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=LarvaHealth,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Octorok,distance=..1.5] run tag @s add Kill
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Shabom,distance=..1.5] run tag @s add Kill
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Biri,distance=..1.5] run tag @s add Kill
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Bari,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Tailpasaran,distance=..1.5] run tag @s add Kill
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Stinger,distance=..1.5] unless entity @s[tag=Seen] run tag @s add Seen
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Stinger,distance=..1.5,tag=Seen] unless entity @s[scores={timer=..70}] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=area_effect_cloud,tag=RedJelly,distance=..3] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=WallSkull,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=GoldSkull,distance=..1.5] unless entity @s[nbt={Invulnerable:1b}] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Skulltula,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Tektite,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=BabyDodongo,tag=Attack,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=bat,tag=Keese,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Dodongo,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.5] at @s if entity @s[tag=Attack] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.5] run tag @s add Attack
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Poe,distance=..1.5] run effect give @s minecraft:wither 2 2 true
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=DekuScrub,distance=..1.3] run tag @s add Scared
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=DekuScrub,tag=Scared,distance=..1.3,scores={lifetime=15..}] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=armor_stand,tag=BusinessScrub,scores={timer=2..},distance=..1.3] run tag @s add Appear
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Stalchild,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=armor_stand,tag=Peahat,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=armor_stand,tag=BarinadeTentacle,distance=..1] run tag @s add Kill
execute at @s positioned ~ ~ ~ as @e[type=ravager,tag=BarinadeBody,tag=!Phase4,distance=..1.5] if block 1681 44 1329 minecraft:gold_block run tag @s add Stun
execute at @s positioned ~ ~-1 ~ as @e[type=ravager,tag=BarinadeBody,tag=Phase4,scores={GameTimer=2..200},distance=..2] run tag @s add Stun2
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=BariJelly,distance=..1.5,nbt={Invulnerable:0b}] run tag @s add Kill
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=GreenBubble,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ unless entity @e[type=armor_stand,tag=BarinadeControl,scores={lifetime=150..350}] if entity @e[type=zombie,tag=BariJelly,distance=..1.5,nbt={Invulnerable:1b}] run scoreboard players set @s lifetime 51
execute at @e[type=zombie,tag=Octo,scores={lifetime=31..}] positioned ^ ^ ^1.5 if entity @s[distance=..2] run tag @e[type=zombie,tag=Octo] add Stun1
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Leever,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Guay,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Switch,distance=..1.5] run tag @s remove Off
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=FlyingPot,tag=Attack,distance=..1.5] run kill @s
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Wallmaster,scores={timer=135..169},distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=LikeLike,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Stalfos,distance=..1.5] unless entity @s[tag=Block] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Lizalfos,tag=!JumpAttack,distance=..1.5] run tag @s add Stun
execute at @s positioned ~ ~ ~ as @e[type=zombie,tag=Dinolfos,tag=!JumpOver,distance=..1.5] run tag @s add Stun

execute at @s positioned ~ ~ ~ if entity @e[type=!player,type=!area_effect_cloud,type=!item,tag=!Boomerang,tag=!BoomerangStart,tag=!DekuNut,tag=!HintNavi,distance=..1.3] run scoreboard players set @s lifetime 51
