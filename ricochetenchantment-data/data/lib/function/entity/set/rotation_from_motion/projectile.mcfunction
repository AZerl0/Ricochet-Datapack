#> lib:entity/util/get/rotation_from_motion/projectile
#
# https://bugs.mojang.com/browse/MC-112474


execute store result storage lib: input.Motion[2] double -0.000001 run data get storage lib: input.Motion[2] 1000000
function lib:entity/set/rotation_from_motion/inversion