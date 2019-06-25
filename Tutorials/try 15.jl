function baz()
    s = rand()
    if s > 2/3
        return .666667
    elseif s > 1/3
        return 1//3
    else
        return 0
    end
end

function bar()
    s = rand()
    if s > 2/3
        return .666667
    elseif s > 1/3
        return .3333333
    else
        return 0.0
    end
end