local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("qb-angelsjob:bill:player")
AddEventHandler("qb-angelsjob:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'vunicorn' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientmargarita', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tequila = Ply.Functions.GetItemByName("tequila")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    local fruit = Ply.Functions.GetItemByName("fruit-mix")
    if tequila ~= nil and syrup ~= nil and fruit ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientOldFashioned', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local whiskey = Ply.Functions.GetItemByName("whiskey")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    local bitter = Ply.Functions.GetItemByName("v-bitter")
    if whiskey ~= nil and syrup ~= nil and bitter ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientManhattan', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local whiskey = Ply.Functions.GetItemByName("whiskey")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    if whiskey ~= nil and syrup ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientEspressoMartini', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local coffee = Ply.Functions.GetItemByName("coffee")
    local vodka = Ply.Functions.GetItemByName("vodka")
    if coffee ~= nil and vodka ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientSparkles', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local vodka = Ply.Functions.GetItemByName("vodka")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    local fruit = Ply.Functions.GetItemByName("fruit-mix")
    if vodka ~= nil and syrup ~= nil and fruit ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientUnicorn', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local whiskey = Ply.Functions.GetItemByName("whiskey")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    local fruit = Ply.Functions.GetItemByName("fruit-mix")
    if whiskey ~= nil and syrup ~= nil and fruit ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientDancerz', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local beer = Ply.Functions.GetItemByName("beer")
    local vodka = Ply.Functions.GetItemByName("vodka")
    local bitter = Ply.Functions.GetItemByName("v-bitter")
    if beer ~= nil and vodka ~= nil and bitter ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientHulk', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local whiskey = Ply.Functions.GetItemByName("whiskey")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    local vodka = Ply.Functions.GetItemByName("vodka")
    if whiskey ~= nil and syrup ~= nil and vodka ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-angelsjob:server:get:ingredientClass', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local fruit = Ply.Functions.GetItemByName("fruit-mix")
    local syrup = Ply.Functions.GetItemByName("v-sugar-syrup")
    local coffee = Ply.Functions.GetItemByName("coffee")
    if fruit ~= nil and syrup ~= nil and coffee ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem("v-shots-pack", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-angelsjob:v-shots-pack", source, item.name)
end)

QBCore.Functions.CreateUseableItem("vodka-crate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-angelsjob:vodka-crate", source, item.name)
end)

QBCore.Functions.CreateUseableItem("whiskey-box", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-angelsjob:whiskey-box", source, item.name)
end)

QBCore.Functions.CreateUseableItem("beer-crate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-angelsjob:beer-crate", source, item.name)
end)

QBCore.Functions.CreateUseableItem("fruit-box", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-angelsjob:fruit-box", source, item.name)
end)

QBCore.Functions.CreateUseableItem("tequila-crate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-angelsjob:tequila-crate", source, item.name)
end)
