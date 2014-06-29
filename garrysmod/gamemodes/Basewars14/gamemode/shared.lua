DeriveGamemode("sandbox")
GM.Name 	= "Basewars 14"
BuildNumber = "Basewars Public Release - 27/3/2014"

team.SetUp( 1, "Citizen", Color( 130, 130, 130, 255 ) )

/*----------------------------------------------------------------

WARNING: CRAPPY CODE AHEAD

Edit this file to create or remove items from the basewars shop, this works in a somewhat similar way to oldschool DarkRP

Basic Format:

WeaponTable = {}                                                                                                    -- the name of the table defines different categories, remember to add a button to select new categories in cl_buymenu.lua

WeaponTable["item_p226"] = {                                                                                        -- call this whatever you want, just keep the name related to your item to prevent headaches when editing later
    Name = "Sig Sauer P226",                                                                                        -- the name of your item as it will appear in the store
    Description = "A modest sideram to suit a modest budget, it can still be deadly in the right hands",            -- the description of your item as it will appear in the store
    Model = "models/weapons/w_pist_p228.mdl",                                                                       -- the model that will be used as the preview image of your item
    Entname = "fas2_p226",                                                                                          -- the lua name of the weapon/item to spawn, leave this blank if the item in question runs a special function rather than spawning something
    Price = 400,                                                                                                    -- how much this item costs
    BuyFunction =                                                                                                   -- what to do when somebody purchases this item
        function(ply,item)
        ply:GenericBuySwep()
        end,
}

-----------------------------------------------------------------*/


BuyRefTable = {}

/*-----------------------------------------
Buyable Guns
-----------------------------------------*/


WeaponTable = {}

