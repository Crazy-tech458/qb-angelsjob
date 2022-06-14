local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = false

-- target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("VunicornDuty", vector3(314.96, 214.57, 104.37), 1.0, 1.2, {
		name = "VunicornDuty",
		heading = 339,
		debugPoly = true,
		minZ=100.0,
		maxZ=105.0,
	}, {
		options = {
		    {  
			event = "qb-angelsjob:DutyB",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "da",
		    },
		},
		distance = 1.5
	})

		exports['qb-target']:AddBoxZone("drinkstable1", vector3(333.18, 242.22, 104.37), 4.4, 5.0, {
			name = "drinkstable1", 
			heading = 340,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table1",
				icon = "far fa-clipboard",
				label = "Table 1",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable2", vector3(332.31, 247.99, 104.37), 3.4, 5.0, {
			name = "drinkstable2", 
			heading = 340,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table2",
				icon = "far fa-clipboard",
				label = "Table 2",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable3", vector3(310.93, 250.0, 104.37), 3.8, 5.0, {
			name = "drinkstable3", 
			heading = 340,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table3",
				icon = "far fa-clipboard",
				label = "Table 3",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable4", vector3(313.61, 254.03, 104.37),2.0,  1.0, {
			name = "drinkstable4", 
			heading = 71,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table4",
				icon = "far fa-clipboard",
				label = "Table 4",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable5", vector3(310.61, 244.29, 104.37), 1.8,  1.0, {
			name = "drinkstable5", 
			heading = 343,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table5",
				icon = "far fa-clipboard",
				label = "Table 5",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable6", vector3(312.31, 243.85, 104.37), 2.2,  1.0, {
			name = "drinkstable56", 
			heading = 340,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table6",
				icon = "far fa-clipboard",
				label = "Table 6",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable7", vector3(313.63, 243.09, 104.37),2.0,  1.0, {
			name = "drinkstable7", 
			heading = 342,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table7",
				icon = "far fa-clipboard",
				label = "Table 7",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable8", vector3(315.08, 242.49, 104.37), 2.8,  1.0, {
			name = "drinkstable8", 
			heading = 340,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table8",
				icon = "far fa-clipboard",
				label = "Table 8",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable9", vector3(325.59, 231.56, 104.37), 3.8,  4.0, {
			name = "drinkstable9", 
			heading = 160,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table9",
				icon = "far fa-clipboard",
				label = "Table 9",
			    },
			},
			distance = 2.0
		}) 


        exports['qb-target']:AddBoxZone("drinkstable10", vector3(323.41, 226.23, 104.37), 4.6,  4.0, {
			name = "drinkstable10", 
			heading = 70,
			debugPoly = true,
			minZ=100,
			maxZ=105.38,
		}, {
			options = {
			    {
				event = "qb-angelsjob:Table10",
				icon = "far fa-clipboard",
				label = "Table 10",
			    },
			},
			distance = 2.0
		}) 



	exports['qb-target']:AddBoxZone("vhomebrewed", vector3(312.49, 228.74, 104.37), 1.5,  2.0, {
	    name="vhomebrewed",
	    heading=342,
	    debugPoly=true,
	    minZ=100,
	    maxZ=105.38,
	    }, {
		options = {
		    {
			event = "qb-menu:Homebrewed",
			icon = "fas fa-cocktail",
			label = "Original Cocktails",
			job = "da",
		    },
		},
		distance = 1.5
	    })


         exports['qb-target']:AddBoxZone("vordermenu", vector3(313.61, 209.17, 104.37), 2.6,  1.0, {
            name="vordermenu",
            heading=69,
            debugPoly=true,
            minZ=100,
            maxZ=105,
        }, {
                options = {
                    {
                        event = "qb-menu:OrderMenu",
                        icon = "fas fa-laptop",
                        label = "Order Ingredients!",
                       job = "da",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("vunicornstorage", vector3(312.2, 232.63, 104.37), 7.4,  1.0, {
            name="Dangelsstorage",
            heading=340,
            debugPoly=true,
            minZ=100,
			maxZ=105,
        }, {
                options = {
                    {
                        event = "qb-angelsjob:Storage",
                        icon = "fas fa-box",
                        label = "Storage",
                       job = "da",
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("classicmenu", vector3(311.2, 233.8, 104.37), 1.4, 1.0, {
            name="classicmenu",
            heading=250,
            debugPoly=true,
            minZ=100,
            maxZ=105,
        }, {
                options = {
                    {
                        event = "qb-menu:V-Classics",
                        icon = "fas fa-cocktail",
                        label = "Classic Cocktails",
                       job = "da",
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("vunicorn_register", vector3(311.43, 227.47, 104.37), 1.0, 1.0, {
            name="vunicorn_register",
            debugPoly=true,
            heading=34,
            minZ=100,
            maxZ=105.38,
        }, {
                options = {
                    {
                        event = "qb-angelsjob:bill",
                        parms = "1",
                        icon = "fas fa-credit-card",
                        label = "Charge Customer",
                       job = "da",
                    },
                },
                distance = 1.5
            })

end)


-- QB-MENU --

RegisterNetEvent('qb-menu:V-Classics', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Classic Cocktails |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Espresso Martini",
            txt = "Vodka, Coffee",
            params = {
                event = "qb-angelsjob:MakeEspressoMartini"
            }
        },
        {
            
            header = "• Margarita",
            txt = "Tequila, Syrup, Fruit Mix",
            params = {
                event = "qb-angelsjob:MakeMargarita"
            }
        },
        {
            
            header = "• Manhattan",
            txt = "Whiskey, Syrup",
            params = {
                event = "qb-angelsjob:MakeManhattan"
            }
        },
        {
            
            header = "• Old Fashioned",
            txt = "Whiskey, Syrup",
            params = {
                event = "qb-angelsjob:MakeOldFashioned"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)


RegisterNetEvent('qb-menu:OrderMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Fridge |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Order Items",
            txt = "Order New Ingredients!",
            params = {
                event = "qb-angelsjob:shop"
            }
        },
        {
           
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-angelsjob:Storage2"
            }
        },
        {
            
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

RegisterNetEvent('qb-menu:Homebrewed', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "| Original Cocktails |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Sparkles",
            txt = "Vodka, Syrup, Fruit",
            params = {
                event = "qb-angelsjob:MakeSparkles"
            }
        },
        {
            
            header = "• Unicorn",
            txt = "Whiskey, Syrup, Fruit",
            params = {
                event = "qb-angelsjob:MakeUnicorn"
            }
        },
        {
            
            header = "• Dancerz",
            txt = "Beer, Vodka Bitter",
            params = {
                event = "qb-angelsjob:MakeDancerz"
            }
        },
        {
            
            header = "• Hulk",
            txt = "Whiskey, Syrup, Vodka",
            params = {
                event = "qb-angelsjob:MakeHulk"
            }
        },
        {
            
            header = "• Class Non Alc",
            txt = "Fruit, Syrup, Coffee",
            params = {
                event = "qb-angelsjob:MakeClass"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)


-- Till Stuff --
RegisterNetEvent("qb-angelsjob:bill")
AddEventHandler("qb-angelsjob:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-angelsjob:bill:player", bill.citizenid, bill.billprice)
    end
end)

local model = GetHashKey('prop_fib_clipboard')

Citizen.CreateThread(function()
    -- Clipboard
    RequestModel(model)

    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    _clipboard = CreateObject(model, 315.22, 214.47, 104.37, false, false, true)
    SetEntityHeading(_clipboard, 255.64)
    SetModelAsNoLongerNeeded(model)
end)