#> ricochet:projectile/hit_block/is_invalid_hit/is_shulker_box
#
# shulker_boxにHitしたか
#
# @within function ricochet:projectile/hit_block/is_invalid_hit


function ricochet:projectile/hit_block/is_invalid_hit/is_shulker_box/add_id_suffix with entity @s inBlockState
data modify storage temp: id set string storage temp: id -12 -1

execute if data storage temp: {id:"shulker_box"} run summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;11,0,0,0],Duration:0}
data remove storage temp: id
execute if entity b-0-0-0-0 run return 1

return fail