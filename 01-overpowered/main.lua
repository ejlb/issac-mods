local Overpowered = RegisterMod("Overpowered", 1)

function Overpowered:fast(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage + 50
        player.MaxFireDelay = 5
    end
end

Overpowered:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Overpowered.fast)
