execute if entity @s[tag=Fire] run data merge entity @s {Fire:0s}
execute if entity @s[tag=Fire] run function ocarina_of_time:entity_setup/fire_resist
execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true
execute if entity @s[tag=Invisible] run effect give @s minecraft:invisibility 1000000 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:26b}]}] run effect clear @s luck
execute if entity @s[nbt={ActiveEffects:[{Id:16b}]}] run effect clear @s night_vision

#Deku Scrub
execute if entity @s[tag=DekuScrub] at @s run function ocarina_of_time:enemies/deku_scrub/deku_scrub

#Lunging Deku Baba
execute if entity @s[tag=LungeBaba] at @s run function ocarina_of_time:enemies/lunge_baba

#Stage Scrub
execute if entity @s[tag=StageScrub] at @s run function ocarina_of_time:enemies/deku_scrub/stage_scrub

#Gohma Larva
execute if entity @s[tag=LarvaHealth] at @s run function ocarina_of_time:enemies/gohma_larva/larvahealth

#Skulltula
execute if entity @s[tag=Skulltula] at @s run function ocarina_of_time:enemies/skulltula/skulltula

#Wall Skulltula
execute if entity @s[tag=WallSkull] at @s run function ocarina_of_time:enemies/skulltula/wall_skulltula

#Gold Skulltula
execute if entity @s[tag=GoldSkull] at @s run function ocarina_of_time:enemies/skulltula/gold_skulltula

#Stalchild
execute if entity @a[tag=InHyruleField] unless entity @a[tag=Adult] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if entity @s[tag=Stalchild] at @s run function ocarina_of_time:enemies/stalchild/stalchild_1

#Poe
execute if entity @s[tag=Poe] at @s run function ocarina_of_time:enemies/poe/poe

#Tektite
execute if entity @s[tag=Tektite] at @s run function ocarina_of_time:enemies/tektite

#Beamos
execute if entity @s[tag=Beamos] at @s run function ocarina_of_time:enemies/beamos/beamos1
execute if entity @s[tag=Beamos] at @s run function ocarina_of_time:enemies/beamos/beamos2

#Baby Dodongo
execute if entity @s[tag=BabyDodongo] at @s run function ocarina_of_time:enemies/baby_dodongo

#Armos
execute if entity @s[tag=Armos] at @s run function ocarina_of_time:enemies/armos

#Lizalfos
execute if entity @s[tag=Lizalfos] at @s run function ocarina_of_time:enemies/lizalfos/lizalfos

#Dodongo
execute if entity @s[tag=Dodongo] at @s run function ocarina_of_time:enemies/dodongo

#Octorok
execute if entity @s[tag=Octorok] at @s run function ocarina_of_time:enemies/octorok/octorok

#Shabom
execute if entity @s[tag=Shabom] at @s run function ocarina_of_time:enemies/shabom/shabom_1

#Biri
execute if entity @s[tag=Biri] at @s run function ocarina_of_time:enemies/biri

#Bari
execute if entity @s[tag=Bari] at @s run function ocarina_of_time:enemies/bari

#Tailpasaran
execute if entity @s[tag=Tailpasaran] at @s run function ocarina_of_time:enemies/tailpasaran

#Stinger
execute if entity @s[tag=Stinger] at @s run function ocarina_of_time:enemies/stinger/stinger
execute if entity @s[tag=OtherStinger] at @s run function ocarina_of_time:enemies/stinger/other_stinger

#Peahat Larva
execute if entity @s[tag=PeahatLarva] at @s run function ocarina_of_time:enemies/peahat/peahat_larva

#Wolfos
execute if entity @s[tag=Wolfos] at @s run function ocarina_of_time:enemies/wolfos

#Blue Bubble
execute if entity @s[tag=BlueBubble] at @s run function ocarina_of_time:enemies/bubble/blue_bubble

#Green Bubble
execute if entity @s[tag=GreenBubble] at @s run function ocarina_of_time:enemies/bubble/green_bubble

#White Bubble
execute if entity @s[tag=WhiteBubble] at @s run function ocarina_of_time:enemies/bubble/white_bubble

#Stalfos
execute if entity @s[tag=Stalfos] at @s run function ocarina_of_time:enemies/stalfos/stalfos

#Wallmaster
execute if entity @s[tag=Wallmaster] at @s run function ocarina_of_time:enemies/wallmaster/wallmaster

#Floormaster
execute if entity @s[tag=Floormaster] at @s run function ocarina_of_time:enemies/wallmaster/floormaster_1

#Tinymaster
execute if entity @s[tag=Tinymaster] at @s run function ocarina_of_time:enemies/wallmaster/floormaster_2

#Red Blue Green Poe
execute if entity @s[tag=ForestPoe] at @s run function ocarina_of_time:enemies/poe/red_blue_poe

#Purple Poe
execute if entity @s[tag=PurplePoe] at @s run function ocarina_of_time:enemies/poe/purple_poe

#Flying Tile
execute if entity @s[tag=FlyingTile] at @s run function ocarina_of_time:enemies/flying_tile

#Like-like
execute if entity @s[tag=LikeLike] at @s run function ocarina_of_time:enemies/like-like

#Torch Slug
execute if entity @s[tag=TorchSlug] at @s run function ocarina_of_time:enemies/torch_slug

#Switch
execute if entity @s[tag=Switch] at @s run function ocarina_of_time:enemies/switch

#Door Mimic
execute if entity @s[tag=DoorMimic] at @s run function ocarina_of_time:enemies/door_mimic

#Flare Dancer
execute if entity @s[tag=FlareDancer] at @s run function ocarina_of_time:enemies/flare_dancer/head

#Freezard
execute if entity @s[tag=Freezard] at @s run function ocarina_of_time:enemies/freezard

#Spike
execute if entity @s[tag=Spike] at @s run function ocarina_of_time:enemies/spike

#Shell Blade
execute if entity @s[tag=ShellBlade] at @s run function ocarina_of_time:enemies/shell_blade

#Red Bubble
execute if entity @s[tag=RedBubble] at @s run function ocarina_of_time:enemies/bubble/red_bubble

#Skull Kid
execute if entity @s[tag=EvilSkullKid] at @s run function ocarina_of_time:enemies/skull_kid/skull_kid

#Flying Pot
execute if entity @s[tag=FlyingPot] at @s run function ocarina_of_time:enemies/flying_pot

#Rock
execute if entity @s[tag=Rock] unless entity @s[team=Rock] run team join Rock @s[tag=Rock]
execute if entity @s[tag=Rock] at @s if entity @a[tag=HoldingRock] run function ocarina_of_time:items/rocks/rock

#Dinolfos
execute if entity @s[tag=Dinolfos] at @s run function ocarina_of_time:enemies/dinolfos/dinolfos

#Leever
execute if entity @s[tag=Leever] at @s run function ocarina_of_time:enemies/leever

#Guay
execute if entity @s[tag=Guay] at @s run function ocarina_of_time:enemies/guay/guay

#Anubis
execute if entity @s[tag=Anubis] at @s run function ocarina_of_time:enemies/anubis/anubis
