name = ""
author = ""
version = "0.0.0"
description = "version: "..version
api_version = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"

dst_compatible = true
all_clients_require_mod = true
--client_only_mod = true
--dont_starve_compatible = true
--reign_of_giants_compatible = true
--shipwrecked_compatible = true
--forge_compatible = true
--gorge_compatible = true

configuration_options = 
{
	{
		name = "lan",
		label = "Language/语言设置",
		hover = "",
		options =	
		{
			{description = "English", data = "en"},
			{description = "中文", data = "cn"},
		},
		default = "en",
	},
}