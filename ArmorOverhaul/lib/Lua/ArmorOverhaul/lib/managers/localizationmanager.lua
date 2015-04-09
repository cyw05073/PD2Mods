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
	armortext["bm_menu_hp_addend"] = "Bonus HP"
	armortext["bm_menu_jump_speed_multiplier"] = "Jump speed multiplier";
	armortext["bm_armor_level_8"] = "Lifa Vest"
	armortext["bm_armor_level_9"] = "Lightweight tactical vest"
	armortext["bm_armor_level_10"] = "Thin vest"
	armortext["bm_armor_level_11"] = "EOD Suit"
	armortext["bm_menu_skill_locked_level_8"] = "Requires the Curaga skill"
	armortext["bm_menu_skill_locked_level_9"] = "Requires the Materia skill"
	armortext["bm_menu_skill_locked_level_10"] = "Requires the Moving Target skill"
	armortext["bm_menu_skill_locked_level_11"] = "Requires the Bomb Disposal Expert skill"

	armortext["menu_stockholm_syndrome"] = "Curaga"
	armortext["menu_sentry_targeting_package"] = "Materia"
	armortext["menu_juggernaut"] = "Bomb Disposal Expert"

	if managers.money then
	
		local leadership_cost, leadership_cost_pro, leadership_money, leadership_money_pro, fast_learner_cost, fast_learner_cost_pro, fast_learner_money, fast_learner_money_pro, equilibrium_cost, equilibrium_cost_pro, equilibrium_money, equilibrium_money_pro, dominator_cost, dominator_cost_pro, dominator_money, dominator_money_pro, kilmer_cost, kilmer_cost_pro, kilmer_money, kilmer_money_pro, control_freak_cost, control_freak_cost_pro, control_freak_money, control_freak_money_pro, inspire_cost, inspire_cost_pro, inspire_money, inspire_money_pro, enforcer_cost, enforcer_money, show_of_force_cost, show_of_force_cost_pro, show_of_force_money, show_of_force_money_pro, shotgun_impact_cost, shotgun_impact_cost_pro, shotgun_impact_money, shotgun_impact_money_pro, from_the_hip_cost, from_the_hip_cost_pro, from_the_hip_money, from_the_hip_money_pro, sharpshooter_cost, sharpshooter_cost_pro, sharpshooter_money, sharpshooter_money_pro, hardware_expert_cost, hardware_expert_cost_pro, hardware_expert_money, hardware_expert_money_pro, iron_man_cost, iron_man_cost_pro, iron_man_money, iron_man_money_pro, chameleon_cost, chameleon_cost_pro, chameleon_money, chameleon_money_pro, silence_cost, silence_cost_pro, silence_money, silence_money_pro, magic_touch_cost, magic_touch_cost_pro, magic_touch_money, magic_touch_money_pro, scavenger_cost, scavenger_cost_pro, scavenger_money, scavenger_money_pro, assassin_cost, assassin_cost_pro, assassin_money, assassin_money_pro, materia_cost, materia_money, materia_cost_pro, materia_money_pro, sentry_2_cost, sentry_2_money, sentry_2_cost_pro, sentry_2_money_pro, tough_guy_cost, tough_guy_money, tough_guy_cost_pro, tough_guy_money_pro, juggernaut_cost, juggernaut_money, juggernaut_cost_pro, juggernaut_money_pro, moving_target_cost, moving_target_money, moving_target_cost_pro, moving_target_money_pro
		
		control_freak_cost = SkillTreeManager:get_skill_points("stockholm_syndrome", 1)
		control_freak_cost_pro = SkillTreeManager:get_skill_points("stockholm_syndrome", 2)
		control_freak_money = MoneyManager:get_skillpoint_cost(1, 6, control_freak_cost)
		control_freak_money_pro = MoneyManager:get_skillpoint_cost(1, 6, control_freak_cost_pro)

		tweak_data.upgrades.skill_descs.stockholm_syndrome = {multibasic = "30", multibasic2 = "0.5", multipro = "1.5"}

		armortext["menu_stockholm_syndrome_desc"] = "BASIC: ##" .. (Global.upgrades_manager.aquired["body_armor7"] and "OWNED" or (control_freak_cost .. " points / $" .. comma_value(control_freak_money))) .. "## ## ##\nUnlocks the Lifa Vest.\nThis vest nets you a ##" .. tweak_data.upgrades.skill_descs.stockholm_syndrome.multibasic .. "## HP bonus and a ##" .. tweak_data.upgrades.skill_descs.stockholm_syndrome.multibasic2 .. "## HP regen per second.\n\nACE: ##" .. (Global.upgrades_manager.aquired["player_level_8_hp_regen_addend"] and "OWNED" or (control_freak_cost_pro .. " points / $" .. comma_value(control_freak_money_pro))) .. "##\nImproves your Lifa Vest, which now regenerates ##" .. tweak_data.upgrades.skill_descs.stockholm_syndrome.multipro .. "## HP per second."

		tough_guy_cost = SkillTreeManager:get_skill_points("tough_guy", 1)
		tough_guy_cost_pro = SkillTreeManager:get_skill_points("tough_guy", 2)
		tough_guy_money = MoneyManager:get_skillpoint_cost(1, 6, tough_guy_cost)
		tough_guy_money_pro = MoneyManager:get_skillpoint_cost(1, 6, tough_guy_cost_pro)

		armortext["menu_tough_guy_desc"] = "BASIC: ##" .. (Global.upgrades_manager.aquired["body_armor6"] and "OWNED" or (tough_guy_cost .. " points / $" .. comma_value(tough_guy_money))) .. "## ## ##\nUnlocks the Improved Combined Tactical Vest.\n\nACE: ##" .. (Global.upgrades_manager.aquired["run_and_shoot"] and "OWNED" or (tough_guy_cost_pro .. " points / $" .. comma_value(tough_guy_money_pro))) .. "##\nYou can now shoot while running.\nYou can now melee shields to make them stumble."

		juggernaut_cost = SkillTreeManager:get_skill_points("juggernaut", 1)
		juggernaut_cost_pro = SkillTreeManager:get_skill_points("juggernaut", 2)
		juggernaut_money = MoneyManager:get_skillpoint_cost(1, 6, juggernaut_cost)
		juggernaut_money_pro = MoneyManager:get_skillpoint_cost(1, 6, juggernaut_cost_pro)

		tweak_data.upgrades.skill_descs.juggernaut = {multipro = "10%", multipro2 = "10", multipro3 = "5.25", multipro4 = "200%"}

		armortext["menu_juggernaut_desc"] = "BASIC: ##" .. (Global.upgrades_manager.aquired["body_armor10"] and "OWNED" or (juggernaut_cost .. " points / $" .. comma_value(juggernaut_money))) .. "## ## ##\nUnlocks the EOD Suit.\n\nACE: ##" .. (Global.upgrades_manager.aquired["player_level_11_hp_addend"] and "OWNED" or (juggernaut_cost_pro .. " points / $" .. comma_value(juggernaut_money_pro))) .. "##\nImproves your EOD Suit, lowering explosion damage to ##" .. tweak_data.upgrades.skill_descs.juggernaut.multipro .. "##, increasing maximum HP by ##" .. tweak_data.upgrades.skill_descs.juggernaut.multipro2 .. "##, movement speed by ##" .. tweak_data.upgrades.skill_descs.juggernaut.multipro3 .. "## and stamina by ##" .. tweak_data.upgrades.skill_descs.juggernaut.multipro4 .. "##."

		materia_cost = SkillTreeManager:get_skill_points("sentry_targeting_package", 1)
		materia_cost_pro = SkillTreeManager:get_skill_points("sentry_targeting_package", 2)
		materia_money = MoneyManager:get_skillpoint_cost(1, 6, materia_cost)
		materia_money_pro = MoneyManager:get_skillpoint_cost(1, 6, materia_cost_pro)

		tweak_data.upgrades.skill_descs.materia = {multipro = "20%", multipro2 = "10", multipro3 = "10%"}

		armortext["menu_sentry_targeting_package_desc"] = "BASIC: ##" .. (Global.upgrades_manager.aquired["body_armor8"] and "OWNED" or (materia_cost .. " points / $" .. comma_value(materia_money))) .. "## ## ##\nUnlocks the Lightweight Tactical Vest.\n\nACE: ##" .. (Global.upgrades_manager.aquired["player_level_9_armor_regen_addend"] and "OWNED" or (materia_cost_pro .. " points / $" .. comma_value(materia_money_pro))) .. "##\nImproves your Lightweight Tactical Vest, decreasing armor regeneration delay by ##" .. tweak_data.upgrades.skill_descs.materia.multipro .. "##, increasing armor regeneration by ##" .. tweak_data.upgrades.skill_descs.materia.multipro2 .. "## per second and deflection chance by ##" .. tweak_data.upgrades.skill_descs.materia.multipro3 .. "##."

		sentry_2_cost = SkillTreeManager:get_skill_points("sentry_2_0", 1)
		sentry_2_cost_pro = SkillTreeManager:get_skill_points("sentry_2_0", 2)
		sentry_2_money = MoneyManager:get_skillpoint_cost(1, 6, sentry_2_cost)
		sentry_2_money_pro = MoneyManager:get_skillpoint_cost(1, 6, sentry_2_cost_pro)

		tweak_data.upgrades.skill_descs.sentry_2 = {multibasic = "100%", multipro = "150%", multipro2 = "50%"}

		armortext["menu_sentry_2_0_desc"] = "BASIC: ##" .. (Global.upgrades_manager.aquired["sentry_gun_can_reload"] and "OWNED" or (sentry_2_cost .. " points / $" .. comma_value(sentry_2_money))) .. "## ## ##\nYou can now reload your sentry gun with your own ammo\nYour sentry gun's accuracy is increased by ##" .. tweak_data.upgrades.skill_descs.sentry_2.multibasic .. "##.\n\nACE: ##" .. (Global.upgrades_manager.aquired["sentry_gun_shield"] and "OWNED" or (sentry_2_cost_pro .. " points / $" .. comma_value(sentry_2_money_pro))) .. "##\nYour sentry gun receives a protective shield.\nYour sentry gun's rotational speed is increased by ##" .. tweak_data.upgrades.skill_descs.sentry_2.multipro .. "##.\nYour sentry gun contains ##" .. tweak_data.upgrades.skill_descs.sentry_2.multipro2 .. "## more ammo."

		moving_target_cost = SkillTreeManager:get_skill_points("moving_target", 1)
		moving_target_cost_pro = SkillTreeManager:get_skill_points("moving_target", 2)
		moving_target_money = MoneyManager:get_skillpoint_cost(1, 6, moving_target_cost)
		moving_target_money_pro = MoneyManager:get_skillpoint_cost(1, 6, moving_target_cost_pro)

		tweak_data.upgrades.skill_descs.moving_target = {multipro = "25%"}

		armortext["menu_moving_target_desc"] = "## ##BASIC: ##" .. (Global.upgrades_manager.aquired["body_armor9"] and "OWNED" or (moving_target_cost .. " points / $" .. comma_value(moving_target_money))) .. "## ## ##\nYou can now run while strafing.\nUnlocks the Thin Vest.\n\nACE: ##" .. (Global.upgrades_manager.aquired["player_can_free_run"] and "OWNED" or (moving_target_cost_pro .. " points / $" .. comma_value(moving_target_money_pro))) .. "##\nYou can now run in any direction.\nYour dodge value is increased by ##" .. tweak_data.upgrades.skill_descs.moving_target.multipro .. "##."
	end
	
    if armortext[string_id] then return armortext[string_id] end
    return LocalizationManager_text(self, string_id, macros)
end

function comma_value(amount)
  local formatted = amount
  local k
  while true do
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end
  return formatted
end