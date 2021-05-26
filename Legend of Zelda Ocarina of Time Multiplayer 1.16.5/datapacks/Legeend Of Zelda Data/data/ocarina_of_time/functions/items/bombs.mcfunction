scoreboard players set @s ThrowBomb 1
scoreboard players add @s timer 1

execute if entity @s[scores={ThrowBomb=1}] run particle smoke ~ ~.5 ~ 0 0 0 0 1
execute if entity @s[scores={ThrowBomb=1}] unless entity @s[scores={timer=2..}] run data merge entity @s {PickupDelay:1000}
execute if entity @s[scores={ThrowBomb=1}] if entity @s[scores={timer=2}] run playsound entity.tnt.primed block @p ~ ~ ~

execute if entity @s[scores={timer=100..}] run particle minecraft:explosion ~ ~.5 ~ 1 1 1 0 5
execute if entity @s[scores={timer=100..}] run playsound entity.generic.explode block @p

execute if entity @s[scores={timer=100..}] run fill ~-2 ~-2 ~-2 ~2 ~4 ~2 minecraft:air replace minecraft:mossy_cobblestone

execute if block ~ ~ ~ minecraft:water run kill @s

#Enemies
execute if entity @s[scores={timer=100..}] run effect give @a[distance=..3] minecraft:wither 1 1 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=LungeBaba,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=LarvaHealth,distance=..3] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] run tag @e[type=zombie,tag=Beamos,distance=..3] add Dead
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=BabyDodongo,distance=..3] run tag @s add Kill
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Armos,tag=Resist,distance=..3] at @s if entity @s[tag=Attack] run tag @s add Kill
execute if entity @s[scores={timer=100..}] run effect give @e[type=zombie,tag=Armos,tag=Resist,distance=..3] minecraft:wither 1 1 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Armos,tag=Resist,distance=..3] run tag @s add Attack
execute if entity @s[scores={timer=100..}] run data merge entity @e[type=zombie,tag=Dodongo,distance=..3,limit=1] {Invulnerable:0b}
execute if entity @s[scores={timer=100..}] run effect give @e[type=zombie,tag=Dodongo,distance=..3] minecraft:instant_health 1 1 true
execute if entity @s[scores={timer=100..}] run tag @e[type=zombie,tag=Octorok,distance=..3] add Kill
execute if entity @s[scores={timer=100..}] run tag @e[type=zombie,tag=Shabom,distance=..3] add Kill
execute if entity @s[scores={timer=100..}] run tag @e[type=zombie,tag=Biri,distance=..3] add Kill
execute if entity @s[scores={timer=100..}] run tag @e[type=zombie,tag=Bari,distance=..3] add Kill
execute if entity @s[scores={timer=100..}] run tag @e[type=zombie,tag=Stinger,distance=..3] add Kill
execute if entity @s[scores={timer=100..}] run tag @e[type=armor_stand,tag=Goron11,distance=..3] add Wait
execute if entity @s[scores={timer=100..}] run tag @e[type=armor_stand,tag=Goron12,distance=..3] add Wait
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=WallSkull,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=GoldSkull,distance=..3] unless entity @s[nbt={Invulnerable:1b}] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Skulltula,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Tektite,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=bat,tag=Keese,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Poe,distance=..3] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=DekuScrub,distance=..3] run tag @s add Scared
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=DekuScrub,tag=Scared,distance=..3,scores={lifetime=15..}] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=armor_stand,tag=BusinessScrub,scores={timer=2..},distance=..3] run tag @s add Appear
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Stalchild,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Peahat,distance=..3] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={timer=100..}] as @e[type=wither_skeleton,tag=ClubMoblin,distance=..3] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=wither_skeleton,tag=Moblin,distance=..3] run tag @s add Kill
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Stalfos,distance=..3] unless entity @s[tag=Block] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Wallmaster,distance=..3,scores={timer=131..180}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Floormaster,distance=..3] unless entity @s[scores={timer=40..75}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=BlueBubble,tag=Ground,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=GreenBubble,distance=..3] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=FlyingTile,distance=..3] run tag @s add Kill
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=LikeLike,distance=..3] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Switch,distance=..2] run tag @s remove Off
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=DoorMimic,distance=..2] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=wither_skeleton,tag=FlareDancer,distance=..3] run tag @s add Headless
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=FlareDancer,distance=..3] run effect give @s minecraft:instant_health 1 0 true
execute positioned ~ ~ ~ as @e[type=armor_stand,tag=DodongoHead,tag=Fireball1,scores={lifetime=1..70},distance=..2] run tag @s add Stun
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Spike,distance=..3,tag=!Stun] run tag @s add Stun
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Spike,distance=..3,tag=Stun] run tag @s add Kill
execute if entity @s[scores={timer=100..}] as @e[type=armor_stand,tag=DarkLink,distance=..3,tag=Stun] run effect give @e[type=zombie,tag=DarkLink] minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=ravager,tag=BongoBongo,distance=..3] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=armor_stand,tag=GerudoThief,distance=..3] if entity @e[type=zombie,tag=GerudoThief,tag=Resist] run tag @s add DoBlock
execute if entity @s[scores={timer=100..}] as @e[type=armor_stand,tag=GerudoThief,distance=..3] if entity @e[type=zombie,tag=GerudoThief,tag=!Resist] run tag @s add Damage2
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Wolfos,tag=Resist,distance=..3] run scoreboard players set @s lifetime 200
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Wolfos,tag=!Resist,distance=..3] run tag @s add Damage2
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Leever,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Guay,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=IronKnuckle,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=armor_stand,tag=GossipStone,distance=..3] run tag @s add Rocket
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=FlyingPot,tag=Attack,distance=..3] run kill @s
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Leever,distance=..3] run effect give @s minecraft:wither 1 1 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Lizalfos,tag=!JumpAttack,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=Dinolfos,tag=!JumpOver,distance=..3] run effect give @a minecraft:instant_health 1 0 true
execute if entity @s[scores={timer=100..}] as @e[type=zombie,tag=TailHealth,distance=..3] run tag @s add ItemHurt

#Grottos
execute if entity @s[scores={timer=100..}] if entity @s[x=765,y=69,z=2033,dx=4,dz=4] run fill 767 68 2035 767 68 2035 minecraft:air
execute if entity @s[scores={timer=100..}] if entity @s[x=824,y=56,z=2205,dx=4,dz=4] run fill 826 55 2207 826 55 2207 minecraft:air
execute if entity @s[scores={timer=100..}] if entity @s[x=1027,y=67,z=1891,dx=4,dz=4] run fill 1029 66 1893 1029 66 1893 minecraft:air
execute if entity @s[scores={timer=100..}] if entity @s[x=846,y=58,z=1942,dx=4,dz=4] run fill 848 57 1944 848 57 1944 minecraft:air
execute if entity @s[scores={timer=100..}] if entity @s[x=1519,y=68,z=1925,dx=4,dz=4] run fill 1521 67 1927 1521 67 1927 minecraft:air
execute if entity @s[scores={timer=100..}] if entity @s[x=-577,y=75,z=-738,dx=4,dz=4] run fill -575 74 -736 -575 74 -736 minecraft:air

execute if entity @s[scores={timer=100..}] run kill @s
