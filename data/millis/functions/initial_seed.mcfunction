#> millis:initial_seed

#>
# @within
#   millis:initial_seed
#   millis:search
  #declare score_holder loot_table_seed_low32_low16
  #declare score_holder loot_table_seed_low32_high16
  #declare score_holder loot_table_seed_high32_low16
  #declare score_holder loot_table_seed_high32_high16
  #declare score_holder seed_low16

#>
# @private
  #declare score_holder loot_table_seed_low32
  #declare score_holder loot_table_seed_high32

#>
  data modify storage millis: low[0] set from storage millis: loot_table_seed
  execute store result score loot_table_seed_low32 millis run data get storage millis: low[0] 1.0

#>
  scoreboard players operation loot_table_seed_low32_low16 millis = loot_table_seed_low32 millis
  scoreboard players operation loot_table_seed_low32_low16 millis *= 65536 millis

#>
  scoreboard players operation loot_table_seed_low32_high16 millis = loot_table_seed_low32 millis
  scoreboard players operation loot_table_seed_low32_high16 millis /= 65536 millis
  execute if score loot_table_seed_low32 millis matches ..-1 run scoreboard players add loot_table_seed_low32_high16 millis 65536

#>
  execute store result score loot_table_seed_high32 millis run data get storage millis: loot_table_seed 0.00000000023283064365386962890625
  execute if score loot_table_seed_low32 millis matches ..-1 run scoreboard players add loot_table_seed_high32 millis 1

#>
  scoreboard players operation loot_table_seed_high32_low16 millis = loot_table_seed_high32 millis
  scoreboard players operation loot_table_seed_high32_low16 millis %= 65536 millis

#>
  scoreboard players operation loot_table_seed_high32_high16 millis = loot_table_seed_high32 millis
  scoreboard players operation loot_table_seed_high32_high16 millis /= 65536 millis
  execute if score loot_table_seed_high32 millis matches ..-1 run scoreboard players add loot_table_seed_high32_high16 millis 65536
  scoreboard players operation loot_table_seed_high32_high16 millis *= 65536 millis

#>
  scoreboard players set seed_low16 millis 0
  function millis:search

#>
  function millis:inverse_seed
