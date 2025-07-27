#> ricochet:arrow/hit_block
#
# 跳弾がブロックに当たった時の処理
#
# @within ricochet:projectile/tick


# 残りの跳弾回数が0だったら止める
    execute if score @s ricochet.remaining_ricochets matches 0 run return fail

# 衝突するごとに
    # 残りの跳弾回数スコアが1減る
    # 負数にに設定されているときは減らない
        execute unless score @s ricochet.remaining_ricochets matches ..-1 run scoreboard players remove @s ricochet.remaining_ricochets 1

    # カウント
        scoreboard players add @s ricochet.ricochet_count 1

    # 残りの跳弾回数が0になったときの処理
        execute if score @s ricochet.remaining_ricochets matches 0 run data modify entity @s Glowing set value false

    # 特定の回数以上跳弾したら進捗用のタグ付与
        execute if score @s ricochet.ricochet_count matches 3.. run tag @s add ricochet.tricky

# 衝突した面の取得
    function lib:util/get_near_block_faces {distance:0.0625}
#title @a actionbar [{"nbt":"faces","storage": "return:"}]
# 当たったが衝突位置を見つけられなかったのでエラーを吐いてストップ
    execute unless data storage return: {axis:{x:1b}} unless data storage return: {axis:{y:1b}} unless data storage return: {axis:{z:1b}} if data entity @s {life:1s} run function ricochet:projectile/hit_block/error
    execute unless data storage return: {axis:{x:1b}} unless data storage return: {axis:{y:1b}} unless data storage return: {axis:{z:1b}} run return fail

# Motion
    # Motionを衝突する1tick前の値に変更する
        data modify entity @s Motion set from entity @s item.components."minecraft:custom_data".last_motion

    # 衝突した面に対するMotionを反転
        execute if data storage return: {axis:{x:1b}} store result entity @s Motion[0] double -0.0001 run data get entity @s Motion[0] 10000
        execute if data storage return: {axis:{y:1b}} store result entity @s Motion[1] double -0.0001 run data get entity @s Motion[1] 10000
        execute if data storage return: {axis:{z:1b}} store result entity @s Motion[2] double -0.0001 run data get entity @s Motion[2] 10000

    # 衝突による速度の減衰(*=0.9)
#        execute store result entity @s Motion[0] double 0.00009 run data get entity @s Motion[0] 10000
#        execute store result entity @s Motion[1] double 0.00009 run data get entity @s Motion[1] 10000
#        execute store result entity @s Motion[2] double 0.00009 run data get entity @s Motion[2] 10000

# SFX
    function ricochet:projectile/hit_block/block_particle with entity @s
#    execute as @e[type=!player,distance=..4] at @s run damage @s 3 arrow
#    particle minecraft:explosion

# debug
#    execute if data storage lib: {HitBlock:{Face:{axis:"X"}}} run title @a actionbar [{"text":"Axis - ", "color": "white"},{"text":"X","color":"red"}]
#    execute if data storage lib: {HitBlock:{Face:{axis:"Y"}}} run title @a actionbar [{"text":"Axis - ", "color": "white"},{"text":"Y","color":"green"}]
#    execute if data storage lib: {HitBlock:{Face:{axis:"Z"}}} run title @a actionbar [{"text":"Axis - ", "color": "white"},{"text":"Z","color":"blue"}]

# MotionからRotationを求め、反映
    data modify storage lib: input.Motion set from entity @s Motion
    function lib:entity/set/rotation_from_motion/projectile
    data modify entity @s Rotation set from storage lib: return

# 跳弾した投擲物のNBT変更
    data merge entity @s {crit:0b,inGround:0b,inBlockState:{}}

# Rotationを即座に反映させるためにdamage
    damage @s 0.0
