RegisterNUICallback("dataPost", function(data, cb)
    SetNuiFocus(false)
    TriggerEvent(data.event, data.args)
    cb('ok')
end)

RegisterNUICallback("cancel", function()
    SetNuiFocus(false)
end)


RegisterNetEvent('nh-context:sendMenu', function(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = data
    })
end)

-- RegisterCommand("test", function(source, args, raw)
--     TriggerEvent("nh-context:testMenu")
-- end)

-- RegisterNetEvent('nh-context:testMenu', function()
--     TriggerEvent('nh-context:sendMenu', {
--         {
--             id = 1,
--             header = "Main Title",
--             txt = ""
--         },
--         {
--             id = 2,
--             header = "Sub Menu Button",
--             txt = "This goes to a sub menu",
--             params = {
--                 event = "nh-context:testMenu2",
--                 args = {
--                     number = 1,
--                     id = 2
--                 }
--             }
--         },
--     })
-- end)

-- RegisterNetEvent('nh-context:testMenu2', function(data)
--     local id = data.id
--     local number = data.number
--     TriggerEvent('nh-context:sendMenu', {
--         {
--             id = 1,
--             header = "< Go Back",
--             txt = "",
--             params = {
--                 event = "nh-context:testMenu"
--             }
--         },
--         {
--             id = 2,
--             header = "Number: "..number,
--             txt = "ID: "..id
--         },
--     })
-- end)
