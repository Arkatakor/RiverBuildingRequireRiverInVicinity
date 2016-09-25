-- BuildingsRiverVicinity
-- Author: LeeS
-- DateCreated: 10-Sep-16 8:20:58 AM
--------------------------------------------------------------
local tBuildingRequireNearbyRiver = {}
local tBuildingRequireNearbyLake = {}

for row in GameInfo.Building_RequireNearbyRiver() do
	tBuildingRequireNearbyRiver[GameInfoTypes[row.BuildingType]] = true
	tBuildingRequireNearbyLake[GameInfoTypes[row.BuildingType]] = row.FreshWater		
end
function CityHasRiverOrLake(pCity, bFreshWater)
	local iNumPlots = pCity:GetNumCityPlots()
	local iPlayer = pCity:GetOwner()
	for i = 0, iNumPlots - 1 do
		local pPlot = pCity:GetCityIndexPlot(i)
		if pPlot and (pPlot:GetOwner() == iPlayer) then
			if  pPlot:IsRiver() or (bFreshWater == true and pPlot:IsLake()) then			
				return true
			end
		end
	end
	return false
end
function CanConstructRiverBuilding(PlayerID, CityID, BuildingType)
	if tBuildingRequireNearbyRiver[BuildingType] then
		local pPlayer = Players[PlayerID]
		local bFreshWater = tBuildingRequireNearbyLake[BuildingType]
		local pCity = pPlayer:GetCityByID(CityID)
		return CityHasRiverOrLake(pCity, bFreshWater)
	end
	return true
end 
GameEvents.CityCanConstruct.Add(CanConstructRiverBuilding);