#> lib:util/get_near_block_faces
#
#

# faces
    data modify storage return: faces set value {}
    $execute positioned ~$(distance) ~ ~ if predicate lib:is_in_block_collision run data modify storage return: faces.east set value 1b
    $execute positioned ~-$(distance) ~ ~ if predicate lib:is_in_block_collision run data modify storage return: faces.west set value 1b
    $execute positioned ~ ~$(distance) ~ if predicate lib:is_in_block_collision run data modify storage return: faces.up set value 1b
    $execute positioned ~ ~-$(distance) ~ if predicate lib:is_in_block_collision run data modify storage return: faces.down set value 1b
    $execute positioned ~ ~ ~$(distance) if predicate lib:is_in_block_collision run data modify storage return: faces.south set value 1b
    $execute positioned ~ ~ ~-$(distance) if predicate lib:is_in_block_collision run data modify storage return: faces.north set value 1b

# axis
    data modify storage return: axis set value {x:1b,y:1b,z:1b}
    execute unless data storage return: faces.east unless data storage return: faces.west run data remove storage return: axis.x
    execute unless data storage return: faces.up unless data storage return: faces.down run data remove storage return: axis.y
    execute unless data storage return: faces.south unless data storage return: faces.north run data remove storage return: axis.z
