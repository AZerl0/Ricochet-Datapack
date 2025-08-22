#> ricochet:gameplay/enchanted_book_from_slime/hurt_slime_with_book
#
# 本でスライムにダメージを与えた際の処理
#
# @within advancement ricochet:hurt_slime_with_book


# 確率でエンチャント
execute if predicate ricochet:enchanted_book_from_slime_chance run function ricochet:gameplay/enchanted_book_from_slime/upgrade

# 進捗剝奪
advancement revoke @s only ricochet:hurt_slime_with_book