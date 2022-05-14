#> millis:inverse_seed

#>
  scoreboard players operation #0 millis = seed_low32 millis

  scoreboard players operation seed_low32 millis += -2147483648 millis

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 1073741824
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 1073741824

  scoreboard players operation #0 millis *= 4 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 268435456
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 268435456

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 134217728
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 134217728

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 67108864
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 67108864

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 33554432
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 33554432

  scoreboard players operation #0 millis *= 4 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 8388608
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 8388608

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 4194304
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 4194304

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 2097152
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 2097152

  scoreboard players operation #0 millis *= 4 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 524288
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 524288

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 262144
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 262144

  scoreboard players operation #0 millis *= 8 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 32768
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 32768

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 16384
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 16384

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 8192
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 8192

  scoreboard players operation #0 millis *= 8 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 1024
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 1024

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 512
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 512

  scoreboard players operation #0 millis *= 8 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 64
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 64

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 32
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 32

  scoreboard players operation #0 millis *= 4 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 8
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 8

  scoreboard players operation #0 millis += #0 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 4
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 4

  scoreboard players operation #0 millis *= 4 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_low32 millis 1
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_low32 millis 1

#>
  scoreboard players operation #0 millis = seed_high32 millis

  scoreboard players operation #0 millis *= 536870912 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_high32 millis 4
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_high32 millis 4

  scoreboard players operation #0 millis *= 4 millis
  execute if score #0 millis matches 0.. run scoreboard players add seed_high32 millis 1
  execute if score #0 millis matches ..-1 run scoreboard players remove seed_high32 millis 1

  scoreboard players operation seed_high32 millis %= 65536 millis
