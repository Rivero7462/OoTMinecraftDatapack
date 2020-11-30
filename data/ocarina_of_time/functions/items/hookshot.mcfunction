scoreboard players add @s Hookshot 1
scoreboard objectives add HookshotJump minecraft.custom:minecraft.jump

#Setup
execute if entity @s[scores={Hookshot=1}] run data modify entity @s Rotation set from entity @p Rotation

#Particles
execute if entity @s[scores={Hookshot=2..100}] if block ~ ~1.6 ~ #ocarina_of_time:hookshot_1 run particle minecraft:crit ~ ~1.6 ~ 0 0 0 0 1 force

#Shoot
execute if entity @s[scores={Hookshot=0..100}] if entity @a[gamemode=creative] run tag @a add CreativeHook
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ if block ^ ^ ^1 #ocarina_of_time:hookshot_1 if block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 if block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 positioned ~ ~-1.6 ~ run tp @s ^ ^ ^.5
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ if block ^ ^ ^1 #ocarina_of_time:hookshot_1 if block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 if block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 run playsound minecraft:item.sweet_berries.pick_from_bush ambient @a ~ ~ ~ 10 2
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^ ^ ^1 #ocarina_of_time:hookshot_1 run playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 run playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 run playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^ ^ ^1 #ocarina_of_time:hookshot_1 run scoreboard players set @s Hookshot 1000
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 run scoreboard players set @s Hookshot 1000
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 run scoreboard players set @s Hookshot 1000
#Skulltula
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ if entity @e[type=zombie,tag=WallSkull,distance=..2] run tag @s add Skulltula
execute if entity @s[tag=Skulltula] run scoreboard players set @s Hookshot 1000
execute if entity @s[tag=Skulltula] positioned ~ ~1.6 ~ run kill @e[type=zombie,tag=WallSkull,distance=..2]
execute if entity @s[tag=Skulltula] run tag @s remove Skulltula

#Grab
execute positioned ~ ~1.6 ~ if block ^ ^ ^1.5 #ocarina_of_time:hookshot_2 unless entity @s[scores={Hookshot=200..}] unless entity @e[type=zombie,tag=WallSkull,distance=..4] run scoreboard players set @s Hookshot 200
#Reel In
execute if entity @s[scores={Hookshot=200}] run tp @s ^ ^ ^1.7
execute if entity @s[scores={Hookshot=200}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Hookshot2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={Hookshot=200}] at @a run gamemode spectator @p
execute if entity @s[scores={Hookshot=200}] at @a run effect give @a minecraft:resistance 1 255 true
execute if entity @s[scores={Hookshot=200..}] as @e[type=area_effect_cloud,tag=Hookshot2] at @s run tp @s ^ ^ ^.6 facing entity @e[type=area_effect_cloud,tag=Hookshot,limit=1]
execute if entity @s[scores={Hookshot=200..}] as @e[type=area_effect_cloud,tag=Hookshot2] at @s run playsound minecraft:item.sweet_berries.pick_from_bush ambient @a ~ ~ ~ 10 1.5
execute if entity @s[scores={Hookshot=200..}] as @e[type=area_effect_cloud,tag=Hookshot2] at @s run tp @p @s

#Underwater
execute at @a if block ~ ~ ~ minecraft:water if entity @s[scores={Hookshot=1..100}] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run scoreboard players set @s Hookshot 1000
execute at @a if block ~ ~ ~ minecraft:water if entity @s[scores={Hookshot=1..100}] if block ~ ~-.1 ~ minecraft:water run scoreboard players set @s Hookshot 1000

#Players Motion
effect give @a minecraft:slowness 100000 255 true
execute if entity @s[scores={Hookshot=2..100}] at @a facing entity @s feet run tp @a ~ ~ ~ ~ ~
execute if entity @s[scores={Hookshot=1..100}] at @a[scores={HookshotJump=1..}] run scoreboard players set @s Hookshot 1000
execute if entity @s[scores={Hookshot=1..100}] unless entity @a[nbt={FallDistance:0.0f}] run scoreboard players set @s Hookshot 1000

