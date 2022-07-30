
local _ENV = {}

init = function()
    local o = {}
    o.registrations = {}
    return o
end

local get_key = function(cmd_name, num_args)
    d = {}
    d["cmd"] = cmd_name
    d["nargs"] = num_args
    return d
end

register_cmd = function(o, cmd_name, num_args, fn)
    local key = get_key(cmd_name, num_args)
    o.registrations[key] = fn
end

unregister_cmd = function(o, cmd_name, num_args)
    local key = get_key(cmd_name, num_args)
    o.registrations[key] = nil
end

parse_cmd = function(s)

    -- parse the command (every non-space up to the first space)
    -- parse the args (all groups of non-space separated by one or more spaces)
end

return _ENV
