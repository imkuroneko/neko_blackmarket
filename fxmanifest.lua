fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'KuroNeko'
description 'BlackMarket para QBCore'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'qb-target',
    'ox_inventory'
}