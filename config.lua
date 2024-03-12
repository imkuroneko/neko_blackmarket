Config = {}

-- Coordenadas donde estará el ped en cada reinicio <3
Config.Locations = {
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
    vector4(-279.14, 2206.02, 129.85 - 1.00, 67.35),
}

Config.blip = {
    show    = false,                     -- mostrar o no blip
    sprite  = 303,                       -- icono
    display = 6,                         -- como mostrar en el mapa (6 = )
    scale   = 0.85,                      -- tamaño
    colour  = 40,                        -- color
    name    = "BlackMarket Dealer"       -- nombre
}

Config.ped = {
    hash = 0xAA82FF9B,
    model = "a_m_y_epsilon_02",
}

Config.MainMenu = {
    label = 'Abrir Menú',
    icon  = 'fa-solid fa-person-rifle'
}

Config.Header = {
    label = 'Mercado Miau-gro',
    icon  = 'fa-solid fa-shield-cat'
}

Config.Categories = {
    ['pistols'] = {
        label = "Pistolas",
        icon  = "fa-solid fa-gun",
        items = {
            { name = "weapon_pistol",            currency = 'black_money',  price = 3000 },
            { name = "weapon_pistol_mk2",        currency = 'black_money',  price = 1600 },
            { name = "weapon_heavypistol",       currency = 'black_money',  price = 3000 },
            { name = "weapon_marksmanpistol",    currency = 'black_money',  price = 5000 },
            { name = "weapon_snspistol_mk2",     currency = 'black_money',  price = 5000 },
            { name = "weapon_navyrevolver",      currency = 'black_money',  price = 5000 },
        }
    },
    ['machineguns'] = {
        label = "Subfusiles",
        icon  = "fa-solid fa-gun",
        items = {
            { name = "weapon_microsmg",          currency = 'black_money',  price = 5000 },
            { name = "weapon_smg_mk2",           currency = 'black_money',  price = 6000 },
            { name = "weapon_assaultsmg",        currency = 'black_money',  price = 6500 },
            { name = "weapon_combatpdw",         currency = 'black_money',  price = 6000 },
            { name = "weapon_machinepistol",     currency = 'black_money',  price = 5000 },
            { name = "weapon_minismg",           currency = 'black_money',  price = 5000 },
        }
    },
    ['shotguns'] = {
        label = "Escopetas",
        icon  = "fa-solid fa-gun",
        items = {
            { name = "weapon_pumpshotgun",       currency = 'black_money',  price = 12000 },
            { name = "weapon_sawnoffshotgun",    currency = 'black_money',  price = 8000  },
            { name = "weapon_bullpupshotgun",    currency = 'black_money',  price = 12500 },
            { name = "weapon_dbshotgun",         currency = 'black_money',  price = 13000 },
            { name = "weapon_heavyshotgun",      currency = 'black_money',  price = 15000 },
            { name = "weapon_pumpshotgun_mk2",   currency = 'black_money',  price = 10000 },
        }
    },
    ['assaultguns'] = {
        label = "Rifles de asalto",
        icon  = "fa-solid fa-gun",
        items = {
            { name = "weapon_assaultrifle",      currency = 'black_money',  price = 26000 },
            { name = "weapon_assaultrifle_mk2",  currency = 'black_money',  price = 30000 },
            { name = "weapon_carbinerifle_mk2",  currency = 'black_money',  price = 42000 },
            { name = "weapon_compactrifle",      currency = 'black_money',  price = 28500 },
            { name = "weapon_advancedrifle",     currency = 'black_money',  price = 32000 },
            { name = "weapon_bullpuprifle_mk2",  currency = 'black_money',  price = 36000 },
        }
    },
    ['misc'] = {
        label = "Artículos varios",
        icon  = "fa-solid fa-icons",
        items = {
            { name = "armor",                    currency = 'black_money',  price = 10000  },
            { name = "heavyarmor",               currency = 'black_money',  price = 15000  },
            { name = "labkey",                   currency = 'black_money',  price = 30000  },
            { name = "trojan_usb",               currency = 'black_money',  price = 75000  },
            { name = "thermite",                 currency = 'black_money',  price = 200000 },
            { name = "drill",                    currency = 'black_money',  price = 175000 },
            { name = "advancedlockpick",         currency = 'black_money',  price = 5000   },
            { name = "gatecrack",                currency = 'black_money',  price = 950000 },
            { name = "pistol_ammo",              currency = 'black_money',  price = 100    },
            { name = "rifle_ammo",               currency = 'black_money',  price = 1500   },
            { name = "smg_ammo",                 currency = 'black_money',  price = 1000   },
            { name = "shotgun_ammo",             currency = 'black_money',  price = 2000   },
        }
    }
}