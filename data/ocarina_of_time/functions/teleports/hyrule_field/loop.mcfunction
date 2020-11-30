#Kokiri Forest
execute if entity @s[x=1082,y=67,z=2106,dx=0,dz=2] run function ocarina_of_time:teleports/hyrule_field/kokiri_forest/to
execute if entity @s[x=911,y=71,z=2049,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/kokiri_forest/from

#Zora's River
execute if entity @s[x=1099,y=66,z=1992,dx=2,dy=8,dz=4] run function ocarina_of_time:teleports/hyrule_field/zora_river/to
execute if entity @s[x=1099,y=64,z=1997,dx=2,dy=10,dz=4] run function ocarina_of_time:teleports/hyrule_field/zora_river/to
execute if entity @a[x=911,y=71,z=2047,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/zora_river/from
execute if entity @a[x=909,y=71,z=2047,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/zora_river/from

#Kakariko Village
execute positioned 1067 71 1903 if entity @s[distance=..6] run function ocarina_of_time:teleports/hyrule_field/kakariko/to
execute if entity @a[x=911,y=71,z=2045,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/kakariko/from

#Castle Town
execute unless entity @s[tag=Adult] if entity @s[x=969,y=67,z=1902,dx=9,dy=1,dz=5] run function ocarina_of_time:teleports/hyrule_field/castle_town/to_castle_town
#Death Town
execute if entity @s[tag=Adult,x=969,y=67,z=1902,dx=9,dy=1,dz=5] run function ocarina_of_time:teleports/hyrule_field/castle_town/to_death_town
execute if entity @a[x=911,y=71,z=2043,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/castle_town/from

#Lon Lon Ranch
execute positioned 926 78 2031 if entity @s[distance=..5] run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch/to
execute if entity @a[x=907,y=71,z=2041,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch/from
execute if entity @a[x=907,y=71,z=2043,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch/from_other
execute if entity @a[x=907,y=71,z=2045,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch/from_east
execute if entity @a[x=907,y=71,z=2047,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch/from_south
execute if entity @a[x=907,y=71,z=2049,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch/from_west

#Gerudo Valley
execute if entity @s[x=721,y=71,z=2035,dx=4,dy=5,dz=3] run function ocarina_of_time:teleports/hyrule_field/gerudo_valley/to
execute if entity @a[x=911,y=71,z=2041,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/gerudo_valley/from

#Lake Hylia
execute positioned 798 52 2251 if entity @s[tag=!Adult,distance=..5] run function ocarina_of_time:teleports/hyrule_field/lake_hylia/to_child_lake
execute positioned 798 52 2251 if entity @s[tag=Adult,tag=!FinishLake,distance=..5] run function ocarina_of_time:teleports/hyrule_field/lake_hylia/to_adult_lake
execute positioned 798 52 2251 if entity @s[tag=Adult,tag=FinishLake,distance=..5] run function ocarina_of_time:teleports/hyrule_field/lake_hylia/to_child_lake
execute if entity @a[x=911,y=71,z=2051,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/lake_hylia/from

#Grotto 1
execute if entity @s[x=767,y=66,z=2035,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_1/inside
execute if entity @s[x=757,y=35,z=2042,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_1/outside

#Grotto 2
execute if entity @s[x=826,y=53,z=2207,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_2/inside
execute if entity @s[x=830,y=33,z=2227,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_2/outside

#Grotto 3
execute if entity @s[x=853,y=53,z=2216,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_3/inside
execute if entity @s[x=846,y=33,z=2226,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_3/outside

#Grotto 4
execute if entity @s[x=951,y=58,z=2182,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_4/inside
execute if entity @s[x=958,y=40,z=2193,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_4/outside

#Grotto 5
execute if entity @s[x=1029,y=64,z=1893,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_5/inside
execute if entity @s[x=1032,y=37,z=1910,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_5/outside

#Grotto 6
execute if entity @s[x=937,y=64,z=1914,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_6/inside
execute if entity @s[x=933,y=45,z=1929,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_6/outside

#Grotto 7
execute if entity @s[x=848,y=55,z=1944,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_7/inside
execute if entity @s[x=853,y=42,z=1959,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/grotto_7/outside

#Fairy Fountain
execute if entity @s[x=876,y=55,z=1879,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/fairy_fountain/inside
execute if entity @s[x=863,y=36,z=1895,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_field/fairy_fountain/outside
