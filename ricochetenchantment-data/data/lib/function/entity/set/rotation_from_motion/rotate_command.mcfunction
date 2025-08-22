#> lib:entity/set/rotation_from_motion/rotate_command
#
# 1.21.2で追加されたrotateコマンドのoverride
# tpじゃ向きは変化しなくなった
#
# @within function lib:entity/set/rotation_from_motion/handling
$execute in minecraft:overworld positioned 0.0 0.0 0.0 as @n[type=marker,tag=RotationGetter] at @s facing 0.0 0.0 0.0 facing ^ ^ ^$(vector) run rotate @s ~ ~
