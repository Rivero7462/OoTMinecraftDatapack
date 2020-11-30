scoreboard players add @s GameTimer 1

execute if entity @s[tag=ChooseSong,scores={GameTimer=1}] run function ocarina_of_time:music/lost_woods
execute if entity @s[tag=ChooseSong,scores={GameTimer=2}] run function ocarina_of_time:music/deku_tree
execute if entity @s[tag=ChooseSong,scores={GameTimer=3}] run function ocarina_of_time:music/kokiri_forest
execute if entity @s[tag=ChooseSong,scores={GameTimer=4}] run function ocarina_of_time:music/hyrule_field_morning
execute if entity @s[tag=ChooseSong,scores={GameTimer=5}] run function ocarina_of_time:music/castle_town
execute if entity @s[tag=ChooseSong,scores={GameTimer=6}] run function ocarina_of_time:music/castle_courtyard
execute if entity @s[tag=ChooseSong,scores={GameTimer=7}] run function ocarina_of_time:music/princess_zelda
execute if entity @s[tag=ChooseSong,scores={GameTimer=8}] run function ocarina_of_time:music/inside_house
execute if entity @s[tag=ChooseSong,scores={GameTimer=9}] run function ocarina_of_time:music/lon_lon_ranch
execute if entity @s[tag=ChooseSong,scores={GameTimer=10}] run function ocarina_of_time:music/kakariko_village
execute if entity @s[tag=ChooseSong,scores={GameTimer=11}] run function ocarina_of_time:music/underground
execute if entity @s[tag=ChooseSong,scores={GameTimer=12}] run function ocarina_of_time:music/goron_city
execute if entity @s[tag=ChooseSong,scores={GameTimer=13}] run function ocarina_of_time:music/zora_domain
execute if entity @s[tag=ChooseSong,scores={GameTimer=14}] run function ocarina_of_time:music/dodongo_cavern
execute if entity @s[tag=ChooseSong,scores={GameTimer=15}] run function ocarina_of_time:music/chamber_of_sages
execute if entity @s[tag=ChooseSong,scores={GameTimer=16}] run function ocarina_of_time:music/fairy_fountain
execute if entity @s[tag=ChooseSong,scores={GameTimer=17}] run function ocarina_of_time:music/shop
execute if entity @s[tag=ChooseSong,scores={GameTimer=18}] run function ocarina_of_time:music/song_of_storms
execute if entity @s[tag=ChooseSong,scores={GameTimer=19}] run function ocarina_of_time:music/temple_of_time
execute if entity @s[tag=ChooseSong,scores={GameTimer=20}] run function ocarina_of_time:music/jabu_jabu
execute if entity @s[tag=ChooseSong,scores={GameTimer=21}] run function ocarina_of_time:music/horse_race
execute if entity @s[tag=ChooseSong,scores={GameTimer=22}] run function ocarina_of_time:music/sheik
execute if entity @s[tag=ChooseSong,scores={GameTimer=23}] run function ocarina_of_time:music/forest_temple
execute if entity @s[tag=ChooseSong,scores={GameTimer=24}] run function ocarina_of_time:music/boss_theme
execute if entity @s[tag=ChooseSong,scores={GameTimer=25}] run function ocarina_of_time:music/mini_boss_theme
execute if entity @s[tag=ChooseSong,scores={GameTimer=26}] run function ocarina_of_time:music/fire_temple
execute if entity @s[tag=ChooseSong,scores={GameTimer=27}] run function ocarina_of_time:music/fire_boss_theme
execute if entity @s[tag=ChooseSong,scores={GameTimer=28}] run function ocarina_of_time:music/ice_cavern
execute if entity @s[tag=ChooseSong,scores={GameTimer=29}] run function ocarina_of_time:music/navi_fly
execute if entity @s[tag=ChooseSong,scores={GameTimer=30}] run function ocarina_of_time:music/kotake_koume
execute if entity @s[tag=ChooseSong,scores={GameTimer=31}] run function ocarina_of_time:music/intro
execute if entity @s[tag=ChooseSong,scores={GameTimer=32}] run function ocarina_of_time:music/spirit_temple
execute if entity @s[tag=ChooseSong,scores={GameTimer=33}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[tag=ChooseSong,scores={GameTimer=34}] run function ocarina_of_time:music/owl_theme
execute if entity @s[tag=ChooseSong,scores={GameTimer=35}] run function ocarina_of_time:music/water_temple
execute if entity @s[tag=ChooseSong,scores={GameTimer=36}] run function ocarina_of_time:music/ganon_tower
execute if entity @s[tag=ChooseSong,scores={GameTimer=37}] run function ocarina_of_time:music/shadow_temple
execute if entity @s[tag=ChooseSong,scores={GameTimer=38}] run function ocarina_of_time:music/potion_shop
execute if entity @s[tag=ChooseSong,scores={GameTimer=39}] run function ocarina_of_time:music/shooting_gallery
execute if entity @s[tag=ChooseSong,scores={GameTimer=40}] run function ocarina_of_time:music/minigame
execute if entity @s[tag=ChooseSong,scores={GameTimer=41}] run function ocarina_of_time:music/ganondorf
execute if entity @s[tag=ChooseSong,scores={GameTimer=42}] run function ocarina_of_time:music/underground_ganon_castle
execute if entity @s[tag=ChooseSong,scores={GameTimer=43}] run function ocarina_of_time:music/ganondorf_boss
execute if entity @s[tag=ChooseSong,scores={GameTimer=44}] run function ocarina_of_time:music/escape_ganon_castle
execute if entity @s[tag=ChooseSong,scores={GameTimer=45}] run function ocarina_of_time:music/final_battle
execute if entity @s[tag=ChooseSong,scores={GameTimer=46}] run function ocarina_of_time:music/staff_role

execute if entity @s[tag=ChooseSong] run tag @s remove ChooseSong

execute if entity @s[scores={GameTimer=46..}] run scoreboard players set @s GameTimer 0
