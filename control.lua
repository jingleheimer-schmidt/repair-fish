script.on_event(defines.events.on_player_used_capsule, function(event)
  if event.item.name == "raw-fish" then
    local player = game.get_player(event.player_index)
    local selected = player.selected
    if selected and selected.health then
      selected.health = selected.health + 80
      -- if player.character.health and player.character.get_health_ratio() < 1 then
      --   player.character.health = player.character.health - 80
      -- end
    end
  end
end
)
