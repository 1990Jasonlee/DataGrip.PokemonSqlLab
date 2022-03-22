Part4: Final Report
Strongest = total stats

SELECT pokemons.name 'Pokemon Name', trainers.trainername 'Trainer Name', pokemon_trainer.pokelevel 'Level', primary_type.name 'Primary Type', secondary_type.name "Secondary Type", TotalStat
FROM pokemon_trainer
JOIN pokemons
ON pokemon_trainer.pokemon_id = pokemons.id
JOIN types primary_type on pokemons.primary_type = primary_type.id
JOIN types secondary_type on pokemons.secondary_type = secondary_type.id
JOIN trainers
ON pokemon_trainer.trainerID = trainers.trainerID
JOIN (SELECT SUM(maxhp + attack + defense + spatk + spdef + speed) as "TotalStat", trainerID
FROM pokemon_trainer GROUP BY trainerID) as stats ON stats.trainerID = pokemon_trainer.trainerID
ORDER BY TotalStat DESC;