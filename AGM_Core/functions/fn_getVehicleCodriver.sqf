/*
 * Author: commy2
 *
 * Get the vehicle codriver positions.
 *
 * Argument:
 * 0: Vehicle type (String)
 *
 * Return value:
 * Vehicle codriver positions. (Array)
 */

private ["_vehicle", "_config", "_cargo", "_codrivers"];

_vehicle = _this select 0;

_config = configFile >> "CfgVehicles" >> _vehicle;

_cargo = [];
_codrivers = getArray (_config >> "cargoIsCoDriver");

for "_index" from 0 to (getNumber (_config >> "transportSoldier") - 1) do {
  if (_index in _codrivers) then {
    _cargo pushBack _index;
  };
};
_cargo
