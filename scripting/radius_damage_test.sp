/**
 * Sourcemod 1.7 Plugin Template
 */
#pragma semicolon 1
#include <sourcemod>

#pragma newdecls required

#include <tf_radius_damage>

#define PLUGIN_VERSION "0.0.0"
public Plugin myinfo = {
	name = "Plugin name!",
	author = "Author!",
	description = "Description!",
	version = PLUGIN_VERSION,
	url = "localhost"
}

public void OnPluginStart() {

}

public void OnMapStart() {
	CTFRadiusDamageInfo radiusDamage = new CTFRadiusDamageInfo(null, NULL_VECTOR, 300.0);
}
