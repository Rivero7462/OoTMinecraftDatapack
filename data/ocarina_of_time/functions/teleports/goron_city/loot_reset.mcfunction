#Pots
fill 2150 69 1830 2150 69 1830 minecraft:flower_pot
fill 2150 69 1829 2150 69 1829 minecraft:flower_pot
fill 2151 69 1829 2151 69 1829 minecraft:flower_pot
fill 2176 61 1850 2176 61 1850 minecraft:flower_pot
fill 2179 61 1850 2179 61 1850 minecraft:flower_pot
fill 2187 61 1800 2187 61 1800 minecraft:flower_pot
fill 2187 61 1799 2187 61 1799 minecraft:flower_pot
fill 2187 61 1795 2187 61 1795 minecraft:flower_pot
fill 2161 70 1855 2161 70 1855 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Sign
execute unless block 2191 69 1816 minecraft:oak_sign run clone 2191 65 1816 2191 65 1816 2191 69 1816

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone15] run summon minecraft:armor_stand 2144 74 1793 {Tags:["GossipStone15","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone16] run summon minecraft:armor_stand 2160 69 1864 {Tags:["GossipStone16","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Silver Rocks
fill 2145 75 1813 2144 74 1812 minecraft:dead_bubble_coral_block
fill 2146 75 1811 2145 74 1810 minecraft:dead_bubble_coral_block
fill 2145 75 1809 2142 74 1808 minecraft:dead_bubble_coral_block
fill 2143 75 1811 2142 74 1810 minecraft:dead_bubble_coral_block
fill 2141 75 1813 2140 74 1812 minecraft:dead_bubble_coral_block
fill 2140 75 1811 2139 74 1810 minecraft:dead_bubble_coral_block
fill 2140 75 1807 2139 74 1804 minecraft:dead_bubble_coral_block
fill 2142 75 1805 2145 74 1804 minecraft:dead_bubble_coral_block
fill 2146 75 1803 2145 74 1802 minecraft:dead_bubble_coral_block
fill 2140 75 1801 2139 74 1792 minecraft:dead_bubble_coral_block
fill 2144 75 1800 2143 74 1797 minecraft:dead_bubble_coral_block
fill 2145 75 1799 2146 74 1796 minecraft:dead_bubble_coral_block
fill 2148 75 1801 2147 74 1796 minecraft:dead_bubble_coral_block
