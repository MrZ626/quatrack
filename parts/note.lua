local Note={}

local noteColor={
    R={1.,.4,.4,.8},
    G={.4,1.,.4,.8},
    B={.4,.4,1.,.8},
    Y={1.,1.,.4,.8},
    M={1.,.4,1.,.8},
    C={.4,1.,1.,.8},
    W={1.,1.,1.,.8},
    K={.4,.4,.4,.8},
}

local function _copyColor(i)return{i[1],i[2],i[3],i[4]}end
function Note.new(d)
    d.active=true
    d.lostTime=.16
    d.trigTime=.2
    d.color=_copyColor(noteColor[d.color or'W'])
    return setmetatable(d,{__index=Note})
end

return Note