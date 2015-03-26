init_pd2 = UpgradesTweakData._init_pd2_values

function UpgradesTweakData:_init_pd2_values()
	init_pd2(self)
	self.values.player.body_armor.armor = {
		0,
		1,
		2,
		3,
		5.5,
		8,
		18
	}
	self.values.player.body_armor.movement = {
		1,
		0.975,
		0.925,
		0.85,
		0.75,
		0.6,
		0.4
	}
	self.values.player.body_armor.concealment = {
		30,
		26,
		23,
		21,
		18,
		12,
		1
	}
	self.values.player.body_armor.dodge = {
		0.05,
		-0.05,
		-0.2,
		-0.25,
		-0.3,
		-0.4,
		-0.5
	}
	self.values.player.body_armor.damage_shake = {
		1,
		0.96,
		0.92,
		0.85,
		0.8,
		0.7,
		0.5
	}
	self.values.player.body_armor.stamina = {
		1,
		0.975,
		0.925,
		0.85,
		0.75,
		0.6,
		0.4
	}
	self.values.player.body_armor.skill_ammo_mul = {
		0.75,
		1,
		1,
		1,
		1.5,
		1,
		1
	}


	-- {min damage, min hdr}, {max damage, max hdr}
	self.values.player.body_armor.health_damage_reduction = {
		{
			{0, 0}, 
			{0, 0}
		},
		{
			{0, 0},
			{10, 0.05}
		},
		{
			{0, 0},
			{8.5, 0.1}
		},
		{
			{0, 0.05},
			{7.5, 0.1}
		},
		{
			{0, 0.1},
			{6.5, 0.175}
		},
		{
			{0.5, 0.15},
			{6, 0.2}
		},
		{
			{1, 0.25},
			{5, 0.35}
		}
	}
	-- {min damage, min deflect chance}, {max damage, max deflect chance}
	self.values.player.body_armor.deflect = {
		{
			{0, 0}, 
			{0, 0}
		},
		{
			{0, 0.1},
			{1.2, 0}
		},
		{
			{0, 0.12},
			{1.5, 0}
		},
		{
			{0, 0.15},
			{2, 0}
		},
		{
			{0, 0.2},
			{3, 0}
		},
		{
			{0, 0.25},
			{3.5, 0}
		},
		{
			{0, 0.4},
			{6, 0.05}
		}
	}
	-- Amount of armor regenerated per second
	self.values.player.body_armor.regen = {
		2,
		2.15,
		2.3,
		2.5,
		3,
		3.25,
		4
	}
	self.values.player.body_armor.explosion_damage_reduction = {
		0,
		0.02,
		0.05,
		0.1,
		0.25,
		0.2,
		0.35
	}
end