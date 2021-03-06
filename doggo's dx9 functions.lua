-- NOTE: I'm not the best in explaining lua so dm me if you don't understand the function or my shit english | doggo#6713 - 447343864215502849


--[[

	Magnitude function

This is the the same as the roblox magnitude (https://developer.roblox.com/en-us/articles/Magnitude)
but with this one you can only get the magnitude for 2 vector2's or vector3's 

Example:
  local option1Vector2 = {25, 10} -- for rlua users this is Vector2.new(25, 10) in dx9 lua
  local option2Vector2 = {15, 5}
  
  print(magnitude(option1Vector2, option2Vector2)) -- this will return the magnitude and this works with vector3 tho!
]]

local function magnitude(a,b)
    local v = {
        x = (a.x-b.x)*(a.x-b.x),
        y = (a.y-b.y)*(a.y-b.y),
    }
    if a.z and b.z then 
       v.z = (a.z-b.z)*(a.z-b.z)
       return math.sqrt(v.x+v.y+v.z)
    else 
        return math.sqrt(v.x+v.y)
    end
end

-----------------------------------------------------------------------------------------------------
	
--[[

	Getpath function

This function is basicly a faster way to get the path to a child.

Example: 
  local game = dx9.GetDatamodel()
  local camera = getpath(game, {'Workspace', 'Camera'}) -- returns the path (game.Workspace.Camera)
  print(dx9.GetName(camera)) -- This will return "Camera"
]]
	
local function getpath(begin,pathtable)
	local dirpath = nil
	for i,v in next, b do 
		if dirpath == nil then
			dirpath = dx9.FindFirstChild(a,v)
		else 
			dirpath = dx9.FindFirstChild(dirpath,v)
		end 
	end 
	return dirpath
end
