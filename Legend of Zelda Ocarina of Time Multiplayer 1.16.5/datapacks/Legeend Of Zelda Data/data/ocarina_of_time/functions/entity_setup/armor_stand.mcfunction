#Npc's
execute if entity @s[tag=Npc] at @s run function ocarina_of_time:distance_text/loop

#Rock
execute if entity @s[tag=Rock] at @s run function ocarina_of_time:enemies/rock

#Deku Baba
execute if entity @s[tag=DekuBaba] at @s run function ocarina_of_time:enemies/deku_baba

#Business Scrub
execute if entity @s[tag=BusinessScrub] at @s run function ocarina_of_time:enemies/deku_scrub/business_scrub

#Deku Nut
execute if entity @s[tag=DekuNut] at @s run function ocarina_of_time:enemies/deku_scrub/deku_nut

#Gohma Larva
execute if entity @s[tag=LarvaEgg] at @s run function ocarina_of_time:enemies/gohma_larva/larva

#Poe
execute if entity @s[tag=Poe,tag=Die] at @s run function ocarina_of_time:enemies/poe/poe_3
execute if entity @s[tag=Poe] at @s run function ocarina_of_time:enemies/poe/poe_4

#Red Blue Green Poe
execute if entity @s[tag=ForestPoe] run function ocarina_of_time:enemies/poe/poe_4
execute if entity @s[tag=ForestPoe,tag=Die] run kill @s

#Purple Poe
execute if entity @s[tag=PurplePoe] run function ocarina_of_time:enemies/poe/poe_4
execute if entity @s[tag=PurplePoe,tag=Die] run kill @s

#Small Big Poe
execute if entity @s[tag=SmallBigPoe] at @s run function ocarina_of_time:enemies/poe/small_big_poe

#Big Poe
execute if entity @s[tag=BigPoe] at @s run function ocarina_of_time:enemies/poe/big_poe
execute if entity @s[tag=BigPoe,tag=Die] at @s run function ocarina_of_time:enemies/poe/big_poe_pickup

#Flat
execute if entity @s[tag=Flat,tag=Die] at @s run function ocarina_of_time:enemies/poe/flat_death
execute if entity @s[tag=Flat] at @s run function ocarina_of_time:enemies/poe/flat
#Sharp
execute if entity @s[tag=Sharp,tag=Die] at @s run function ocarina_of_time:enemies/poe/sharp_death
execute if entity @s[tag=Sharp] at @s run function ocarina_of_time:enemies/poe/sharp

#Ock Rock
execute if entity @s[tag=OckRock] at @s run function ocarina_of_time:enemies/octorok/ockrock

#Peahat
execute if entity @s[tag=Peahat] at @s run function ocarina_of_time:enemies/peahat/peahat
execute if entity @s[tag=Peahat] if entity @e[type=area_effect_cloud,tag=PeahatReturn] run function ocarina_of_time:enemies/peahat/peahat_timer
execute if entity @s[tag=Peahat] if entity @e[type=area_effect_cloud,tag=PeahatReturn] run function ocarina_of_time:enemies/peahat/peahat_timer
execute if entity @s[tag=Peahat] if entity @e[type=area_effect_cloud,tag=PeahatReturn] run function ocarina_of_time:enemies/peahat/peahat_timer
execute if entity @s[tag=Peahat] if entity @e[type=area_effect_cloud,tag=PeahatReturn] run function ocarina_of_time:enemies/peahat/peahat_timer

#Special Peahat
execute if entity @s[tag=SpecialPeahat] at @s run function ocarina_of_time:enemies/peahat/special_peahat

#Ice Blade Trap
execute if entity @s[tag=IceBladeTrap] run function ocarina_of_time:enemies/blade_traps/ice_blade_trap

#Scythe Blade Trap
execute if entity @s[tag=ScytheBladeTrap] run function ocarina_of_time:enemies/blade_traps/scythe_blade_trap

#Skull Kid Bullet
execute if entity @s[tag=Bullet] at @s run function ocarina_of_time:enemies/skull_kid/bullet

#Bird Statue
execute if entity @s[tag=SkullTorch] at @s run function ocarina_of_time:moving_things/shadow_temple/skull_torch

