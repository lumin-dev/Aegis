-- FOLDERS >
local Utility = script.Parent.Parent.Utility

-- DEPENDENCIES >
local Is = require(Utility.Is)
local Debugger = require(Utility.Debugger)
local Types = require(script.Parent.Parent.Types)

-- RETURNING >
return {
	KeyName = "Ref",
	ApplyKey = function(instance: Instance, value: any)
		if Is.AegisConstructor(value) == true and (value :: Types.Constructor).ConstructorClass == "state" then
			value:Set(instance)
		else
			Debugger.Warn("ServiceExpected", "state", typeof(value))
		end
	end,
}
