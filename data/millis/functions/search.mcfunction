#> millis:search

#>
  scoreboard players operation seed_low32 millis = loot_table_seed_low32_low16 millis
  scoreboard players operation seed_low32 millis += seed_low16 millis
  scoreboard players add seed_low16 millis 1
  scoreboard players operation seed_high32 millis = loot_table_seed_low32_high16 millis
  function millis:previous_seed

#>
  scoreboard players operation #0 millis = seed_low32 millis
  scoreboard players operation #0 millis /= 65536 millis
  execute if score seed_low32 millis matches ..-1 run scoreboard players add #0 millis 65536

#>
  scoreboard players operation #1 millis = seed_high32 millis
  scoreboard players operation #1 millis *= 65536 millis

#>
  scoreboard players set #2 millis 0
  execute if score #0 millis = loot_table_seed_high32_low16 millis if score #1 millis = loot_table_seed_high32_high16 millis run scoreboard players set #2 millis 1
  execute if score #2 millis matches 1.. run function millis:previous_seed
  execute if score #2 millis matches ..0 if score seed_low16 millis matches ..65535 run function millis:search