WeaponTable["item_p226"] = { 
    Name = "Sig Sauer P226",
    Description = "A modest sideram to suit a modest budget, it can still be deadly in the right hands",
    Model = "models/weapons/w_pist_p228.mdl",
    Entname = "fas2_p226",
    Price = 300,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_glock20"] = { 
    Name = "Glock 20",
    Description = "Glocks are a popular sidearm for police and miltary forces",
    Model = "models/weapons/w_pist_glock18.mdl",
    Entname = "fas2_glock20",
    Price = 400,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_mac11"] = { 
    Name = "MAC 11",
    Description = "A 9mm machine pistol, it may be cheap and nasty but it can still be deadly at close range",
    Model = "models/weapons/w_smg_mac10.mdl",
    Entname = "fas2_mac11",
    Price = 750,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_deagle"] = { 
    Name = "IMI Desert Eagle",
    Description = "A .50 caliber handgun optimized to deliver the maximum amount of freedom and democracy per shot",
    Model = "models/weapons/w_pist_deagle.mdl",
    Entname = "fas2_deagle",
    Price = 850,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_pernach"] = { 
    Name = "OTS-33 Pernach",
    Description = "A machine pistol chambered in 9x18mm makarov, because apparently the russians have a lot of old surplus rounds to chew through",
    Model = "models/weapons/world/pistols/ots33.mdl",
    Entname = "fas2_ots33",
    Price = 600,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_ragingbull"] = { 
    Name = "Taurus Raging Bull",
    Description = "The latest winner in the great pissing match to see who can pack the largest caliber bullet into a handgun",
    Model = "models/weapons/w_357.mdl",
    Entname = "fas2_ragingbull",
    Price = 950,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_mp5"] = { 
    Name = "HK MP5",
    Description = "A widely used 9mm SMG produced by Heckler and Koch",
    Model = "models/weapons/w_mp5.mdl",
    Entname = "fas2_mp5a5",
    Price = 1500,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_uzi"] = { 
    Name = "IMI Uzi",
    Description = "A 9mm machine pistol that can be fitted with a stock for extra precision",
    Model = "models/weapons/w_alyx_gun.mdl",
    Entname = "fas2_uzi",
    Price = 1400,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_bizon"] = { 
    Name = "PP19 Bizon",
    Description = "A russian SMG that uses a special helical magazine to achieve massive clip capacity",
    Model = "models/weapons/w_smg_biz.mdl",
    Entname = "fas2_pp19",
    Price = 1800,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_m3"] = { 
    Name = "M3 Super 90",
    Description = "A tactical assault shotgun that can be fired in full auto mode",
    Model = "models/weapons/w_shot_m3super90.mdl",
    Entname = "fas2_m3s90",
    Price = 2850,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_rem870"] = { 
    Name = "Remington 870",
    Description = "A powerful 12 guage pump action shotgun",
    Model = "models/weapons/w_shotgun.mdl",
    Entname = "fas2_rem870",
    Price = 2250,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_ak74"] = { 
    Name = "AK 74",
    Description = "A powerful russian assault rifle used by terrorists and private militias worldwide",
    Model = "models/weapons/w_rif_ak47.mdl",
    Entname = "fas2_ak74",
    Price = 2800,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_g3"] = { 
    Name = "HK G3A3",
    Description = "A large bore battle rifle produced by Heckler and Koch",
    Model = "models/weapons/w_g3a3.mdl",
    Entname = "fas2_g3",
    Price = 3200,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_g36c"] = { 
    Name = "HK G36C",
    Description = "Check out all that black polymer, seriously you'll look like a total badass holding this thing",
    Model = "models/weapons/w_g36e.mdl",
    Entname = "fas2_g36c",
    Price = 2650,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_famas"] = { 
    Name = "FAMAS F1",
    Description = "Some say you can't trust a rifle that was built by baguette eating surrender monkeys, others let a hail of lead do the talking for them",
    Model = "models/weapons/w_famas.mdl",
    Entname = "fas2_famas",
    Price = 2700,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_m4"] = { 
    Name = "M4A1",
    Description = "An assault carbine produced by colt, this one has beed modded with increased fire rate and a built in foregrip",
    Model = "models/weapons/w_m4.mdl",
    Entname = "fas2_m4a1",
    Price = 3000,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_rpk"] = { 
    Name = "RPK 47",
    Description = "A powerful russian LMG based on the AK 47",
    Model = "models/weapons/w_ak47.mdl",
    Entname = "fas2_rpk",
    Price = 3400,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_sks"] = { 
    Name = "SKS Carbine",
    Description = "It may not be much to write home about by itself but its large range of upgrades can give it the decisive edge in combat",
    Model = "models/weapons/world/rifles/sks.mdl",
    Entname = "fas2_sks",
    Price = 2350,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_ks23"] = { 
    Name = "KS 23",
    Description = "A short barreled pump shotgun loaded with slugs powerful enough to splatter an unarmored target in a single shot",
    Model = "models/weapons/world/shotguns/ks23.mdl",
    Entname = "fas2_ks23",
    Price = 2550,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_m24"] = { 
    Name = "M24",
    Description = "A versatile bolt action sniper rifle",
    Model = "models/weapons/w_m24.mdl",
    Entname = "fas2_m24",
    Price = 2400,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_m21"] = { 
    Name = "M21 SWS",
    Description = "The obligatory autosniper, just scope 'n spray.  Can be upgraded with 20 round clips for even more win",
    Model = "models/weapons/w_m14.mdl",
    Entname = "fas2_m21",
    Price = 3600,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_sr25"] = { 
    Name = "SR25",
    Description = "A built in bipod gives this autosniper great precision, perfect for wiping the stupid look off your enemies face from the other side of the map",
    Model = "models/weapons/w_sr25.mdl",
    Entname = "fas2_sr25",
    Price = 3800,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

WeaponTable["item_m82"] = { 
    Name = "Barrett M82",
    Description = "Chambered in the massive .50BMG round, anything put down by this rifle stays down",
    Model = "models/weapons/w_m82.mdl",
    Entname = "fas2_m82",
    Price = 6000,
    BuyFunction = 
        function(ply,item)
        local wep = WeaponTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}


/*-----------------------------------------
Buyable Drugs
-----------------------------------------*/

DrugTable = {}

DrugTable["item_djump"] = { 
    Name = "Double Jump",
    Description = "Allows you to perform a second jump in midair",
    Model = "models/props_lab/jar01b.mdl",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 100)
            trace.filter = ply
            local tr = util.TraceLine( trace )
            local upvector = Vector(0,0,10)

            local Drug = ents.Create("durgz_djump")
            Drug:SetPos(tr.HitPos + upvector)
            Drug:Spawn()
            Drug:Activate()
        end,
}

DrugTable["item_adrenaline"] = { 
    Name = "Adrenaline",
    Description = "Increases your sprint speed",
    Model = "models/props_lab/jar01b.mdl",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 100)
            trace.filter = ply
            local tr = util.TraceLine( trace )
            local upvector = Vector(0,0,10)

            local Drug = ents.Create("durgz_adrenaline")
            Drug:SetPos(tr.HitPos + upvector)
            Drug:Spawn()
            Drug:Activate()
        end,
}

