#> ricochet:projectile/hit_block/is_invalid_hit/is_mod_block
#
# MODのブロック
#
# @within function ricochet:projectile/hit_block/is_invalid_hit


data modify storage temp: namespace set string entity @s inBlockState.Name 0 10

execute unless data storage temp: {namespace:"minecraft:"} run summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;11,0,0,0],Duration:0}
data remove storage temp: namespace
execute if entity b-0-0-0-0 run return 1
return fail