#Boomerang
execute if entity @s[tag=Boomerang] at @s run tp @s ~ ~ ~ ~35 ~
execute if entity @s[tag=Boomerang] at @s run tp @e[type=item,tag=!NoPickup,distance=..1.5] @s
execute if entity @s[tag=Boomerang] at @e[type=armor_stand,tag=BoomerangStart] anchored feet if entity @a[tag=ThrowBoomerang] run function ocarina_of_time:items/boomerang/boomerang
execute if entity @s[tag=Boomerang] at @a run function ocarina_of_time:items/boomerang/boomerang2
execute if entity @s[tag=Boomerang] at @a unless entity @s[distance=..30] run function ocarina_of_time:items/boomerang/boomerang3

#Farore's Wind
execute if entity @s[tag=FaroreWind] at @s run tp @s ~ ~ ~ ~10 ~

#Goron Bracelet
execute if entity @s[tag=Bomb] at @s if entity @a[tag=Holding] run function ocarina_of_time:items/goron_bracelet/goron_bracelet

#Navi Help
execute if entity @s[tag=HintNavi] if entity @a[nbt={Inventory:[{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Navi\"}"}}}]}] as @e[type=area_effect_cloud,tag=FakeSaria] run function ocarina_of_time:items/navi/navi_help

#Rock
execute if entity @s[tag=Rock] at @a if entity @s[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#Deku Stick
execute if entity @s[tag=UnlitTorch] if entity @s[nbt={HandItems:[{tag:{LitDekuStick:1b}}]}] at @s run function ocarina_of_time:items/deku_stick/deku_stick_1
execute if entity @s[tag=LitTorch] if entity @s[nbt={HandItems:[{tag:{DekuStick:1b}}]}] at @s run function ocarina_of_time:items/deku_stick/deku_stick_1
execute if entity @s[tag=LitTorch] if entity @s[nbt={HandItems:[{tag:{LitDekuStick:1b}}]}] at @s run data merge entity @s {HandItems:[{id:""}]}

#Bombchu
execute if entity @s[tag=Bombchu] at @s positioned ~ ~.7 ~ run function ocarina_of_time:items/bombchu/move

#Silver Rupee
execute if entity @s[tag=SilverRupee] at @s run function ocarina_of_time:items/silver_rupees/silver_rupee

#Guillotine
execute if entity @s[tag=Guillotine] at @s run function ocarina_of_time:enemies/guillotine

#Spike Trap
execute if entity @s[tag=BladeTrap,tag=Type1] at @s run function ocarina_of_time:enemies/blade_traps/blade_trap_1
execute if entity @s[tag=BladeTrap,tag=Type2] at @s run function ocarina_of_time:enemies/blade_traps/blade_trap_2
execute if entity @s[tag=BladeTrap,tag=Type3] at @s run function ocarina_of_time:enemies/blade_traps/blade_trap_3

#Eye Fire
execute if entity @s[tag=EyeFire] at @s run function ocarina_of_time:enemies/fire_eye/fire

#Gerudo Thief
execute if entity @s[tag=GerudoThief] at @s run function ocarina_of_time:enemies/gerudo_thief/gerudo_thief

#Iron Knuckle
execute if entity @s[tag=IronKnuckle] at @s run function ocarina_of_time:enemies/iron_knuckle/iron_knuckle

#Mirror
tag @a remove InMirror
execute if entity @s[tag=Mirror,tag=Light] at @s positioned ^ ^1 ^1 run function ocarina_of_time:enemies/mirror

#Sun
execute if entity @s[tag=Sun] at @s run function ocarina_of_time:enemies/sun

#Nabooru Knuckle
execute if entity @s[tag=NabooruKnuckle] at @s run function ocarina_of_time:moving_things/spirit_temple/enemies/nabooru_knuckle/nabooru_knuckle

#Green Navi
execute if entity @s[tag=GreenNavi] at @s run function ocarina_of_time:enemies/green_navi

#Castle Town
execute if entity @a[tag=InCastleTown] if entity @s[tag=!BadMask] run function ocarina_of_time:moving_things/castle_town/people/loop

#Icicle
execute if entity @s[tag=Icicle] at @s run function ocarina_of_time:enemies/icicle

#Gossip Stone
execute if entity @s[tag=GossipStone] at @s run function ocarina_of_time:enemies/gossip_stone

#Cursed Skulltula
execute if entity @s[tag=CursedSkulltula] at @s run function ocarina_of_time:enemies/skulltula/cursed_skulltula
