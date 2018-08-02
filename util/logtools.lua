logtools = {}

logtools.mode = 1

function logtools.log(mode, x, y, z)
    if not logtools.mode then
        return
    end

    -- only display, if mode is equal or lower
    if mode <= logtools.mode then
        if x then log(serpent.block(x)) end
        if y then log(serpent.block(y)) end
        if z then log(serpent.block(z)) end
    end
end