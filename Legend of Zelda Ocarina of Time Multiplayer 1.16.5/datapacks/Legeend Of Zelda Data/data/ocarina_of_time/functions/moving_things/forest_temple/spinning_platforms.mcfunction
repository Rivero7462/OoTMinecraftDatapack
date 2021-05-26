scoreboard players add @s timer 1

#1
execute if entity @s[scores={timer=1}] run clone 960 71 -1153 957 75 -1150 949 79 -1155
execute if entity @s[scores={timer=1}] run clone 960 71 -1153 957 75 -1150 945 79 -1160
execute if entity @s[scores={timer=1}] run clone 960 71 -1153 957 75 -1150 940 79 -1156
execute if entity @s[scores={timer=1}] run clone 960 71 -1153 957 75 -1150 944 79 -1151

#2
execute if entity @s[scores={timer=30}] run clone 960 71 -1153 957 75 -1150 949 79 -1156
execute if entity @s[scores={timer=30}] run clone 960 71 -1153 957 75 -1150 944 79 -1160
execute if entity @s[scores={timer=30}] run clone 960 71 -1153 957 75 -1150 940 79 -1155
execute if entity @s[scores={timer=30}] run clone 960 71 -1153 957 75 -1150 945 79 -1151

#3
execute if entity @s[scores={timer=60}] run clone 960 71 -1153 957 75 -1150 948 79 -1156
execute if entity @s[scores={timer=60}] run clone 960 71 -1153 957 75 -1150 944 79 -1159
execute if entity @s[scores={timer=60}] run clone 960 71 -1153 957 75 -1150 941 79 -1155
execute if entity @s[scores={timer=60}] run clone 960 71 -1153 957 75 -1150 945 79 -1152

#4
execute if entity @s[scores={timer=90}] run clone 960 71 -1153 957 75 -1150 948 79 -1157
execute if entity @s[scores={timer=90}] run clone 960 71 -1153 957 75 -1150 943 79 -1159
execute if entity @s[scores={timer=90}] run clone 960 71 -1153 957 75 -1150 941 79 -1154
execute if entity @s[scores={timer=90}] run clone 960 71 -1153 957 75 -1150 946 79 -1152

#5
execute if entity @s[scores={timer=120}] run clone 960 71 -1146 957 75 -1149 947 79 -1157
execute if entity @s[scores={timer=120}] run clone 960 71 -1142 957 75 -1145 943 79 -1158
execute if entity @s[scores={timer=120}] run clone 960 71 -1138 957 75 -1141 942 79 -1154
execute if entity @s[scores={timer=120}] run clone 960 71 -1134 957 75 -1137 946 79 -1153

#6
execute if entity @s[scores={timer=150}] run clone 960 71 -1153 957 75 -1150 947 79 -1158
execute if entity @s[scores={timer=150}] run clone 960 71 -1153 957 75 -1150 942 79 -1158
execute if entity @s[scores={timer=150}] run clone 960 71 -1153 957 75 -1150 942 79 -1153
execute if entity @s[scores={timer=150}] run clone 960 71 -1153 957 75 -1150 947 79 -1153

#7
execute if entity @s[scores={timer=180}] run clone 960 71 -1146 957 75 -1149 946 79 -1158
execute if entity @s[scores={timer=180}] run clone 960 71 -1142 957 75 -1145 942 79 -1157
execute if entity @s[scores={timer=180}] run clone 960 71 -1138 957 75 -1141 943 79 -1153
execute if entity @s[scores={timer=180}] run clone 960 71 -1134 957 75 -1137 947 79 -1154

#8
execute if entity @s[scores={timer=210}] run clone 960 71 -1153 957 75 -1150 946 79 -1159
execute if entity @s[scores={timer=210}] run clone 960 71 -1153 957 75 -1150 941 79 -1157
execute if entity @s[scores={timer=210}] run clone 960 71 -1153 957 75 -1150 943 79 -1152
execute if entity @s[scores={timer=210}] run clone 960 71 -1153 957 75 -1150 948 79 -1154

#9
execute if entity @s[scores={timer=240}] run clone 960 71 -1153 957 75 -1150 945 79 -1159
execute if entity @s[scores={timer=240}] run clone 960 71 -1153 957 75 -1150 941 79 -1156
execute if entity @s[scores={timer=240}] run clone 960 71 -1153 957 75 -1150 944 79 -1152
execute if entity @s[scores={timer=240}] run clone 960 71 -1153 957 75 -1150 948 79 -1155

execute if entity @s[scores={timer=270..}] run scoreboard players set @s timer 0
