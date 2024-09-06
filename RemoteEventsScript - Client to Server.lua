game.ReplicatedStorage.SpawnPart.OnServerEvent:Connect(function(player)	-- When SpawnPart in ReplicatedStorage
																		-- gets fired (from SpawnPartClient)
																		-- run function
	print("Picked up on the server!")
	
	local part = Instance.new("Part")	-- Create a new part
	part.Parent = game.Workspace	-- Sets part's parent to Workspace
	part.BrickColor = BrickColor.Random()	-- Sets part's color to a random color
	
	local character = game.Workspace:WaitForChild(player.name)	-- Gets player's character and saves it to
																-- character variable
	
	local Head = character:WaitForChild("Head")	-- Gets player's head and saves it to Head variable
	
	part.Position = Head.Position + Vector3.new(5,0,5)	-- Sets part's position to Head's position
														-- + 5 studs in front of Head

end)

game.Players.PlayerAdded:Connect(function(player)	-- When a player joins the game, run function
	wait(2)
	
	game.ReplicatedStorage.UpdateStatus:FireClient(player, "You have joined the game!")	-- Fires UpdateStatus
																						-- to player parameter and
																						-- passes "You have joined 
																						-- the game" as a string
end)

while true  do
	
	wait(10)
	
	game.ReplicatedStorage.UpdateStatus:FireAllClients("This is updating to all clients!")	-- Fires UpdateStatus 
																							-- to all clients and
																							-- passes "This is 
																							-- updating to all
																							-- clients!" as a string
	
	wait(5)

	game.ReplicatedStorage.UpdateStatus:FireAllClients("Are we all getting this message?")	-- Fires UpdateStatus 
																							-- to all clients and
																							-- passes "Are we all
																							-- getting this 
																							-- message?"as a string
end