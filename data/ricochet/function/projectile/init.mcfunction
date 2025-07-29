#> ricochet:arrow/init
#
# 跳弾の初期化



# 識別用タグ
    tag @s add ricochet.projectile


# Glowing
    team join ricochet.projectile @s
    data modify entity @s Glowing set value 1b

# エンチャントレベルからバウンド回数を計算
# x = lvl ^ 2
    # レベルを取得
        execute store result score @s ricochet.remaining_ricochets run data get entity @s weapon.components."minecraft:enchantments"."ricochet:ricochet"
    # マルチバージョンに対応
    execute if score @s ricochet.remaining_ricochets matches 0 store result score @s ricochet.remaining_ricochets run data get entity @s weapon.components."minecraft:enchantments".levels."ricochet:ricochet"
scoreboard players operation @s ricochet.remaining_ricochets *= @s ricochet.remaining_ricochets