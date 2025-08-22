#> lib:calculation/block_offset/get
#
# 
# [original]
# https://github.com/MCJE-Tech-Community/Datapack-WIki/blob/main/02_calculation/data/flower_position/functions/get.mcfunction
#
# @api

## 実行点の座標を取得
    # マーカー召喚
    execute unless entity 4fe002bb-0-0-0-1 run summon marker ~ ~ ~ {UUID:[I;1340080827,0,0,1]}
    execute align xyz run tp 4fe002bb-0-0-0-1 ~0.5 ~ ~0.5
    # 座標をストレージに保存
    data modify storage _ pos set from entity 4fe002bb-0-0-0-1 Pos


## シードの計算
# 最終的に下位28bit以内しか見ないのでオーバーフローしてても気にしない
    # x * 3129871L ついでに16も掛ける
    execute store result score #x temp run data get storage _ pos[0]
    scoreboard players operation #x temp *= #50077936 Constant
    # (long)z * 116129781L ついでに16も掛ける
    execute store result score #z temp run data get storage _ pos[2]
    scoreboard players operation #z temp *= #1858076496 Constant
    # x ^ z 排他的論理和
        # スコア初期化
        scoreboard players set #seed temp 0
        # 2bit分ずつずらしながら確認
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 134217728
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 134217728
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 67108864
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 67108864
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 33554432
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 33554432
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 16777216
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 16777216
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 8388608
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 8388608
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 4194304
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 4194304
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 2097152
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 2097152
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 1048576
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 1048576
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 524288
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 524288
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 262144
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 262144
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 131072
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 131072
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 65536
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 65536
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 32768
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 32768
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 16384
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 16384
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 8192
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 8192
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 4096
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 4096
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 2048
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 2048
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 1024
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 1024
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 512
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 512
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 256
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 256
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 128
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 128
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 64
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 64
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 32
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 32
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 16
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 16
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 8
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 8
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 4
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 4
        scoreboard players operation #x temp *= #4 Constant
        scoreboard players operation #z temp *= #4 Constant
        execute if score #x temp matches ..-1 if score #z temp matches 0.. run scoreboard players add #seed temp 2
        execute if score #z temp matches ..-1 if score #x temp matches 0.. run scoreboard players add #seed temp 2
        execute if score #x temp matches -1073741824.. unless score #x temp matches 0..1073741823 unless score #z temp matches -1073741824..-1 unless score #z temp matches 1073741824.. run scoreboard players add #seed temp 1
        execute if score #z temp matches -1073741824.. unless score #z temp matches 0..1073741823 unless score #x temp matches -1073741824..-1 unless score #x temp matches 1073741824.. run scoreboard players add #seed temp 1
    # seed = seed * seed * 42317861L + seed * 11L の計算
    scoreboard players operation #x temp = #seed temp
    scoreboard players operation #seed temp *= #seed temp
    scoreboard players operation #seed temp *= #42317861 Constant
    scoreboard players operation #x temp *= #11 Constant
    execute store result score #x temp store result score #z temp run scoreboard players operation #seed temp += #x temp

## オフセットの計算
    # seed & 15L, seed >> 8 & 15L の計算
        # 下を切る
        scoreboard players operation #x temp /= #65536 Constant
        scoreboard players operation #z temp /= #16777216 Constant
        # 上を切る
        scoreboard players operation #x temp %= #16 Constant
        scoreboard players operation #z temp %= #16 Constant
        # 少数計算の為に桁を増やす
        scoreboard players operation #x temp *= #10000 Constant
        scoreboard players operation #z temp *= #10000 Constant
    # /15.0F
    scoreboard players operation #x temp /= #3 Constant
    scoreboard players operation #z temp /= #3 Constant
    # -0.5F
    scoreboard players remove #x temp 25000
    scoreboard players remove #z temp 25000

    # MAX_HORIZONTAL_OFFSET
        #　Offsetを格納
        $data modify storage temp: MAX_HORIZONTAL_OFFSET set value $(MAX_HORIZONTAL_OFFSET)
        # 100000倍してスコアに格納
        execute store result score $MAX_HORIZONTAL_OFFSET temp run data get storage temp: MAX_HORIZONTAL_OFFSET 100000
        # MINも取得
        execute store result score $MIN_HORIZONTAL_OFFSET temp run data get storage temp: MAX_HORIZONTAL_OFFSET -100000
        # clamp
        execute if score #x temp > $MAX_HORIZONTAL_OFFSET temp run scoreboard players operation #x temp = $MAX_HORIZONTAL_OFFSET temp
        execute if score #x temp < $MIN_HORIZONTAL_OFFSET temp run scoreboard players operation #x temp = $MIN_HORIZONTAL_OFFSET temp
        execute if score #z temp > $MAX_HORIZONTAL_OFFSET temp run scoreboard players operation #z temp = $MAX_HORIZONTAL_OFFSET temp
        execute if score #z temp < $MIN_HORIZONTAL_OFFSET temp run scoreboard players operation #z temp = $MIN_HORIZONTAL_OFFSET temp
## 出力
    # x
        execute store result storage return: x float 0.00001 run scoreboard players get #x temp
    # z
        execute store result storage return: z float 0.00001 run scoreboard players get #z temp
    # debug
    #title @s actionbar [{"translate":"(%s,%s)","with":[{"nbt":"x","storage":"return:"},{"nbt":"z","storage":"return:"}]},{"translate":"(%s,%s)","with":[{"score": {"objective": "temp","name": "#x"}},{"score": {"objective": "temp","name": "#z"}}]}]

## 後処理
    # スコアホルダーの削除
    scoreboard players reset #x temp
    scoreboard players reset #z temp
    scoreboard players reset #seed temp
    scoreboard players reset $MAX_HORIZONTAL_OFFSET temp
    scoreboard players reset $MIN_HORIZONTAL_OFFSET temp
    data remove storage temp: MAX_HORIZONTAL_OFFSET

    # kill
    kill 4fe002bb-0-0-0-1