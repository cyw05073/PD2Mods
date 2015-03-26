ArmorOverhaul created by lekousin



<h4>What does it do ?</h4>

The mod is made to completely change how armor works by adding new mechanics as well as tweaking already exitent ones.

<h5>1. Progressive armor regeneration</h5>

If you didn't notice, when your bar starts filling up, all your armor is already regenerated. Now, armor regenerates over time, after the initial regen delay (3 seconds if no skill and not suppressed).
Each armor level requires more time to fully regenerate, the ICTV being the slowest armor to regen.

<h5>2. Bullet deflection</h5>

In a similar way to dodge, this system just nullifies bullets.
But the chances of deflecting bullets are not just be a simple value like dodge, it also depends on the damage of the bullet you're receiving. The more powerful the bullet, the less chances your armor has to deflect it.
This mechanic only works when your armor is up.

<h5>3. Health Damage Reduction</h5>

When your armor is down, you'll no longer be that crawling glass cannon deseperately seeking for cover. Sure, you'll still take damage, but the better your armor, the better the damage will be reduced.

<h5>4. Ammo bonus/malus</h5>

Some armors get an ammo pool bonus/malus. This is done for balancing purposes. Some armors will be too usefull if they had ammo bonus (think about an ICTV tank with 25% bonus ammo from the armor).
Currently, two armors affect ammo pool (Suit reduces it by 25%, Flak Jacket increases it by 50%).

<h5>5. Explosive Damage Reduction</h5>

All armors (except suit) decrease damage you get when you're hit by an explosion.

<h5>6. Stat tweaking</h5>

When we play PAYDAY 2, we often see some armors being completely useless, or some completely OP, simply due to a bad stat tweaking. With this stat tweak, you may get some love back for some forgotten armors like the Flack Jacket.



<h4>Credits to :</h4>
- hejoro for its localization text script
- v00d00, 90e, gir489 and 420MuNkEy for the Lua sources



<h4>Recommended mods:</h4>
- DMCWO (a weapon overhaul mod): http://steamcommunity.com/groups/DMCWpnOverhaul



<h4>What to do ?</h4>
Just put the lib folder in PAYDAY 2 root folder (usually C:\Program Files (x86)\Steam\SteamApps\common\PAYDAY2\)

If you want to choose the scripts you'll run, you can run a PD2Hook.yml and persistscript or postrequire the files you want to run. So the following is optionnal.

What to persistscript ?
- default_upgrades.lua to activate the ammo bonus/malus

What to postrequire ?
- playerdamage.lua to lib/units/beings/player/playerdamage
- upgradestweakdata.lua to lib/tweak_data/upgradestweakdata
- blackmarketgui.lua to lib/managers/menu/blackmarketgui
- armortext.lua to lib/managers/localizationmanager

Note: if you already use DMCWO (or another mod touching to localizationmanager), put the content of the method (all the armortext[...] = ...) into the corresponding script (in realnames.lua for DMCWO e.g.) and rename the armortext accordingly.
armortext.lua is here to fill in the new stat names in the blackmarket. Those two scripts are optional, but recommended.