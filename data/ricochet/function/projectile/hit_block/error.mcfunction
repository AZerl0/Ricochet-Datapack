#> ricochet:projectile/hit_block/error
#
# ブロックに衝突したが衝突位置を見つけられなかった際に表示するメッセージ

#
    execute on origin run tag @s add owner

    tellraw @p[tag=owner] [{"text": "error: Can not detect collision","color": "red"}]
    tellraw @p[tag=owner] [{"nbt": "inBlockState","entity": "@s","color": "red"}]

    tag @p[tag=owner] remove owner