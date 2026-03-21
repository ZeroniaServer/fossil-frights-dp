# Hazards

This system is scalable, but each new hazard must be registered in a few places.

## Files to create

Create these 4 files for a new hazard named `<name>`:

- `start/<name>.mcfunction`
- `stop/<name>.mcfunction`
- `<name>/start.mcfunction`
- `<name>/stop.mcfunction`

## What each file does

- `start/<name>.mcfunction`
  Sets `<name>` to `1` in `ff_hazard_active`, then calls `hazard/<name>/start`

- `stop/<name>.mcfunction`
  Sets `<name>` to `0` in `ff_hazard_active`, then calls `hazard/<name>/stop`

- `<name>/start.mcfunction`
  Put the real hazard start logic here

- `<name>/stop.mcfunction`
  Put the real hazard stop logic here

## Also update these files

- `load.mcfunction`
  Add:
  `scoreboard players set <name> ff_hazard_active 0`

- `stop/all.mcfunction`
  Add:
  `function fossil_frights:hazard/stop/<name>`

- `start/random.mcfunction`
  Add the new hazard to the inactive count and selection list

## Important note

`start/random` is partially generic.
When you add more hazards, update:

- the inactive count lines
- the `random value 1..N` range lines
- the cursor/select lines
- add a `start/select_<name>.mcfunction` file
