-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

nodecore.register_craft({
		label = "flint&steel",
		action = "pummel",
		wield = {name = "nc_stonework:chip"},
		indexkeys = {"group:chisel"},
		nodes = {
			{match = {groups = {chisel = true}}}
		},
		consumewield = 1,
		duration = 2,
		after = function(pos)
			return nodecore.firestick_spark_ignite(pos,true)
		end
	})
