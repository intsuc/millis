#> millis:init

#>
# @internal
  scoreboard objectives remove millis
  scoreboard objectives add millis dummy

#>
# @internal
  #declare score_holder #0
  #declare score_holder #1
  #declare score_holder #2
  #declare score_holder -2147483648
  #declare score_holder -538944565
  #declare score_holder 4
  #declare score_holder 8
  #declare score_holder 4965
  #declare score_holder 23499
  #declare score_holder 57312
  #declare score_holder 65536
  #declare score_holder 325386240
  #declare score_holder 536870912
  #declare score_holder 1540035429
  #declare score_holder 1540030464
  scoreboard players set -2147483648 millis -2147483648
  scoreboard players set -538944565 millis -538944565
  scoreboard players set 4 millis 4
  scoreboard players set 8 millis 8
  scoreboard players set 4965 millis 4965
  scoreboard players set 23499 millis 23499
  scoreboard players set 57312 millis 57312
  scoreboard players set 65536 millis 65536
  scoreboard players set 325386240 millis 325386240
  scoreboard players set 536870912 millis 536870912
  scoreboard players set 1540035429 millis 1540035429
  scoreboard players set 1540030464 millis 1540030464

#>
# @internal
  #declare storage millis:
  data modify storage millis: low set value [I; 0]
