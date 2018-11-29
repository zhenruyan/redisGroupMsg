local status = true
local groupname = KEYS[1]
local msg = ARGV[1]
local grouplist = redis.call("SMEMBERS",groupname)
    for item,val  in ipairs(grouplist) do
        status = redis.call("lpush",val,msg)
    end
return status