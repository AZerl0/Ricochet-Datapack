#> ricochet:arrow/hit_block
#
# 跳弾がブロックに当たった時の処理


# 衝突するごとにスコアが1減る
# 負数にに設定されているときは減らない
    execute if score @s ricochet.bouncing matches 0 run kill @s

    execute unless score @s ricochet.bouncing matches ..-1 run scoreboard players remove @s ricochet.bouncing 1


#衝突した面の取得
#function lib:util/get_near_block_faces {distance:0.0625}
    function lib:util/get_near_block_faces {distance:0.0625}
#title @a actionbar [{"nbt":"faces","storage": "return:"}]
# 当たったが衝突位置を見つけられなかったのでストップ
    execute unless data storage return: {axis:{x:1b}} unless data storage return: {axis:{y:1b}} unless data storage return: {axis:{z:1b}} run return fail

# Motion
    # 最後のMotionを戻す
        data modify entity @s Motion set from entity @s item.components."minecraft:custom_data".last_motion
#        data remove entity @s item.components."minecraft:custom_data".last_motion

    # 衝突した面に対するMotionを反転
        execute if data storage return: {axis:{x:1b}} store result entity @s Motion[0] double -0.0001 run data get entity @s Motion[0] 10000
        execute if data storage return: {axis:{y:1b}} store result entity @s Motion[1] double -0.0001 run data get entity @s Motion[1] 10000
        execute if data storage return: {axis:{z:1b}} store result entity @s Motion[2] double -0.0001 run data get entity @s Motion[2] 10000

    # 衝突による速度の減衰(*=0.9)
#        execute store result entity @s Motion[0] double 0.00009 run data get entity @s Motion[0] 10000
#        execute store result entity @s Motion[1] double 0.00009 run data get entity @s Motion[1] 10000
#        execute store result entity @s Motion[2] double 0.00009 run data get entity @s Motion[2] 10000

# SFX
#execute as @e[type=!player,distance=..4] at @s run damage @s 3 arrow
#    particle minecraft:explosion
    function ricochet:projectile/hit_block/block_particle with entity @s
    #function entity:arrow/ricochet/hit_block/block_particle with entity @s


#debug
#execute if data storage lib: {HitBlock:{Face:{axis:"X"}}} run title @a actionbar [{"text":"Axis - ", "color": "white"},{"text":"X","color":"red"}]
#execute if data storage lib: {HitBlock:{Face:{axis:"Y"}}} run title @a actionbar [{"text":"Axis - ", "color": "white"},{"text":"Y","color":"green"}]
#execute if data storage lib: {HitBlock:{Face:{axis:"Z"}}} run title @a actionbar [{"text":"Axis - ", "color": "white"},{"text":"Z","color":"blue"}]

# KillCheck
# 速度の取得
#    function lib:entity/get/movement_speed
#    tellraw @a {"score": {"objective": "entity.movement_speed","name": "@s"}}
#    execute if score @s ricochet.movement_speed matches ..200 run kill @s

# MotionからRotationを求め、反映
data modify storage lib: input.Motion set from entity @s Motion
function lib:entity/set/rotation_from_motion/projectile
data modify entity @s Rotation set from storage lib: return

data merge entity @s {crit:0b,inGround:0b,inBlockState:{}}
damage @s 0.0
