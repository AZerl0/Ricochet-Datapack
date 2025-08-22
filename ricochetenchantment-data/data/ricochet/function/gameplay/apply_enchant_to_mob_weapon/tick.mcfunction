#> ricochet:gameplay/apply_enchant_to_mob_weapon/tick
#
# MOBの持つ武器に跳弾エンチャントを付与する
# - メイン処理
#
# @within function ricochet:gameplay/tick/main


# 条件に一致するMOBに対して試行
    execute as @e[type=#ricochet:can_have_enchantment,tag=!ricochet.apply_enchant_to_weapon.tried] run function ricochet:gameplay/apply_enchant_to_mob_weapon/try