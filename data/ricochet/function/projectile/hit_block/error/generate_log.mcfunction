#> ricochet:projectile/hit_block/error/generate_log
#
# inBlockStateからエラーログ生成
#
# @within function ricochet:projectile/hit_block/error

# NBTを格納
    $data modify storage temp: error_log set value 'Error Cannot find collision: Data {inBlockState:$(inBlockState)}'

# そのままだとダブルクォーテーションが被ってエラーを吐くので、item_modifierで暗黙的解釈させる
    summon item ~ ~ ~ {Item:{id:"minecraft:paper"},Tags:["ricochet.escape_inner_error_log_json"],PickupDelay:32767}
    item modify entity @n[tag=ricochet.test] container.0 ricochet:escape_inner_error_log_json
    data modify storage temp: error_log set from entity @n[tag=ricochet.escape_inner_error_log_json] item.components."minecraft:item_name"
    kill @n[tag=ricochet.escape_inner_error_log_json]