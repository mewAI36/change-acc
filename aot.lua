--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

repeat task.wait();until game:IsLoaded() local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2=getgenv().Config or {["Required Gems"]=1000000,["Check Delay"]=679 -(555 + 64) } ;local v3=tonumber(v2["Required Gems"]);local function v4() local v5=931 -(857 + 74) ;local v6;local v7;while true do if (v5==(1350 -(993 + 357))) then v6,v7=pcall(function() local v9=v1:WaitForChild("PlayerGui"):WaitForChild("Interface"):WaitForChild("Topbar"):WaitForChild("Main"):WaitForChild("Currencies"):WaitForChild("Gems"):WaitForChild("Amount");local v10=v9.Text:gsub(",","");return tonumber(v10);end);if v6 then return v7;end v5=569 -(367 + 201) ;end if (v5==1) then return nil;end end end while task.wait(v2["Check Delay"]) do local v8=v4();if v8 then print("Current Gems:",v8);if (v8>=v3) then writefile(v1.Name   .. ".txt" ,"Completed-AOTR_"   .. tostring(v8) );print("Saved:",v1.Name   .. ".txt" );break;end end end