Config = {}

Config.RentLicensePlate = 'RENT'
Config.Placanje = 'cash' -- cash or bank
Config.SpawnCheckRadius = 5.0

Config.Locations = {
    Grad = {
        RentCoords = vector3(110.51, -1090.61, 29.29),
        RentHeading = 127.55,
        RentMinz = 29.29,
        RentMaxz = 30.29,
        SpawnCoords = vector3(117.54, -1082.17, 28.57),
        SpawnHeading = 0.0,
        Blip = {x = 110.51, y = -1090.61, z = 28.29, title = "Rent A Car", colour = 2, id = 225}
    },
    Sandy = {
        RentCoords = vector3(1737.95, 3709.01, 34.20),
        RentHeading = 127.55,
        RentMinz = 34.20,
        RentMaxz = 35.20,
        SpawnCoords = vector3(1728.15, 3715.10, 33.54),
        SpawnHeading = 22.67,
        Blip = {x = 1737.95, y = 3709.01, z = 33.20, title = "Rent A Car", colour = 2, id = 225}
    },
    Paleto = {
        RentCoords = vector3(96.13, 6363.04, 31.36),
        RentHeading = 127.55,
        RentMinz = 31.36,
        RentMaxz = 32.36,
        SpawnCoords = vector3(94.94, 6372.73, 30.61),
        SpawnHeading = 11.33,
        Blip = {x = 96.13, y = 6363.04, z = 30.36, title = "Rent A Car", colour = 2, id = 225}
    }
}

Config.Vozila = {
    {
        name = 'futo',
        model = 'futo',
        label = 'Futo',
        cena = 500,
        icon = 'fas fa-car',
        image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456'
    },
    {
        name = 'sultan',
        model = 'sultan',
        label = 'Sultan',
        cena = 700,
        icon = 'fas fa-car',
        image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d'
    },
    {
        name = 'faggio',
        model = 'faggio',
        label = 'Faggio',
        cena = 300,
        icon = 'fas fa-motorcycle',
        image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c'
    }
}

Config.Pedovi = {
    {110.51, -1090.61, 29.29, 5.66, "a_m_y_eastsa_02"},
    {1737.95, 3709.01, 34.20, 22.67, "a_m_y_eastsa_02"},
    {96.13, 6363.04, 31.36, 22.67, "a_m_y_eastsa_02"},
}
