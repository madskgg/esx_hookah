Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.ShishaMoney                = 20
Config.SmokeSize                  = 0.9
Config.ShishaHangTime             = 2800

Config.Blips = {
    
    Blip = {
      Pos     = { x = 53.15, y = -801.23, z = 31.54 },
      Sprite  = 459,
      Display = 4,
      Scale   = 0.8,
      Colour  = 0,
    },
}

Config.Zones = {

    Fridge = {
        Pos   = { x = 51.61, y = -812.58, z = 30.6 },
        Size  = { x = 1.25, y = 1.25, z = 1.25 },
        Color = { r = 240, g = 180, b = 0 },
        Name  = "Stock",
        Type  = 27
    }, 

    BossActions = {
        Pos   = { x = 50.06, y = -811.95, z = 30.6 },
        Size  = { x = 1.25, y = 1.25, z = 1.25 },
        Color = { r = 0, g = 100, b = 0 },
        Name  = "Boss Menu",
        Type  = 27
    },
    
    Hookah = {
        Pos   = { x = 48.5, y = -811.34, z = 30.6 },
        Size  = { x = 1.25, y = 1.25, z = 1.25  },
        Color = { r = 55, g = 100, b = 245 },
        Type  = 27,
        Items = {
            { name = 'cocacola',      label = _U('cocacola'),   price = 2 },
            { name = 'fanta',      label = _U('fanta'),   price = 2 },
            { name = 'sprite',       label = _U('sprite'),    price = 2 },
            { name = 'soda',     label = _U('soda'),  price = 2 },
            { name = 'water',     label = _U('water'),  price = 2 },
            { name = 'fistikia',     label = _U('fistikia'),  price = 2 },
            { name = 'clubsandwich',     label = _U('clubsandwich'),  price = 2 },
            { name = 'sandwich',     label = _U('sandwich'),  price = 2 },
            { name = 'croissant',     label = _U('croissant'),  price = 2 }
        },
    },

}

Config.VehicleModel = "bison"

Config.VehicleX = 61.85
Config.VehicleY = -800.59
Config.VehicleZ = 31.56