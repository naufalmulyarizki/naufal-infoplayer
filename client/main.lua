if Config.FrameWork == 'esx' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.FrameWork == 'qbcore' then
    QBCore = exports['qb-core']:GetCoreObject()
end

if Config.FrameWork == 'esx' then
    RegisterCommand(Config.Command, function(src)
        local PlayerData = ESX.GetPlayerData()
        local money = ESX.GetAccount("money").money
        local bank = ESX.GetAccount("bank").money
        local black_money = ESX.GetAccount("black_money").money

        if Config.Context == 'qb-menu' then
            exports['qb-menu']:openMenu({
                {
                    header = 'First Name: ' ..PlayerData.firstName,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Last Name: ' ..PlayerData.lastName,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Identifier: ' ..PlayerData.identifier,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Gender: ' ..PlayerData.sex,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Birth: ' ..PlayerData.dateofbirth,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Job: ' ..PlayerData.job.label.. ' - ' ..PlayerData.job.grade_label,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Height: ' ..PlayerData.height,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Bank: $' ..ESX.Math.GroupDigits(bank),
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Money: $' ..ESX.Math.GroupDigits(money),
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Black Money: $' ..ESX.Math.GroupDigits(black_money),
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
            })
        elseif Config.Context == 'ox_lib' then
            local pinfo = {
                {
                    title = 'First Name: ' ..PlayerData.firstName,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Last Name: ' ..PlayerData.lastName,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Identifier: ' ..PlayerData.identifier,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Gender: ' ..PlayerData.sex,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Birth: ' ..PlayerData.dateofbirth,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Job: ' ..PlayerData.job.label.. ' - ' ..PlayerData.job.grade_label,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Height: ' ..PlayerData.height,
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Bank: $' ..ESX.Math.GroupDigits(bank),
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Money: $' ..ESX.Math.GroupDigits(money),
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
                {
                    title = 'Black Money: $' ..ESX.Math.GroupDigits(black_money),
                    icon = 'fas fa-clipboard',
                    readOnly = true,
                },
            }

            lib.registerContext({
                id = 'pinfoplayer',
                title = 'Information Player',
                options = pinfo
            })
             
            lib.showContext('pinfoplayer')
        end
    end)
    RegisterKeyMapping("pinfo", "Information Player", "keyboard", Config.Key)
elseif Config.FrameWork == 'qb-core' then
    RegisterCommand(Config.Command, function(src)
        local PlayerData = QBCore.Functions.GetPlayerData() 
        local money = PlayerData.money['cash']
        local bank = PlayerData.money['bank']

        if Config.Context == 'qb-menu' then
            exports['qb-menu']:openMenu({
                {
                    header = 'Nama Lengkap: ' ..PlayerData.name,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'First Name: ' ..PlayerData.charinfo.firstname,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Last Name: ' ..PlayerData.charinfo.lastname,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Citizen id: ' ..PlayerData.citizenid,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Licence: ' ..PlayerData.license,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Gender: ' ..PlayerData.charinfo.gender,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Birth: ' ..PlayerData.charinfo.birthdate,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Job: ' ..PlayerData.job.label.. ' - ' ..PlayerData.job.grade.name,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Job Boss: ' ..PlayerData.job.isboss,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Gang: ' ..PlayerData.gang.label.. ' - ' ..PlayerData.gang.grade.name,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Nationality: ' ..PlayerData.charinfo.nationality,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Number Phone : ' ..PlayerData.charinfo.phone,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Bank: $' ..ESX.Math.GroupDigits(bank),
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Money: $' ..ESX.Math.GroupDigits(money),
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
            })
        elseif Config.Context == 'ox_lib' then
            local pinfo = {
                {
                    header = 'Nama Lengkap: ' ..PlayerData.name,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'First Name: ' ..PlayerData.charinfo.firstname,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Last Name: ' ..PlayerData.charinfo.lastname,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Citizen id: ' ..PlayerData.citizenid,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },

                {
                    header = 'Licence: ' ..PlayerData.license,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Gender: ' ..PlayerData.charinfo.gender,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Birth: ' ..PlayerData.charinfo.birthdate,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Job: ' ..PlayerData.job.label.. ' - ' ..PlayerData.job.grade.name,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Job Boss: ' ..PlayerData.job.isboss,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Gang: ' ..PlayerData.gang.label.. ' - ' ..PlayerData.gang.grade.name,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Nationality: ' ..PlayerData.charinfo.nationality,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Number Phone : ' ..PlayerData.charinfo.phone,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Bank: $' ..bank,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
                {
                    header = 'Money: $' ..money,
                    icon = 'fas fa-clipboard',
                    isMenuHeader = true,
                },
            }

            lib.registerContext({
                id = 'pinfoplayer',
                title = 'Information Player',
                options = pinfo
            })
             
            lib.showContext('pinfoplayer')
        end
    end)
    RegisterKeyMapping("pinfo", "Information Player", "keyboard", Config.Key)
end