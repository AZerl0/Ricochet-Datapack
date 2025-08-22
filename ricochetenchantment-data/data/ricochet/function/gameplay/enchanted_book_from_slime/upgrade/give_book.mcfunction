#> ricochet:gameplay/enchanted_book_from_slime/upgrade/give_book
#
# 2つ以上の本をメインハンドに持った状態でエンチャントを付与すると
# 強制的に1冊になるので溢れる部分の本をgiveする
#
# @within function ricochet:gameplay/enchanted_book_from_slime/upgrade

# アイテム召喚
summon minecraft:item ~ ~ ~ {Tags:["this"],Item:{id:"minecraft:book"}}

# アイテムをメインハンドのアイテムにする
item replace entity @n[type=item,tag=this] container.0 from entity @s weapon.mainhand

# アイテムの数を1減らす
execute store result score $count temp run data get entity @s SelectedItem.count
scoreboard players remove $count temp 1
execute store result entity @n[type=item,tag=this] Item.count int 1 run scoreboard players get $count temp

# 後始末
tag @n[type=item,tag=this] remove this
scoreboard players reset $count temp