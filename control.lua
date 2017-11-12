script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	--Can I check the "event" variable to see if it is the freeplay scenario?
	--player.print({event.name})
	player.insert{name = "iron-plate", count = 2}
	player.insert{name = "copper-cable", count = 100}
	player.insert{name = "forging-titanium", count = 10}
	player.insert{name = "mechanism-0", count = 20}
	player.insert{name = "electric-engine-unit", count = 10}
	player.insert{name = "burner-mining-drill", count = 1}
end)