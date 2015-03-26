--[[
Text for new stats
-code base thanks to hejoro
]]

LocalizationManager_text = LocalizationManager_text or LocalizationManager.text
function LocalizationManager:text( string_id, macros )
    local armortext = {}

	armortext["bm_menu_regen"] = "Regen per second"
	armortext["bm_menu_deflect_min_dmg"] = "Dmg max deflect"
	armortext["bm_menu_deflect_min_procent"] = "Max deflect chance"
	armortext["bm_menu_deflect_max_dmg"] = "Dmg min deflect"
	armortext["bm_menu_deflect_max_procent"] = "Min deflect chance"
	armortext["bm_menu_hdr_min_dmg"] = "Min HDR dmg"
	armortext["bm_menu_hdr_min_procent"] = "Min HDR value"
	armortext["bm_menu_hdr_max_dmg"] = "Max HDR dmg"
	armortext["bm_menu_hdr_max_procent"] = "Max HDR value"
	armortext["bm_menu_explosion_damage_reduction"] = "Explosion damage reduction"
	armortext["bm_menu_ammo_mul"] = "Ammo multiplier"
	
    if armortext[string_id] then return armortext[string_id] end
    return LocalizationManager_text(self, string_id, macros)
end