DrugTable["item_regen"] = { 
    Name = "Regeneration",
    Description = "You steadily regenerate health while under the effect of this drug",
    Model = "models/props_lab/jar01b.mdl",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 100)
            trace.filter = ply
            local tr = util.TraceLine( trace )
            local upvector = Vector(0,0,10)

            local Drug = ents.Create("durgz_regen")
            Drug:SetPos(tr.HitPos + upvector)
            Drug:Spawn()
            Drug:Activate()
        end,
}

DrugTable["item_leech"] = { 
    Name = "Life Leech",
    Description = "Gives you the power to absorb 20% of all damage dealt as life force",
    Model = "models/props_lab/jar01b.mdl",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 100)
            trace.filter = ply
            local tr = util.TraceLine( trace )
            local upvector = Vector(0,0,10)

            local Drug = ents.Create("durgz_lifeleech")
            Drug:SetPos(tr.HitPos + upvector)
            Drug:Spawn()
            Drug:Activate()
        end,
}


/*-----------------------------------------
Buyable Structures
-----------------------------------------*/


StrucTable = {} 

StrucTable["item_smallgen"] = { 
    Name = "Small Generator",
    Description = "A cheap, compact generator with a relatively low power output",
    Model = "models/props/de_train/acunit2.mdl",
    Price = 500,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("small_generator")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_turbgen"] = { 
    Name = "Turbine Generator",
    Description = "A gas turbine generator that generates a decent amount of juice",
    Model = "models/props_wasteland/laundry_washer003.mdl",
    Price = 1200,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("turbine_generator")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_indusgen"] = { 
    Name = "Industrial Generator",
    Description = "A powerful 3-phase industrial generator, perfect for powering your experimental death machines",
    Model = "models/props/de_train/de_train_signalbox_01.mdl",
    Price = 2500,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("industrial_generator")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_dispenser"] = { 
    Name = "Ammo Dispenser",
    Description = "A portable fabricator that can create ammo for almost any gun",
    Model = "models/props_lab/reciever_cart.mdl",
    Price = 1600,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,40)

            local Struc = ents.Create("dispenser")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_spawn"] = { 
    Name = "Spawn Point",
    Description = "A special platform that turns death from a finality into a minor annoyance",
    Model = "models/props_trainstation/trainstation_clock001.mdl",
    Price = 800,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,1)

            local Struc = ents.Create("spawn_point")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_hydroponics"] = { 
    Name = "Hydroponics Rack",
    Description = "A self contained hydroponic farm that grows special weed used to produce combat drugs.  Remember to buy weed seeds from the utilities menu to keep that green stuff growing",
    Model = "models/props/de_nuke/equipment2.mdl",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("hydroponics")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_still"] = { 
    Name = "Moonshine Still",
    Description = "A moonshine still just like uncle jimbob used to make.  Produces moonshine which is used to create combat drugs",
    Model = "models/props/de_inferno/wine_barrel.mdl",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("moonshine_still")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_gunfactory"] = { 
    Name = "Gun Factory",
    Description = "An industrial grade robotic assembly suite intended for building unique weapons that aren't available on the black market",
    Model = "models/props/de_prodigy/transformer.mdl",
    Price = 5000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("gun_factory")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_drugrefinery"] = { 
    Name = "Drug Refinery",
    Description = "A fully featured chemical refining plant that can turn regular ingredients into powerful combat drugs or purify street drugs to turn a profit",
    Model = "models/props/de_train/processor.mdl",
    Price = 3000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("drug_refinery")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

