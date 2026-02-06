# Increase global timer every tick
scoreboard players add #global ww:timer 1

# Check if it's time for an event (every ~60 seconds / 1200 ticks)
scoreboard players operation #check ww:timer = #global ww:timer
scoreboard players operation #check ww:timer %= #interval ww:timer

execute if score #check ww:timer matches 0 run function ww:random_event

# Clean up old ghosts
scoreboard players add @e[tag=ww_ghost] ww:age 1
kill @e[tag=ww_ghost,scores={ww:age=400..}]
