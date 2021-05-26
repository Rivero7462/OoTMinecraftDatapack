#Vertical
#Remove
execute if entity @s[tag=Vertical] run fill 903 26 -1159 905 22 -1163 minecraft:air
execute if entity @s[tag=Vertical] run fill 902 26 -1160 906 22 -1162 minecraft:air
execute if entity @s[tag=Vertical] run fill 894 26 -1150 890 22 -1148 minecraft:air
execute if entity @s[tag=Vertical] run fill 893 26 -1151 891 22 -1147 minecraft:air
execute if entity @s[tag=Vertical] run fill 902 26 -1150 906 22 -1148 minecraft:air
execute if entity @s[tag=Vertical] run fill 905 26 -1147 903 22 -1151 minecraft:air
execute if entity @s[tag=Vertical] run fill 893 26 -1159 891 22 -1163 minecraft:air
execute if entity @s[tag=Vertical] run fill 890 22 -1162 894 26 -1160 minecraft:air
#Doors
execute if entity @s[tag=Vertical] run clone 874 29 -1157 876 31 -1155 889 22 -1164
execute if entity @s[tag=Vertical] run clone 874 29 -1157 876 31 -1155 905 22 -1148
execute if entity @s[tag=Vertical] run clone 878 29 -1157 880 31 -1155 905 22 -1164
execute if entity @s[tag=Vertical] run clone 878 29 -1157 880 31 -1155 889 22 -1148
execute if entity @s[tag=Vertical] run fill 886 22 -1156 886 24 -1154 minecraft:air
execute if entity @s[tag=Vertical] run fill 910 22 -1156 910 24 -1154 minecraft:air
#Add
execute if entity @s[tag=Vertical] run clone 878 21 -1155 880 25 -1159 897 22 -1166
execute if entity @s[tag=Vertical] run clone 878 21 -1155 880 25 -1159 897 22 -1148
execute if entity @s[tag=Vertical] if block 897 22 -1148 minecraft:pink_concrete run tag @s remove Vertical

#Horizontal
#Remove
execute if entity @s[tag=Horizontal] run fill 903 26 -1159 905 22 -1163 minecraft:air
execute if entity @s[tag=Horizontal] run fill 902 26 -1160 906 22 -1162 minecraft:air
execute if entity @s[tag=Horizontal] run fill 894 26 -1150 890 22 -1148 minecraft:air
execute if entity @s[tag=Horizontal] run fill 893 26 -1151 891 22 -1147 minecraft:air
execute if entity @s[tag=Horizontal] run fill 902 26 -1150 906 22 -1148 minecraft:air
execute if entity @s[tag=Horizontal] run fill 905 26 -1147 903 22 -1151 minecraft:air
execute if entity @s[tag=Horizontal] run fill 893 26 -1159 891 22 -1163 minecraft:air
execute if entity @s[tag=Horizontal] run fill 890 22 -1162 894 26 -1160 minecraft:air
#Doors
execute if entity @s[tag=Horizontal] run clone 874 29 -1157 876 31 -1155 889 22 -1164
execute if entity @s[tag=Horizontal] run clone 874 29 -1157 876 31 -1155 905 22 -1148
execute if entity @s[tag=Horizontal] run clone 878 29 -1157 880 31 -1155 905 22 -1164
execute if entity @s[tag=Horizontal] run clone 878 29 -1157 880 31 -1155 889 22 -1148
execute if entity @s[tag=Horizontal] run fill 897 24 -1167 899 22 -1167 minecraft:air
execute if entity @s[tag=Horizontal] run fill 897 22 -1143 899 24 -1143 minecraft:air
#Add
execute if entity @s[tag=Horizontal] run clone 872 21 -1157 876 25 -1155 887 22 -1156
execute if entity @s[tag=Horizontal] run clone 872 21 -1157 876 25 -1155 905 22 -1156
execute if entity @s[tag=Horizontal] if block 891 22 -1154 minecraft:pink_concrete run tag @s remove Horizontal

#Diagonal 1
#Remove
execute if entity @s[tag=Diagonal1] run fill 897 26 -1148 899 22 -1144 minecraft:air
execute if entity @s[tag=Diagonal1] run fill 899 26 -1162 897 22 -1166 minecraft:air
execute if entity @s[tag=Diagonal1] run fill 891 26 -1154 887 22 -1156 minecraft:air
execute if entity @s[tag=Diagonal1] run fill 905 26 -1156 909 22 -1154 minecraft:air
#Doors
execute if entity @s[tag=Diagonal1] run fill 907 22 -1162 905 24 -1164 minecraft:air
execute if entity @s[tag=Diagonal1] run fill 889 22 -1148 891 24 -1146 minecraft:air
execute if entity @s[tag=Diagonal1] run clone 880 29 -1159 882 31 -1159 897 22 -1167
execute if entity @s[tag=Diagonal1] run clone 880 29 -1159 882 31 -1159 897 22 -1143
execute if entity @s[tag=Diagonal1] run clone 882 29 -1157 882 31 -1155 886 22 -1156
execute if entity @s[tag=Diagonal1] run clone 882 29 -1157 882 31 -1155 910 22 -1156
#Add
execute if entity @s[tag=Diagonal1] run clone 878 21 -1153 881 25 -1150 902 22 -1151
execute if entity @s[tag=Diagonal1] run clone 882 21 -1155 882 25 -1155 905 22 -1147
execute if entity @s[tag=Diagonal1] run clone 882 21 -1155 882 25 -1155 906 22 -1148
execute if entity @s[tag=Diagonal1] run clone 872 21 -1153 875 25 -1150 891 22 -1162
execute if entity @s[tag=Diagonal1] run clone 882 21 -1155 882 25 -1155 890 22 -1162
execute if entity @s[tag=Diagonal1] run clone 882 21 -1155 882 25 -1155 891 22 -1163
execute if entity @s[tag=Diagonal1] if block 894 22 -1160 minecraft:pink_concrete run tag @s remove Diagonal1

