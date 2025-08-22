#> ricochet:gameplay/apply_enchant_to_mob_weapon/try
#
# MOBの持つ武器に跳弾エンチャントを付与する
# - 試行
#
# @within function ricochet:gameplay/apply_enchant_to_mob_weapon/tick


# 確率でメインハンドの武器に跳弾エンチャントを付与する
    item modify entity @s[predicate=ricochet:apply_enchant_to_mob_weapon_chance] weapon.mainhand ricochet:enchant_randomly

# ボグドならもう一度試行する
    item modify entity @s[type=bogged] weapon.mainhand ricochet:enchant_randomly

# 試行したらタグ付与
    tag @s add ricochet.apply_enchant_to_weapon.tried