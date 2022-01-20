--------------------------------------------------------------------------------

-- [vehicle_model] = num_of_tints,
-- Tint number starts from 0. For example, for "policeWagon01x" number of tints is 3 (0, 1 and 2 tint numbers accordingly).

-- Example of use:
-- ... create some vehicle policeWagon01x
-- Citizen.InvokeNative(0x8268B098F6FCA4E2, vehicle_policeWagon01x_id, 2) -- apply tint 2, maximum tint number for this vehicle model
-- Citizen.InvokeNative(0x8268B098F6FCA4E2, vehicle_policeWagon01x_id, 0) -- apply tint 0 to this vehicle, lowest tint number
-- Citizen.InvokeNative(0x8268B098F6FCA4E2, vehicle_policeWagon01x_id, -1)  -- remove all tints. Vehicle turns default "green"
-- Citizen.InvokeNative(0x8268B098F6FCA4E2, vehicle_policeWagon01x_id, -2)  -- some vehicles with tints remove livery. In this case, the inscription "police patrol" disappears from the transport.

--------------------------------------------------------------------------------

local vehicle_tints = {

	["armoredCar01x"]              = 1,
	["armoredcar03x"]              = 1,
	["ArmySupplyWagon"]            = 1,
	["boatSteam02x"]               = 6,
	["bountywagon01x"]             = 5,
	["buggy01"]                    = 14,
	["buggy02"]                    = 16,
	["buggy03"]                    = 16,
	["caboose01x"]                 = 12,
	["canoe"]                      = 5,
	["canoeTreeTrunk"]             = 1,
	["cart01"]                     = 27,
	["cart02"]                     = 24,
	["cart03"]                     = 25,
	["cart04"]                     = 19,
	["cart05"]                     = 24,
	["cart06"]                     = 25,
	["cart07"]                     = 24,
	["cart08"]                     = 20,
	["chuckwagon000X"]             = 15,
	["chuckwagon002X"]             = 15,
	["coach2"]                     = 5,
	["coach3"]                     = 20,
	["coach3_cutscene"]            = 10,
	["coach4"]                     = 20,
	["coach5"]                     = 20,
	["coach6"]                     = 20,
	["coal_wagon"]                 = 24,
	["coalHopper01x"]              = 1,
	["gatchuck"]                   = 16,
	["gatchuck_2"]                 = 16,
	["handcart"]                   = 2,
	["Huntercart01"]               = 6,
	["keelboat"]                   = 5,
	["logwagon"]                   = 5,
	["logwagon2"]                  = 5,
	["midlandboxcar05x"]           = 12,
	["midlandrefrigeratorCar"]     = 1,
	["northcoalcar01x"]            = 7,
	["northflatcar01x"]            = 3,
	["northpassenger01x"]          = 1,
	["northpassenger03x"]          = 1,
	["NORTHSTEAMER01X"]            = 7,
	["oilWagon01x"]                = 14,
	["oilWagon02x"]                = 12,
	["pirogue"]                    = 6,
	["pirogue2"]                   = 7,
	["policeWagon01x"]             = 3,
	["policeWagongatling01x"]      = 3,
	["privateArmoured"]            = 1,
	["privatebaggage01x"]          = 8,
	["privateboxcar01x"]           = 15,
	["privateboxcar02x"]           = 15,
	["privateboxcar04x"]           = 15,
	["privateCoalCar01x"]          = 3,
	["privateDining01x"]           = 2,
	["privateflatcar01x"]          = 3,
	["privateObservationcar"]      = 1,
	["privateopensleeper01x"]      = 3,
	["privateopensleeper02x"]      = 3,
	["privatepassenger01x"]        = 2,
	["privateRooms01x"]            = 2,
	["privateSteamer01x"]          = 2,
	["rowboat"]                    = 7,
	["rowboatSwamp"]               = 6,
	["rowboatSwamp02"]             = 6,
	["ship_nbdGuama2"]             = 2,
	["skiff"]                      = 3,
	["stagecoach001x"]             = 4,
	["STAGECOACH002X"]             = 4,
	["stagecoach003x"]             = 4,
	["stagecoach004_2x"]           = 5,
	["stagecoach004x"]             = 3,
	["stagecoach005x"]             = 4,
	["stagecoach006x"]             = 7,
	["supplywagon"]                = 16,
	["supplywagon2"]               = 16,
	["trolley01x"]                 = 2,
	["tugboat2"]                   = 8,
	["TugBoat3"]                   = 4,
	["utilliwag"]                  = 17,
	["wagon02x"]                   = 22,
	["wagon03x"]                   = 16,
	["wagon04x"]                   = 21,
	["wagon05x"]                   = 20,
	["wagon05x_2"]                 = 20,
	["wagon06x"]                   = 16,
	["wagonarmoured01x"]           = 31,
	["wagoncircus01x"]             = 1,
	["wagonCircus02x"]             = 1,
	["wagonDairy01x"]              = 2,
	["WAGONDOC01X"]                = 1,
	["wagonPrison01x"]             = 7,
	["wagontraveller01x"]          = 1,
	["wagonWork01x"]               = 2,
	["warWagon2"]                  = 6,
	["wintercoalcar"]              = 1,

	-- Don`t have tints:

	["breach_cannon"]              = 0,
	["gatling_gun"]                = 0,
	["gatlingMaxim02"]             = 0,
	["ghosttraincaboose"]          = 0,
	["ghosttraincoalcar"]          = 0,
	["ghosttrainpassenger"]        = 0,
	["ghosttrainsteamer"]          = 0,
	["HORSEBOAT"]                  = 0,
	["hotAirBalloon01"]            = 0,
	["hotchkiss_cannon"]           = 0,
	["MINECART01X"]                = 0,
	["rcBoat"]                     = 0,
	["SHIP_GUAMA02"]               = 0,
	["ship_nbdGuama"]              = 0,
	["smuggler02"]                 = 0,
	["steamerdummy"]               = 0,
	["turbineboat"]                = 0,
	["wintersteamer"]              = 0,
}
