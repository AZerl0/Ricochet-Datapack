#> ricochet:projectile/hit_block/is_invalid_hit
#
# 既知の無効なHITかinBLockStateから判定する
# データの削除とreturnを同時に行うため判定を、1tick後に消えるエンティティを使う
#
# @within function ricochet:projectile/hit_block/error

# MODのブロック
execute if function ricochet:projectile/hit_block/is_invalid_hit/is_mod_block run return 1

# shulker_box
execute if function ricochet:projectile/hit_block/is_invalid_hit/is_shulker_box run return 1

# 既知の無効なHITではなかった
return fail
