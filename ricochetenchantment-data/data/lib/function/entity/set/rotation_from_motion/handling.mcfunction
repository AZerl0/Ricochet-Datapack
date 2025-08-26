#> lib:entity/util/get/rotation_from_motion/handling

execute in minecraft:overworld run summon marker 0 0 0 {UUID:[I;1,0,0,3]}
data modify entity 1-0-0-0-3 Pos set from storage lib: input.Motion
$execute in minecraft:overworld positioned 0.0 0.0 0.0 as 1-0-0-0-3 at @s facing 0.0 0.0 0.0 facing ^ ^ ^$(vector) run tp ~ ~ ~
$function lib:entity/set/rotation_from_motion/rotate_command {vector:$(vector)}
execute in minecraft:overworld positioned 0.0 0.0 0.0 run data modify storage lib: return set from entity 1-0-0-0-3 Rotation
execute in minecraft:overworld positioned 0.0 0.0 0.0 run kill 1-0-0-0-3