StrucTable["item_druglab"] = { 
    Name = "Drug Lab",
    Description = "A specialized workbench that is geared towards producing experimental super drugs",
    Model = "models/props/cs_italy/it_mkt_table3.mdl",
    Price = 5000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("drug_lab")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

UtilTable = {}

UtilTable["item_armor"] = { 
    Name = "Kevlar Plate",
    Description = "Protects your squishy bits from incoming bullets",
    Model = "models/weapons/w_defuser.mdl",
    Price = 400,
    BuyFunction = 
        function(ply,item)
            local ArmorToGive = 50
            local MaxArmor = 100
            
            if ply:Armor() + ArmorToGive < MaxArmor then 
                ply:SetArmor(ply:Armor() + ArmorToGive)
            else
                ply:SetArmor(MaxArmor)
            end  
        end,
}

UtilTable["item_snipeshield"] = { 
    Name = "Anti-Snipe Shield",
    Description = "A one use item that will protect you from taking lethal damage but will be consumed in the process",
    Model = "models/props/cs_office/snowman_hat.mdl",
    Price = 450,
    BuyFunction = 
        function(ply,item)
            local ArmorToGive = 50
            local MaxArmor = 100
            
            if ply:Armor() + ArmorToGive < MaxArmor then 
                ply:SetArmor(ply:Armor() + ArmorToGive)
            else
                ply:SetArmor(MaxArmor)
            end  
        end,
}

UtilTable["item_defuser"] = { 
    Name = "Bomb Defuser",
    Description = "A tool that is used to quickly and efficiently defuse breaching charges and bigbombs",
    Model = "models/props_c17/tools_pliers01a.mdl",
    Entname = "weapon_defuser",
    Price = 750,
    BuyFunction = 
        function(ply,item)
        local wep = UtilTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

UtilTable["item_blowtorch"] = { 
    Name = "Blowtorch",
    Description = "A dual purpose cutting torch, it can be used to patch up holes in your base defenses or create new holes in other peoples bases",
    Model = "models/weapons/w_pistol.mdl",
    Entname = "weapon_blowtorch",
    Price = 1000,
    BuyFunction = 
        function(ply,item)
        local wep = UtilTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

UtilTable["item_bcharge"] = { 
    Name = "Breaching Charge",
    Description = "A shaped charge designed for opening doorways where there was none before",
    Model = "models/weapons/w_c4_planted.mdl",
    Entname = "weapon_bcharge",
    Price = 4000,
    BuyFunction = 
        function(ply,item)
        local wep = UtilTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

UtilTable["item_bigbomb"] = { 
    Name = "Big Bomb",
    Description = "The name ain't lying, this is a really freakin big bomb",
    Model = "models/props_c17/oildrum001.mdl",
    Entname = "weapon_bigbomb",
    Price = 100000,
    BuyFunction = 
        function(ply,item)
        local wep = UtilTable[item].Entname
        ply:Give( wep )
        ply:SelectWeapon( wep )
        end,
}

PrinterTable = {}

PrinterTable["item_printer_crappy"] = { 
    Name = "Crappy Money Printer",
    Description = "A money printer that you cobbled together out of some old rubbish you found in your garage",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 200,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_crappy")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_basic"] = { 
    Name = "Basic Money Printer",
    Description = "A bargain bin no-frills money printer",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 500,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_basic")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_improved"] = { 
    Name = "Improved Money Printer",
    Description = "A newer version of the basic printer with multiple design tweaks to make it print higher volumes of money",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 1500,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_improved")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_overclocked"] = { 
    Name = "Overclocked Money Printer",
    Description = "A money printer that has been tweaked to all fuck by some dodgy street scientists",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 5000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_overclocked")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_supercharged"] = { 
    Name = "Supercharged Money Printer",
    Description = "If you hooked wheels up to the motor on this thing you could probably win the gmod grand prix",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 20000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_supercharged")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_laser"] = { 
    Name = "Laser Money Printer",
    Description = "Ink is so last century! this printer uses high powered lasers to create cash more quickly and efficiently than a traditional printer ever could",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 100000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_laser")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_darkmatter"] = { 
    Name = "Dark Matter Money Printer",
    Description = "It doesnt bear thinking what the government would do if they knew we had our hands on this kind of technology",
    Model = "models/props_c17/consolebox01a.mdl",
    Price = 1000000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_darkmatter")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

PrinterTable["item_printer_nuclear"] = { 
    Name = "Nuclear Money Printer",
    Description = "Buyer beware: poorly shielded nuclear reactors are extremely easy to detect, everybody will know you have this printer if you buy it!",
    Model = "models/props/de_train/barrel.mdl",
    Price = 10000000,
    BuyFunction = 
        function(ply,item)
            local vStart = ply:GetShootPos()
            local vForward = ply:GetAimVector()
            local trace = {}
            trace.start = vStart
            trace.endpos = vStart + (vForward * 150)
            trace.filter = ply
            local tr = util.TraceLine( trace )

            local upvector = Vector(0,0,10)

            local Struc = ents.Create("printer_nuclear")
            Struc:SetPos(tr.HitPos + upvector)
            Struc:Spawn()
            Struc:Activate()
            Struc.Owner = ply
            Struc:SetBuyer(ply:Nick())
            Struc:SetAmount(Struc.MaxHealth)
        end,
}

function MakeBuyReference()
table.Merge(BuyRefTable,WeaponTable)
table.Merge(BuyRefTable,DrugTable)
table.Merge(BuyRefTable,StrucTable)
table.Merge(BuyRefTable,UtilTable)
table.Merge(BuyRefTable,PrinterTable)
end
hook.Add( "Initialize", "buyref_hook", MakeBuyReference )
concommand.Add("buymenu_refresh", MakeBuyReference)