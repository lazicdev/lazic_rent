fx_version 'adamant'

game 'gta5'

description 'Lazic Rent A Car'
lua54 'yes'
version '1.0.2'
legacyversion '1.9.1'

server_script {
	'server/*.lua'
}	

client_script {
	'client/*.lua'
}

shared_scripts {
	'config.lua',
	'@es_extended/imports.lua',
	'@ox_lib/init.lua'
}