#> lib:util/get_near_block_faces
#
#

# predicateでentity_propertyのdistanceを使用しているが
# これは恐らくNBTを参照するので実行座標をずらす場合は
# summon area_effect_cloudを通して実行する


# faces
    data modify storage return: faces set value {}
    $execute positioned ~$(distance) ~ ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data modify storage return: faces.east set value 1b
    $execute positioned ~-$(distance) ~ ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data modify storage return: faces.west set value 1b
    $execute positioned ~ ~$(distance) ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data modify storage return: faces.up set value 1b
    $execute positioned ~ ~-$(distance) ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data modify storage return: faces.down set value 1b
    $execute positioned ~ ~ ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data modify storage return: faces.south set value 1b
    $execute positioned ~ ~ ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data modify storage return: faces.north set value 1b

    $execute unless data storage return: faces.up unless data storage return: faces.east positioned ~$(distance) ~$(distance) ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{up:1b,east:1b}}
    $execute unless data storage return: faces.up unless data storage return: faces.west positioned ~-$(distance) ~$(distance) ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{up:1b,west:1b}}
    $execute unless data storage return: faces.up unless data storage return: faces.south positioned ~ ~$(distance) ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{up:1b,south:1b}}
    $execute unless data storage return: faces.up unless data storage return: faces.north positioned ~ ~$(distance) ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{up:1b,north:1b}}

#    $execute positioned ~$(distance) ~ ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{east:1b,south:1b}}
#    $execute positioned ~$(distance) ~ ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{east:1b,north:1b}}
#    $execute positioned ~-$(distance) ~ ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{west:1b,south:1b}}
#    $execute positioned ~-$(distance) ~ ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{west:1b,north:1b}}

    $execute unless data storage return: faces.east unless data storage return: faces.south positioned ~$(distance) ~ ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{east:1b}}
    $execute unless data storage return: faces.east unless data storage return: faces.north positioned ~$(distance) ~ ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{east:1b}}
    $execute unless data storage return: faces.west unless data storage return: faces.south positioned ~-$(distance) ~ ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{west:1b}}
    $execute unless data storage return: faces.west unless data storage return: faces.north positioned ~-$(distance) ~ ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{west:1b}}

    $execute unless data storage return: faces.down unless data storage return: faces.east positioned ~$(distance) ~-$(distance) ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{down:1b,east:1b}}
    $execute unless data storage return: faces.down unless data storage return: faces.west positioned ~-$(distance) ~-$(distance) ~ summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{down:1b,west:1b}}
    $execute unless data storage return: faces.down unless data storage return: faces.south positioned ~ ~-$(distance) ~$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{down:1b,south:1b}}
    $execute unless data storage return: faces.down unless data storage return: faces.north positioned ~ ~-$(distance) ~-$(distance) summon area_effect_cloud align xyz if predicate lib:is_in_block_collision run data merge storage return: {faces:{down:1b,north:1b}}


# axis
    data modify storage return: axis set value {x:1b,y:1b,z:1b}
    execute unless data storage return: faces.east unless data storage return: faces.west run data remove storage return: axis.x
    execute unless data storage return: faces.up unless data storage return: faces.down run data remove storage return: axis.y
    execute unless data storage return: faces.south unless data storage return: faces.north run data remove storage return: axis.z
