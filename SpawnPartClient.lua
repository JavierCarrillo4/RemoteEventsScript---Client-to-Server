-- Local script (referring to client) can call to server
script.Parent.MouseButton1Down:Connect(function()	-- Everytime the Parent (TextButton) is left clicked the
    -- the function will run

game.ReplicatedStorage.SpawnPart:FireServer()	-- Calls the server to run the SpawnPart function
end)