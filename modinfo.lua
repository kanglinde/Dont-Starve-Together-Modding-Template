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

local function AddOption(des, data)
	return { description = des or "", data = data or "" }
end

local function AddNumOptions(min, max, step)
	step = step or 1
	local options = {}
	local iter = min
	while iter <= max do
		options[iter-min+1] = AddOption(iter, iter)
		iter = iter + 1
	end
	return options
end

local function AddTitle(label)
	return { name = "", label = label or "", options = {AddOption()}, default = "" }
end

local function AddSwitch()
	return { AddOption("On", true), AddOption("Off", false) }
end

configuration_options = 
{
	{
		name = "lan",
		label = "Language/语言设置",
		hover = "",
		options =	
		{
			AddOption("English", "en"),
			AddOption("中文", "zh"),
		},
		default = "en",
	},
}