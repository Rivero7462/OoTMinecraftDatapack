execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true
execute if entity @s[tag=Invisible] run effect give @s minecraft:invisibility 1000000 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:26b}]}] run effect clear @s luck
execute if entity @s[nbt={ActiveEffects:[{Id:16b}]}] run effect clear @s night_vision

#Redead
execute if entity @s[tag=Redead] at @s run function ocarina_of_time:enemies/redead

#Gibdo
execute if entity @s[tag=Gibdo] at @s run function ocarina_of_time:enemies/gibdo

#Moblins
execute if entity @s[tag=Moblin] at @s run function ocarina_of_time:enemies/moblin/moblin

#Club Moblin
execute if entity @s[tag=ClubMoblin] at @s run function ocarina_of_time:enemies/moblin/club_moblin

#Flare Dancer
execute if entity @s[tag=FlareDancer] at @s run function ocarina_of_time:enemies/flare_dancer/body

#Stalchild
execute if entity @a[tag=InHyruleField] unless entity @a[tag=Adult] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if entity @s[tag=Stalchild] at @s run function ocarina_of_time:enemies/stalchild/stalchild_1
