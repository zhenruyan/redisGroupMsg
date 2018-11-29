local status = true
local groupname = KEYS[1]
local msg = ARGV[1]
local grouplist = redis.call("SMEMBERS",groupname)
    for item  in ipairs(grouplist) do
        status = redis.call("lpush",item,msg)
    end
return status