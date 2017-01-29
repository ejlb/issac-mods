local Overpowered = RegisterMod("Overpowered", 1)

function Overpowered:onCache(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        player.Damage = 50
        player.MaxFireDelay = 5
    end

    if cacheFlag == CacheFlag.CACHE_TEARFLAG then
        player.TearFlags = player.TearFlags | 1 
        player.TearFlags = player.TearFlags | 1 << 1
        player.TearFlags = player.TearFlags | 1 << 2
        player.TearFlags = player.TearFlags | 1 << 18
        player.TearFlags = player.TearFlags | 1 << 53
    end
end

Overpowered:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Overpowered.onCache)
