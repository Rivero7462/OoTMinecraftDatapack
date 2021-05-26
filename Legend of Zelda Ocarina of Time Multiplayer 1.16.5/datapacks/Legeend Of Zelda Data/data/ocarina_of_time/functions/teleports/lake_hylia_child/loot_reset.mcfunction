#Owl
fill 697 67 2766 697 67 2766 minecraft:air

#Rocks
scoreboard players set @a HoldingRock 1
fill 829 68 2706 829 68 2706 minecraft:granite_slab

#Grass
fill 786 66 2783 785 66 2783 minecraft:grass
fill 744 72 2668 746 72 2672 minecraft:grass
fill 747 72 2671 743 72 2669 minecraft:grass
fill 740 71 2679 742 71 2683 minecraft:grass
fill 743 71 2682 739 71 2680 minecraft:grass
fill 757 70 2677 753 70 2675 minecraft:grass
fill 754 70 2674 756 70 2678 minecraft:grass
fill 797 66 2684 797 66 2684 minecraft:grass
fill 798 66 2681 798 66 2681 minecraft:grass
fill 806 66 2680 806 66 2680 minecraft:grass
fill 807 67 2677 807 67 2677 minecraft:grass

#Signs
execute unless block 747 71 2693 minecraft:oak_sign run clone 746 67 2693 746 67 2693 747 71 2693

#Bean Spots
execute unless entity @a[tag=Adult] run fill 740 71 2691 738 71 2693 minecraft:air
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean9] run clone 734 67 2691 736 67 2693 738 71 2691
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean9] run fill 739 71 2692 739 71 2692 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone24] run summon minecraft:armor_stand 716 71 2685 {Tags:["GossipStone24","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone25] run summon minecraft:armor_stand 716 65 2801 {Tags:["GossipStone25","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#3
execute unless entity @e[type=armor_stand,tag=GossipStone26] run summon minecraft:armor_stand 838 65 2803 {Tags:["GossipStone26","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
