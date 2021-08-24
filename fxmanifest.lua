fx_version 'cerulean'
game 'gta5'

shared_script "@qb-core/imports.lua"

client_scripts {
    "config.lua",
    "client.lua"
}

server_scripts {
    "config.lua",
    "server.lua"    
}

exports {
    'CheckCooldown'    
}
