fill 776 58 2699 775 60 2699 minecraft:water
tp @e[type=armor_stand,tag=Pierre1] 807 67.5 2674
execute unless block 697 67 2766 minecraft:gold_block unless entity @a[tag=LakeOwl] unless entity @e[type=armor_stand,tag=OwlFly] run tp @e[type=armor_stand,tag=OwlStand10] 730.3 73 2761

#Bean Spot
fill 739 70 2692 739 70 2692 minecraft:farmland[moisture=0]
execute if entity @a[x=739,y=71,z=2692,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean9] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 739 71 2692 run function ocarina_of_time:items/magic_bean
execute if block 739 71 2692 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean9] run tag @s add PlantBean9
