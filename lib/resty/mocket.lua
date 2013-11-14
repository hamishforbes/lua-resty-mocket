
local _M = {
    _VERSION = '0.01',
}

local TCP = {}
local tcp_mt = { __index = TCP }

local UDP = {}
local udp_mt = { __index = UDP }

function _M.new(_, sock_type)
    if not sock_type then
        return nil, 'Type not specified'
    end

    local mt
    if sock_type == 'tcp' then
        mt = tcp_mt
    elseif sock_type == 'udp' then
        mt = udp_mt
    end

    local self = {
    }
    return setmetatable(self, mt)
end

-- TCP
function TCP.connect(self, port, options_table)
    return true, nil
end

function TCP.send(self, data)
    return true, nil
end

function TCP.receive(self, size)
    return 'foo', nil, nil
end

function TCP.receiveuntil(self, pattern, options)
    local iter = function(size)
        return 'foo', nil, nil
    end
    return iter
end

function TCP.close(self)
    return true, nil
end

function TCP.settimeout(self, time)
end

function TCP.setoption(self)
end

function TCP.setkeepalive(self)
    return true, nil
end

function TCP.getreusedtimes(self)
    return 0, nil
end

-- UDP
function UDP.setpeername(self, host, port)
    return true, nil
end

function UDP.send(self, data)
    return true, nil
end

function UDP.receive(self, size)
    return 'foo', nil, nil
end

function UDP.close(self)
    return true, nil
end

function UDP.settimeout(self, time)
end

return _M
