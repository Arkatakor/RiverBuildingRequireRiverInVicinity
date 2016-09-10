-- BuildingsLakeVicinity
-- Author: LeeS
-- DateCreated: 10-Sep-16 9:26:04 AM
local tBuildingRequireNearbyLake = {}
for row in GameInfo.Building_RequireNearbyLake() do
	tBuildingRequireNearbyLake[GameInfoTypes[row.BuildingType]] = true
end
function CityHasLake(pCity)
	local iNumPlots = pCity:GetNumCityPlots()
	local iPlayer = pCity:GetOwner()
	for i = 0, iNumPlots - 1 do
		local pPlot = pCity:GetCityIndexPlot(i)
		if pPlot and (pPlot:GetOwner() == iPlayer) then
			if  pPlot:IsLake() then
				return true
			end
		end
	end
	return false
end
function CanConstructLakeBuilding(PlayerID, CityID, BuildingType)
	if tBuildingRequireNearbyLake[BuildingType] then
		local pPlayer = Players[PlayerID]
		local pCity = pPlayer:GetCityByID(CityID)
		return CityHasLake(pCity)
	end
	return true
end 
GameEvents.CityCanConstruct.Add(CanConstructLakeBuilding);