#Finish
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotLongshot] if entity @s[scores={Hookshot=16}] run scoreboard players set @s Hookshot 1000
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=GotLongshot] if entity @s[scores={Hookshot=36}] run scoreboard players set @s Hookshot 1000
execute if entity @s[scores={Hookshot=200..}] if entity @a[distance=...6] run scoreboard players set @s Hookshot 1000

#Under
execute if entity @s[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @a[distance=...6] at @a rotated ~ 0 if block ~ ~ ~ #ocarina_of_time:hookshot_3 if block ~ ~1 ~ #ocarina_of_time:hookshot_3 unless block ~ ~2 ~ #ocarina_of_time:hookshot_3 run tp @a ~ ~-1 ~
#Above
execute if entity @s[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @a[distance=...6] at @a rotated ~ 0 if block ^ ^2.6 ^.6 #ocarina_of_time:hookshot_3 run tp @a ^ ^2.6 ^.5
#Bottom
execute if entity @s[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @a[distance=...6] at @a rotated ~ 0 unless block ~ ~ ~ #ocarina_of_time:hookshot_3 run tp @a ^ ^.8 ^-1
#Wall
execute if entity @s[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @a[distance=...6] at @a rotated ~ 0 unless block ^ ^1 ^.9 #ocarina_of_time:hookshot_3 unless block ^ ^1 ^.2 #ocarina_of_time:hookshot_3 run say 1
execute if entity @s[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @a[distance=...6] at @a rotated ~ 0 unless block ^ ^1 ^.5 #ocarina_of_time:hookshot_3 unless block ^ ^1 ^.2 #ocarina_of_time:hookshot_3 run tp @a ^ ^.8 ^-1

execute if entity @s[scores={Hookshot=1000..}] unless entity @a[tag=CreativeHook] run gamemode adventure @p
execute if entity @s[scores={Hookshot=1000..}] if entity @a[tag=CreativeHook] run gamemode creative @p
execute if entity @s[scores={Hookshot=1000..}] if entity @a[tag=CreativeHook] run tag @a remove CreativeHook
execute if entity @s[scores={Hookshot=1000..}] run effect clear @a minecraft:slowness
execute if entity @s[scores={Hookshot=1000..}] run scoreboard objectives remove HookshotJump
execute if entity @s[scores={Hookshot=1000..}] run kill @e[type=area_effect_cloud,tag=Hookshot2]
execute if entity @s[scores={Hookshot=1000..}] run kill @s
execute if entity @s[scores={Hookshot=1000..}] run scoreboard players set @s Hookshot 0

#Enemies
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Skulltula,distance=..2] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ^ ^.5 ^1 as @e[type=zombie,tag=WallSkull,distance=..2] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ^ ^ ^1 as @e[type=zombie,tag=GoldSkull,distance=..2] unless entity @s[nbt={Invulnerable:1b}] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=DekuScrub,distance=..2] run tag @s add Scared
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=DekuScrub,tag=Scared,scores={lifetime=15..},distance=..2] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=SkullKid,distance=..2] run scoreboard players set @s lifetime 600
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=armor_stand,tag=BusinessScrub,scores={timer=2..},distance=..5] run tag @s add Appear
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=LungeBaba,distance=..2] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Lizalfos,tag=!JumpAttack,distance=..2] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Dinolfos,tag=!JumpOver,distance=..2] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Octorok,distance=..2] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=wither_skeleton,tag=Moblin,distance=..2] unless entity @s[nbt={Invulnerable:1b}] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=wither_skeleton,tag=ClubMoblin,distance=..3] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=BlueBubble,distance=..3] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Stalfos,distance=..3] unless entity @s[tag=Block] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Wallmaster,distance=..3,scores={timer=131..180}] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Floormaster,distance=..2] unless entity @s[scores={timer=40..75}] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Tinymaster,distance=..2] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=GreenBubble,distance=..3] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=PurplePoe,distance=..3] unless entity @s[tag=Meg] run tag @s add Hide
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=PurplePoe,distance=..3] if entity @s[tag=Meg] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=SmallBigPoe,distance=..3] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=PhantomGanon,distance=..1] unless entity @s[nbt={Invulnerable:1b}] unless entity @s[tag=Stage2] run effect give @s minecraft:wither 2 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=horse,tag=PhantomHorse,distance=..1] unless entity @s[nbt={Invulnerable:1b}] run effect give @s minecraft:wither 2 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=FlyingTile,distance=..1.5] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=LikeLike,distance=..2] unless entity @s[scores={timer=40..75}] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=TorchSlug,distance=..1.5] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Switch,distance=..1] run tag @s remove Off
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~ ~ as @e[type=wither_skeleton,tag=FlareDancer,scores={time=53..},distance=..1] run tag @s add Headless
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=FlareDancer,distance=..1.5] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=VolvagiaHead,tag=Fly,distance=..1] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=VolvagiaHead,tag=Boulder,distance=..1] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Spike,distance=..1,tag=!Stun] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Spike,distance=..1,tag=Stun] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=ShellBlade,distance=..1,scores={timer=1..30}] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=OtherStinger,distance=..1.2] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=armor_stand,tag=DarkLink,distance=..1.2,tag=Stun] run scoreboard players set @s ArrowCount 1
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=MorphaEye,distance=..1,tag=Swim,scores={lifetime=105..307}] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=ravager,tag=BongoBongo,distance=..1] unless entity @e[type=armor_stand,tag=BongoHand,tag=BigStun] run effect give @s minecraft:wither 1 1 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=armor_stand,tag=GerudoGuard,distance=..1] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=armor_stand,tag=GerudoThief,distance=..3] if entity @e[type=zombie,tag=GerudoThief,tag=Resist] run tag @s add DoBigJump
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=armor_stand,tag=GerudoThief,distance=..1] if entity @e[type=zombie,tag=GerudoThief,tag=!Resist] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Dinolfos,distance=..1] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Wolfos,tag=Resist,distance=..1.8] run scoreboard players set @s lifetime 200
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Wolfos,tag=!Resist,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Leever,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Guay,distance=..1.8] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=bat,tag=Keese,distance=..1.8] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Tektite,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=FlyingPot,tag=Attack,distance=..1.8] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Freezard,distance=..1.8] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Stinger,distance=..1.8] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=OtherStinger,distance=..1.8] run kill @s
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=BabyDodongo,distance=..1.8] run tag @s add Kill
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Dodongo,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.8] if entity @s[tag=Attack] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Armos,tag=Resist,distance=..1.8] run effect give @s minecraft:wither 1 1 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Poe,tag=!Hide,distance=..1.8] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=Gibdo,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=wither_skeleton,tag=Redead,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=WhiteBubble,distance=..1.8] run tag @s add Stun
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=chicken,tag=Cucco,distance=..1.8] run effect give @s minecraft:wither 1 1 true
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=GanonHead,distance=..1.8] run tag @e[type=armor_stand,tag=GanonBody] add ShakeHead
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ as @e[type=zombie,tag=TailHealth,distance=..1.8,nbt={Invulnerable:0b}] run tag @s add ItemHurt
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=zombie,tag=Floormaster,distance=..2] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=zombie,tag=VolvagiaHead,tag=Stun,distance=..2] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=zombie,tag=PhantomGanon,tag=Stun,distance=..2] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=zombie,tag=LikeLike,distance=..2] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] as @e[type=zombie,tag=Gibdo,distance=..1.8] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] as @e[type=zombie,tag=Redead,distance=..1.8] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] as @e[type=zombie,tag=IronKnuckle,distance=..1.8] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] as @e[type=zombie,tag=NabooruKnuckle,distance=..1.8] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=2..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=zombie,tag=Freezard,distance=..1.8] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=8..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=armor_stand,tag=ScarecrowSpot,distance=..1.5] run scoreboard players set @s Hookshot 199
execute if entity @s[scores={Hookshot=8..100}] positioned ~ ~.5 ~ unless entity @s[scores={Hookshot=200..}] if entity @e[type=zombie,tag=Ganondorf,tag=Light,distance=..1.5] run scoreboard players set @s Hookshot 199
