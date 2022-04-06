What is each pokemon's primary type?
SELECT pokemons.name, types.name
FROM pokemons
JOIN types
ON pokemons.primary_type = types.id;

What is Rufflet's secondary type?
SELECT pokemons.name, types.name
FROM pokemons
JOIN types
ON pokemons.secondary_type = types.id
WHERE pokemons.name = 'rufflet';

What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemon.name
FROM pokemons
JOIN pokemon_trainer
ON pokemons.id = pokemon_trainer.pokemon_id
WHERE pokemon_trainer.trainerid= '303';

How many pokemon have a secondary type Poison
SELECT count(*)
FROM pokemons
JOIN types
ON pokemons.secondary_type = types.id
WHERE types.id = '7';

What are all the primary types and how many pokemon have that type?
SELECT count(*), types.name
FROM pokemons
JOIN types
ON pokemons.primary_type = types.id
GROUP BY pokemons.primary_type;

How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT count(*)
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerid;

How many pokemon only belong to one trainer and no other?
SELECT count(*), pokemons.name
FROM pokemon_trainer
JOIN pokemons
ON pokemon_trainer.pokemon_id = pokemons.id
GROUP BY pokemon_id
Having count = 1;
