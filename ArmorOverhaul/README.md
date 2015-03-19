ArmorOverhaul created by lekousin



What does it do ?

The mod is made to completely change how armor works by adding new mechanics as well as tweaking already exitent ones.

1. Progressive armor regeneration

If you didn't notice, when your bar starts filling up, all your armor is already regenerated. Now, armor regenerates over time, after the initial regen delay (3 seconds if no skill and not suppressed).
Each armor level requires more time to fully regenerate, the ICTV being the slowest armor to regen.

2. Bullet deflection

In a similar way to dodge, this system just nullifies bullets.
But the chances of deflecting bullets are not just be a simple value like dodge, it also depends on the damage of the bullet you're receiving. The more powerful the bullet, the less chances your armor has to deflect it.
This mechanic only works when your armor is up.

3. Health Damage Reduction

When your armor is down, you'll no longer be that crawling glass cannon deseperately seeking for cover. Sure, you'll still take damage, but the better your armor, the better the damage will be reduced.

4. Ammo bonus/malus

Some armors get an ammo pool bonus/malus. This is done for balancing purposes. Some armors will be too usefull if they had ammo bonus (think about an ICTV tank with 25% bonus ammo from the armor).

5. Stat tweaking

When we play PAYDAY 2, we often see some armors being completely useless, or some completely OP, simply due to a bad stat tweaking. With this stat tweak, you may get some love back for some forgotten armors like the Flack Jacket.



Credits to :
- hejoro for its localization text script
- v00d00, 90e, gir489 and 420MuNkEy for the Lua sources



Recommended mods:
- DMCWO (a weapon overhaul mod): http://steamcommunity.com/groups/DMCWpnOverhaul



What to persistscript ?
- default_upgrades.lua to activate the ammo bonus/malus

What to postrequire ?
- playerdamage.lua to lib/units/beings/player/playerdamage
- upgradestweakdata.lua to lib/tweak_data/upgradestweakdata
- blackmarketgui.lua to lib/managers/menu/blackmarketgui
- armortext.lua to lib/managers/localizationmanager

Note: if you already use DMCWO (or another mod touching to localizationmanager), put the content of the method (all the armortext[...] = ...) into the corresponding script (in realnames.lua for DMCWO e.g.) and rename the armortext accordingly.
armortext.lua is here to fill in the new stat names in the blackmarket. Those two scripts are optional, but recommended.