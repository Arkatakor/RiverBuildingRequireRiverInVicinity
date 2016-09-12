-- Insert SQL Rules Here 
--	TXT_KEY_BUILDING_GARDEN_STRATEGY
Update Language_en_US Set Text = 'The Garden increases the speed at which [ICON_GREAT_PEOPLE] Great People are generated in the city by 25%. Gardens can be constructed only in cities with a river or lake within its borders.' where Tag = 'TXT_KEY_BUILDING_GARDEN_STRATEGY';
--	TXT_KEY_BUILDING_WATERMILL_STRATEGY
Update Language_en_US Set Text = 'The Water Mill can only be constructed in a city with a river within its borders. The Water Mill increases the city''s [ICON_FOOD] Food intake.' where Tag = 'TXT_KEY_BUILDING_WATERMILL_STRATEGY';
--	TXT_KEY_BUILDING_FLOATING_GARDENS_HELP
Update Language_en_US Set Text = '+15% [ICON_FOOD] Food. Each worked Lake tile provides +2 [ICON_FOOD] Food.[NEWLINE][NEWLINE]City must have a River or Lake in within its borders.' where Tag = 'TXT_KEY_BUILDING_FLOATING_GARDENS_HELP';
--	TXT_KEY_BUILDING_WATERMILL_HELP
Update Language_en_US Set Text = 'City must have a River within its borders.' where Tag = 'TXT_KEY_BUILDING_WATERMILL_HELP';
--	TXT_KEY_BUILDING_GARDEN_HELP
Update Language_en_US Set Text = '+25% [ICON_GREAT_PEOPLE] Great People generation in this City.[NEWLINE][NEWLINE]City must have a River or Lake within its borders.' where Tag = 'TXT_KEY_BUILDING_GARDEN_HELP';
--	TXT_KEY_BUILDING_HYDRO_PLANT_HELP
Update Language_en_US Set Text = '+1 [ICON_PRODUCTION] Production in every tile next to a River. Requires 1 [ICON_RES_ALUMINUM] Aluminum.[NEWLINE][NEWLINE]City must have a River within its borders.' where Tag = 'TXT_KEY_BUILDING_HYDRO_PLANT_HELP';