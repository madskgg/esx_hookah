ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_phone:registerNumber', 'hookah', _U('hookah_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'hookah', 'hookah', 'society_hookah', 'society_hookah', 'society_hookah', {type = 'private'})

RegisterServerEvent('esx_hookah:getStockItem')
AddEventHandler('esx_hookah:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_hookah', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_hookah:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_hookah', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_hookah:putStockItems')
AddEventHandler('esx_hookah:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_hookah', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

RegisterServerEvent('esx_hookah:getFridgeStockItem')
AddEventHandler('esx_hookah:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_hookah_fridge', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_hookah:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_hookah_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_hookah:putFridgeStockItems')
AddEventHandler('esx_hookah:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_hookah_fridge', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

RegisterServerEvent('esx_hookah:buyItem')
AddEventHandler('esx_hookah:buyItem', function(itemName, price, itemLabel)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local limit = xPlayer.getInventoryItem(itemName).limit
    local qtty = xPlayer.getInventoryItem(itemName).count
    local societyAccount = nil

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_hookah', function(account)
        societyAccount = account
      end)
    
    if societyAccount ~= nil and societyAccount.money >= price then
        if qtty < limit then
            societyAccount.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        else
            TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('not_enough_fric'))
    end

end)

ESX.RegisterServerCallback('esx_hookah:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)

RegisterNetEvent("shisha:pay")
AddEventHandler("shisha:pay", function(entity)
  local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

local societyAccount

		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_hookah', function(account)
			societyAccount = account
		end)
    xPlayer.removeMoney(Config.ShishaMoney)
    societyAccount.addMoney(Config.ShishaMoney)
    
end)

RegisterServerEvent("eff_smokes")
AddEventHandler("eff_smokes", function(entity)
	TriggerClientEvent("c_eff_smokes", -1, entity)
end)