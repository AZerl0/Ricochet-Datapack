#> ricochet:util/get_language
#
# サーバーの言語を取得
#
# @public


# 初期化(デフォルトでenにする)
    data modify storage return: lang set value en

# 言語取得用アイテム召喚
    summon item ~ ~ ~ {Item:{id:command_block},Tags:["ricochet.language_detect"],PickupDelay:32767}

# 言語取得(現在対応: en, ja)
    execute if entity @n[name="コマンドブロック",tag=ricochet.language_detect] run data modify storage return: lang set value "ja"
    execute if entity @n[name="Command Block",tag=ricochet.language_detect] run data modify storage return: lang set value "en"

# 後始末
    kill @n[tag=ricochet.language_detect]