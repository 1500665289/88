local YOULING = GameMain:GetMod("LIBRARY");
local time = 0;
local flag = 0;


function YOULING:OnStep(dt)
if flag == 0 then
time = time + dt;
if time >= 10 then
flag = 1;
CS.CangJingGeMgr.Instance.WaitMemorySize=-10000
end
end
end