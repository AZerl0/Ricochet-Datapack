#> lib:entity/util/get/rotation_from_motion/handling

execute in minecraft:overworld run summon marker ~ ~ ~ {Tags:["RotationGetter"]}
data modify entity @n[type=marker,tag=RotationGetter] Pos set from storage lib: input.Motion
$execute in minecraft:overworld positioned 0.0 0.0 0.0 as @n[type=marker,tag=RotationGetter] at @s facing 0.0 0.0 0.0 facing ^ ^ ^$(vector) run tp ~ ~ ~
execute in minecraft:overworld positioned 0.0 0.0 0.0 run data modify storage lib: return set from entity @n[type=marker,tag=RotationGetter] Rotation
execute in minecraft:overworld positioned 0.0 0.0 0.0 run kill @n[type=marker,tag=RotationGetter]