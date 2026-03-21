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
  Add the new active/inactive combinations so random can choose the new hazard

## Important note

`start/random` is currently manual.
When you add more hazards, you must expand its random-pick cases to include them.
