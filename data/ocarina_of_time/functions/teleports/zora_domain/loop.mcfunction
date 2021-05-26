#Zora's River*
execute unless entity @s[tag=DivingGame] if entity @s[x=1729,y=36,z=2324,dx=1,dy=4,dz=2] run function ocarina_of_time:teleports/zora_domain/zora_river/to
execute if entity @s[x=1773,y=19,z=2319,dx=0,dz=0] run function ocarina_of_time:teleports/zora_domain/zora_river/from

#Zora's Fountain
execute unless entity @s[tag=DivingGame] if entity @s[x=1759,y=59,z=2265,dx=7,dy=4,dz=6] run function ocarina_of_time:teleports/zora_domain/zora_fountain/to
execute if entity @s[x=1773,y=19,z=2323,dx=0,dz=0] run function ocarina_of_time:teleports/zora_domain/zora_fountain/from

#Shop
execute if entity @s[x=1774,y=30,z=2341,dx=2,dz=0] run function ocarina_of_time:teleports/zora_domain/shop/inside

execute if entity @s[x=1773,y=15,z=2352,dx=2,dz=0] run function ocarina_of_time:teleports/zora_domain/shop/outside

#Lake Hylia
execute unless entity @s[tag=DivingGame] if entity @s[tag=!Adult,x=1759,y=22,z=2328,dx=1,dy=2,dz=0] run function ocarina_of_time:teleports/zora_domain/lake_hylia/to_child_lake
execute if entity @s[tag=Adult,tag=!FinishLake,x=1759,y=22,z=2328,dx=1,dy=2,dz=0] run function ocarina_of_time:teleports/zora_domain/lake_hylia/to_adult_lake
execute if entity @s[tag=Adult,tag=FinishLake,x=1759,y=22,z=2328,dx=1,dy=2,dz=0] run function ocarina_of_time:teleports/zora_domain/lake_hylia/to_child_lake
execute if entity @s[x=1773,y=19,z=2321,dx=0,dz=0] run function ocarina_of_time:teleports/zora_domain/lake_hylia/from

#Fairy Fountain
execute if entity @s[x=1746,y=26,z=2320,dx=0,dz=0] run function ocarina_of_time:teleports/zora_domain/fairy_fountain/inside
execute if entity @s[x=1754,y=11,z=2301,dx=0,dz=0] run function ocarina_of_time:teleports/zora_domain/fairy_fountain/outside
