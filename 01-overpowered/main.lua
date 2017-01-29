local Test = RegisterMod("Test", 1)

function Test:fast(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage + 50
        player.MaxFireDelay = 5
    end
end

Test:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Test.fast)
