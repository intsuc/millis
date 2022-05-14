#> millis:previous_seed

#>
# @within
#   millis:previous_seed
#   millis:search
#   millis:inverse_seed
  #declare score_holder seed_low32
  #declare score_holder seed_high32

#>
# @private
  #declare score_holder seed_low32_low16
  #declare score_holder seed_low32_high16
  #declare score_holder seed_high32_low16
  #declare score_holder seed_high32_high16

#>
  scoreboard players remove seed_low32 millis 11
  scoreboard players operation #0 millis = seed_low32 millis
  scoreboard players operation #0 millis += -2147483648 millis
  execute if score #0 millis matches 2147483637.. run scoreboard players remove seed_high32 millis 1

#>
  scoreboard players operation seed_low32_low16 millis = seed_low32 millis
  scoreboard players operation seed_low32_low16 millis %= 65536 millis

#>
  scoreboard players operation seed_low32_high16 millis = seed_low32 millis
  scoreboard players operation seed_low32_high16 millis /= 65536 millis
  execute if score seed_low32 millis matches ..-1 run scoreboard players add seed_low32_high16 millis 65536

#>
  scoreboard players operation seed_high32_low16 millis = seed_high32 millis
  scoreboard players operation seed_high32_low16 millis %= 65536 millis

#>
  scoreboard players operation seed_high32_high16 millis = seed_high32 millis
  scoreboard players operation seed_high32_high16 millis /= 65536 millis
  execute if score seed_high32 millis matches ..-1 run scoreboard players add seed_high32_high16 millis 65536

#>
  scoreboard players operation #0 millis = seed_low32_low16 millis
  scoreboard players operation #0 millis *= 23499 millis
  scoreboard players operation #0 millis /= 65536 millis
  execute if score seed_low32_low16 millis matches ..-1 run scoreboard players add #0 millis 65536
  scoreboard players operation seed_high32 millis = #0 millis

#>
  scoreboard players operation #0 millis = seed_low32_high16 millis
  scoreboard players operation #0 millis *= 4965 millis
  scoreboard players operation #0 millis /= 65536 millis
  execute if score seed_low32_high16 millis matches ..-1 run scoreboard players add #0 millis 65536
  scoreboard players operation seed_high32 millis += #0 millis

#>
  scoreboard players operation seed_low32 millis = seed_low32_low16 millis
  scoreboard players operation seed_low32 millis *= 4965 millis
  scoreboard players operation #0 millis = seed_low32_high16 millis
  scoreboard players operation #0 millis *= 325386240 millis
  scoreboard players operation seed_low32 millis += #0 millis
  scoreboard players operation seed_low32 millis += -2147483648 millis
  scoreboard players operation #0 millis += -2147483648 millis
  execute if score seed_low32 millis < #0 millis run scoreboard players add seed_high32 millis 1
  scoreboard players operation seed_low32 millis += -2147483648 millis

#>
  scoreboard players operation #0 millis = seed_low32_low16 millis
  scoreboard players operation #0 millis *= 1540030464 millis
  scoreboard players operation seed_low32 millis += #0 millis
  scoreboard players operation seed_low32 millis += -2147483648 millis
  scoreboard players operation #0 millis += -2147483648 millis
  execute if score seed_low32 millis < #0 millis run scoreboard players add seed_high32 millis 1
  scoreboard players operation seed_low32 millis += -2147483648 millis

#>
  scoreboard players operation seed_low32_low16 millis *= 57312 millis
  scoreboard players operation seed_high32 millis += seed_low32_low16 millis

#>
  scoreboard players operation seed_low32_high16 millis *= -538944565 millis
  scoreboard players operation seed_high32 millis += seed_low32_high16 millis

#>
  scoreboard players operation seed_high32_low16 millis *= 1540035429 millis
  scoreboard players operation seed_high32 millis += seed_high32_low16 millis

#>
  scoreboard players operation seed_high32_high16 millis *= 325386240 millis
  scoreboard players operation seed_high32 millis += seed_high32_high16 millis
