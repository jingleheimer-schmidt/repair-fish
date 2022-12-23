local fish_data = {
  ["raw-fish"] = 80,
  ["cooked-fish"] = 120,

  ["raw-cod"] = 80,
  ["raw-salmon"] = 80,
  ["raw-pufferfish"] = 80,
  ["raw-clownfish"] = 100,

  ["cooked-cod"] = 120,
  ["cooked-salmon"] = 80,

  ["af-crab"] = 160,
  ["af-salmon"] = 80,
  ["af-tropical"] = 80,
  ["af-squid"] = 80,

  ["cooked-af-crab"] = 240,
  ["cooked-af-salmon"] = 80,
  ["cooked-af-tropical"] = 80,
  ["cooked-af-squid"] = 80,
}

script.on_event(defines.events.on_player_used_capsule, function(event)
  if fish_data[event.item.name] then
    local player = game.get_player(event.player_index)
    local selected = player.selected
    if selected and selected.health then
      selected.health = selected.health + fish_data[event.item.name]
    end
  end
end
)
