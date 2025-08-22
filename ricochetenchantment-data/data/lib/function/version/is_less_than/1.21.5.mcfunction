#> lib:version/is_less_than/1.21.5
#
# version < 1.21.5
#
# @api

summon item ~ ~ ~ {UUID:[I;1,0,0,1],Item:{id:"minecraft:apple"}}
data modify entity 1-0-0-0-1 Item.id set value "minecraft:wildflowers"
execute unless entity 1-0-0-0-1 run return 1
kill 1-0-0-0-1
return fail
