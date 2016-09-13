-- BuildingsRiverVicinity
-- Author: LeeS
-- DateCreated: 10-Sep-16 8:20:58 AM
--------------------------------------------------------------
local tBuildingRequireNearbyRiver = {}
for row in GameInfo.Building_RequireNearbyRiverOrLake() do
	tBuildingRequireNearbyRiver[GameInfoTypes[row.BuildingType]] = true
	--TODO: figure this out; post in forums; look up lua tables
	--table.insert(tBuildingRequireNearbyRiver[GameInfoTypes[row.BuildingType]], GameInfoTypes[row.FreshWater])
end
function CityHasRiver(pCity)
	local iNumPlots = pCity:GetNumCityPlots()
	local iPlayer = pCity:GetOwner()
	for i = 0, iNumPlots - 1 do
		local pPlot = pCity:GetCityIndexPlot(i)
		if pPlot and (pPlot:GetOwner() == iPlayer) then
			if  pPlot:IsRiver() then
				return true
			end
		end
	end
	return false
end
function CanConstructRiverBuilding(PlayerID, CityID, BuildingType)
	if tBuildingRequireNearbyRiver[BuildingType] then
		local pPlayer = Players[PlayerID]
		local pCity = pPlayer:GetCityByID(CityID)
		return CityHasRiver(pCity)
	end
	return true
end 
GameEvents.CityCanConstruct.Add(CanConstructRiverBuilding);



