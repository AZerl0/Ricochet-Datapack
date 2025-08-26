#> ricochet:projectile/hit_block/is_invalid_hit/is_shulker_box/add_id_suffix
#
# /dataのset stringで最後の文字が取得できないためsuffixを付与する
#
# @within function ricochet:projectile/hit_block/is_invalid_hit/is_shulker_box

$data modify storage temp: id set value "$(Name)_"