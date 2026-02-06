# Pick random event (1–4)
scoreboard players random #rng ww:rng 1 4

execute if score #rng ww:rng matches 1 run function ww:whisper
execute if score #rng ww:rng matches 2 run function ww:time_distort
execute if score #rng ww:rng matches 3 run function ww:summon_ghost
execute if score #rng ww:rng matches 4 run function ww:darkness
