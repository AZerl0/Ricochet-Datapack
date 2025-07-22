#> ricochet:arrow/init
#
# 跳弾の初期化



# 識別用タグ
    tag @s add ricochet.projectile


# Glowing
    team join ricochet.projectile @s
    data modify entity @s Glowing set value 1b

# エンチャントレベルからバウンド回数を計算
# x = lvl * 2 - 1
    execute store result score @s ricochet.remaining_ricochets run data get entity @s weapon.components."minecraft:enchantments".levels."ricochet:ricochet"
    scoreboard players operation @s ricochet.remaining_ricochets *= #2 Constant
    scoreboard players remove @s ricochet.remaining_ricochets 1