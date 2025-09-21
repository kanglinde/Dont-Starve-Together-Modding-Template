name = (locale == "zh" or locale == "zhr") and "" or ""
author = "K"
version = "1.0.0"
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

priority = 0

local function AddNumOptions(min, max, step)
	step = step or 1
	local options = {}
	local iter = min
	while iter <= max do
		options[iter-min+1] = {description = iter, data = iter}
		iter = iter + 1
	end
	return options
end

local function AddTitle(label)
	return {name = "", label = label or "", options = {{description="", data=""}}, default = ""}
end

configuration_options = 
{
	{
		name = "lan",
		label = "Language/语言设置",
		hover = "",
		options =	
		{
			{description = "English", data = "en"},
			{description = "中文", data = "zh"},
		},
		default = "en",
	},
}