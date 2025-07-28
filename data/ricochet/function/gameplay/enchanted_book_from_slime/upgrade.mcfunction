#> ricochet:gameplay/enchanted_book_from_slime/upgrade
#
# メインハンドの本の跳弾エンチャントのレベルを+1する
# まだエンチャントが付与されてなければ跳弾:1を付与する
#
# @within function ricochet:gameplay/enchanted_book_from_slime/hurt_slime_with_book


# 既にレベルMAXならreturn
execute if predicate ricochet:mainhand/max_level_enchanted_book run return fail

# メインハンドのアイテムの跳弾エンチャントのレベルを取得
execute store result score $level temp run data get entity @s SelectedItem.components.minecraft:stored_enchantments.levels.ricochet:ricochet

# 手に2つ以上の本を持っていたら調整
execute if predicate ricochet:mainhand/has_at_least_two_books run function ricochet:gameplay/enchanted_book_from_slime/upgrade/give_book


# 現在のレベル +1
scoreboard players add $level temp 1
# 反映
item modify entity @s weapon.mainhand {"function": "minecraft:set_enchantments","enchantments": {"ricochet:ricochet": {"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "$level"},"score": "temp"}},"conditions": []}

# SFX
    # パーティクル
    particle minecraft:trial_spawner_detection_ominous ^ ^ ^0.5 0.8 0.5 0.8 0 30 force

    # SE
    playsound minecraft:entity.allay.item_thrown
    playsound minecraft:entity.allay.item_thrown
    playsound minecraft:entity.allay.item_thrown


# 後始末
scoreboard players reset $level temp