# qb-angelsjob
CREDIT : oosayeroo for the original public script. 

This job is based off oosayeroo script for the vanilla Unicorn job using Gabz MLO

This job requires a mlo screenshots to the one i used here:

https://imgur.com/a/jCpWIi3
https://imgur.com/J2gF9CJ

The steps are similar to the orginal script however the following will need to be placed instead of the original

qb-core > shared > jobs.lua

    ['da'] = {
	label = 'Dirty Angels',
	defaultDuty = true,
	grades = {
		['0'] = {
			name = 'Trainee',
			payment = 5
		},
		['1'] = {
			name = 'Dancer',
			payment = 0
		},
		['2'] = {
			name = 'Employee',
			payment = 50
		},
        ['3'] = {
			name = 'Bouncer',
			payment = 55
		},
        ['4'] = {
			name = 'Management',
			isboss = true,
			payment = 60
		},
        ['5'] = {
			name = 'CEO/Owner',
			isboss = true,
			payment = 100
		},
	},
},

qb-mangagement > client > cl_config.lua

    ['da'] = {
       vector3(313.02, 206.4, 104.37),
    },
    

qb-target > init.lua

	-- Dirty Angels Start
	["da"] = {
			models = {
				"s_m_m_bouncer_01"
			},
			options = {
				{
					type = "client",
					event = "garage:D-AngelsGarage",
					icon = "fas fa-car",
					label = "Dirty Angels Garage",
					job = "da",
				}
			},
			distance = 2.5,
		},
	-- Dirty Angels End
