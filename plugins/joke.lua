!plugin test.lua local database = 'http://2dayjok.ir/'
local function run(msg)
local res = http.request(database.."joke.db")
local joke = res:split(",")
return joke[math.random(#joke)]
end

return {
description = "500 Persian Joke",
usage = "!joke : send random joke",
patterns = "^[/!]جک$",
"^[/!]joke$",
"^[جک]$",
run = run
}
