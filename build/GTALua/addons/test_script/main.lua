-- test_script
event.AddListener("OnScriptThread", "MyScriptThread", function()
	print("Lua!")
	
	while true do
		print("still alive")
		if IsKeyDown(0x78) then
			print("ok!")
			local localplayer = natives.PLAYER.GET_PLAYER_PED(-1)
			print("lplayer: ", localplayer)
			
			local vec = natives.ENTITY.GET_ENTITY_COORDS(localplayer, true)
			print("pos: ", vec.x, vec.y, vec.z)
			
			local r = natives.VEHICLE.CREATE_VEHICLE(0xC703DB5F, vec.x, vec.y, vec.z, 0.0, true, true)
			print("r: ", r)
		end
		scripthookv.ThreadSleep(50)
	end
end)