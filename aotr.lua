--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

repeat task.wait();until game:IsLoaded() local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2=getgenv().Config or {["Required Gems"]=1000877 -(282 + 595) ,["Check Delay"]=60} ;local v3=tonumber(v2["Required Gems"]);local function v4() local v6,v7=pcall(function() local v10=v1:WaitForChild("PlayerGui"):WaitForChild("Interface"):WaitForChild("Topbar"):WaitForChild("Main"):WaitForChild("Currencies"):WaitForChild("Gems"):WaitForChild("Amount");local v11=v10.Text:gsub(",","");return tonumber(v11);end);if v6 then return v7;end warn(v7);return nil;end local function v5() local v8=1637 -(1523 + 114) ;local v9;while true do if (v8==(1 + 0)) then return false;end if (v8==(0 -0)) then v9=v4();if v9 then print("Current Gems:",v9);if (v9>=v3) then local v12=568 -(367 + 201) ;while true do if (v12==1) then return true;end if (v12==(927 -(214 + 713))) then writefile(v1.Name   .. ".txt" ,"Completed-AOTR_"   .. tostring(v9) );print("Saved:",v1.Name   .. ".txt" );v12=1 + 0 ;end end end end v8=1 + 0 ;end end end if v5() then return;end while task.wait(v2["Check Delay"]) do if v5() then break;end end