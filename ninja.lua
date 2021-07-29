getgenv().AutoTap = false;

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Main")

local a = w:CreateFolder("Farm")



a:Toggle("AutoSword",function(bool)
    getgenv().autoTap = bool
    print('Auto Clicker esta ', bool);
    if bool then
        doTap();
    end
end)

a:Toggle("AutoSword",function(bool)
    getgenv().autoTap = bool
    print('Auto Clicker esta ', bool);
    if bool then
        doTap();
    end
end)


function doTap()
    spawn(function()
        while getgenv().autoTap == true do
            local args = {[1] = "swingKatana"} 

            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait()
        end
        
    end)

    
end