#Diagonal 2
#Remove
execute if entity @s[tag=Diagonal2] run fill 897 26 -1148 899 22 -1144 minecraft:air
execute if entity @s[tag=Diagonal2] run fill 899 26 -1162 897 22 -1166 minecraft:air
execute if entity @s[tag=Diagonal2] run fill 891 26 -1154 887 22 -1156 minecraft:air
execute if entity @s[tag=Diagonal2] run fill 905 26 -1156 909 22 -1154 minecraft:air
#Doors
execute if entity @s[tag=Diagonal2] run fill 889 22 -1162 891 24 -1164 minecraft:air
execute if entity @s[tag=Diagonal2] run fill 905 22 -1146 907 24 -1148 minecraft:air
execute if entity @s[tag=Diagonal2] run clone 880 29 -1159 882 31 -1159 897 22 -1167
execute if entity @s[tag=Diagonal2] run clone 880 29 -1159 882 31 -1159 897 22 -1143
execute if entity @s[tag=Diagonal2] run clone 882 29 -1157 882 31 -1155 886 22 -1156
execute if entity @s[tag=Diagonal2] run clone 882 29 -1157 882 31 -1155 910 22 -1156
#Add
execute if entity @s[tag=Diagonal2] run clone 878 21 -1148 881 25 -1145 902 22 -1162
execute if entity @s[tag=Diagonal2] run clone 882 21 -1155 882 25 -1155 905 22 -1163
execute if entity @s[tag=Diagonal2] run clone 882 21 -1155 882 25 -1155 906 22 -1162
execute if entity @s[tag=Diagonal2] run clone 872 21 -1148 875 25 -1145 891 22 -1151
execute if entity @s[tag=Diagonal2] run clone 882 21 -1155 882 25 -1155 890 22 -1148
execute if entity @s[tag=Diagonal2] run clone 882 21 -1155 882 25 -1155 891 22 -1147
execute if entity @s[tag=Diagonal2] if block 904 22 -1160 minecraft:pink_concrete run tag @s remove Diagonal2

#Vertical
execute at @a if block 897 22 -1148 minecraft:pink_concrete if block ~-.33 ~ ~ minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_3
execute at @a if block 897 22 -1148 minecraft:pink_concrete if block ~.33 ~ ~ minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_4
#Horizontal
execute at @a if block 891 22 -1154 minecraft:pink_concrete if block ~ ~ ~-.33 minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_7
execute at @a if block 891 22 -1154 minecraft:pink_concrete if block ~ ~ ~.33 minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_8
#Diagonal 1
execute at @a if block 894 22 -1160 minecraft:pink_concrete if block ~-.33 ~ ~ minecraft:pink_concrete if block ~ ~ ~.33 minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_5
execute at @a if block 894 22 -1160 minecraft:pink_concrete if block ~.33 ~ ~ minecraft:pink_concrete if block ~ ~ ~-.33 minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_6
#Diagonal 2
execute at @a if block 904 22 -1160 minecraft:pink_concrete if block ~ ~ ~-.33 minecraft:pink_concrete if block ~-.33 ~ ~ minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_1
execute at @a if block 904 22 -1160 minecraft:pink_concrete if block ~ ~ ~.33 minecraft:pink_concrete if block ~.33 ~ ~ minecraft:pink_concrete if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/slide_room/slide_room_2

#Switch 1
execute if block 885 22 -1168 minecraft:light_weighted_pressure_plate[power=1] run tag @s add Switch1
execute if entity @s[tag=Switch1] run function ocarina_of_time:moving_things/forest_temple/basement_switch/switch_1
#Switch 2
execute if block 915 22 -1155 minecraft:light_weighted_pressure_plate[power=1] run tag @s add Switch2
execute if entity @s[tag=Switch2] run function ocarina_of_time:moving_things/forest_temple/basement_switch/switch_2
#Switch 3
execute if block 898 22 -1138 minecraft:light_weighted_pressure_plate[power=1] run tag @s add Switch3
execute if entity @s[tag=Switch3] run function ocarina_of_time:moving_things/forest_temple/basement_switch/switch_3
