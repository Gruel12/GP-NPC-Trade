local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    RequestModel(`a_m_o_genstreet_01`)
      while not HasModelLoaded(`a_m_o_genstreet_01`) do
      Wait(1)
    end
      Scrapdealer = CreatePed(2, `a_m_o_genstreet_01`, 481.18, -591.21, 23.75, 299.77, true, true) -- change here the cords for the ped 
      SetPedFleeAttributes(Scrapdealer, 0, 0)
      SetPedDiesWhenInjured(Scrapdealer, false)
      TaskStartScenarioInPlace(Scrapdealer, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
      SetPedKeepTask(Scrapdealer, true)
      SetBlockingOfNonTemporaryEvents(Scrapdealer, true)
      SetEntityInvincible(Scrapdealer, true)
      FreezeEntityPosition(Scrapdealer, true)
  end)
  
  --- Target Stuff
  CreateThread(function()
      exports['qb-target']:AddTargetModel('a_m_o_genstreet_01', {
          options = {
              { 
                  type = "client",
                  event = "gp-tradenpc:client:start",
                  icon = "fas fa-circle",
                  label = "Trade 10 Scrap for 1 Weapon scrap",
              },
          },
          distance = 3.0 
      }))