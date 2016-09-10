-- Insert SQL Rules Here 
UPDATE Buildings SET River = 'false' WHERE Type = 'BUILDING_WATERMILL';
UPDATE Buildings SET River = 'false' WHERE Type = 'BUILDING_HYDRO_PLANT';
UPDATE Buildings SET FreshWater = 'false' WHERE Type = 'BUILDING_FLOATING_GARDENS';
UPDATE Buildings SET FreshWater = 'false' WHERE Type = 'BUILDING_GARDEN';


