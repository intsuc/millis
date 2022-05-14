# millis

<samp>millis</samp> calculates the current time in milliseconds modulo 2⁴⁸ (`net.minecraft.Util.getMillis() & 0x0000ffffffffffffL`).

## Example

```mcfunction
function millis:init

execute positioned 0 0 0 run function millis:get_millis
tellraw @s [{"score": {"name": "seed_high32", "objective": "millis"}}, ", ", {"score": {"name": "seed_low32", "objective": "millis"}}]
```
