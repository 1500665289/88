local MUTEX = GameMain:GetMod("MUTEX");
local time = 0;
local flag = 0;

function MUTEX:OnStep(dt)
if flag == 0 then
time = time + dt;
if time >= 10 then
flag = 1;

for q,w in pairs(CS.XiaWorld.PracticeMgr.Instance:GetAllGongName()) do

	if w ~= "Gong_LOST" and w ~= "Gong_DaNeng" and w ~= "Gong_YaoShou" then
		for k,v in pairs(PracticeMgr.SkillTree:GetGongTree(w)) do

			if PracticeMgr.SkillTree:GetGongTree(w) ~= nil then
				if PracticeMgr.SkillTree:GetDef(v) ~= nil then
					if PracticeMgr.SkillTree:GetDef(v).MutexUnit ~= nil then
						PracticeMgr.SkillTree:GetDef(v).MutexUnit = nil
					end
					if PracticeMgr.SkillTree:GetDef(v).Esoterica ~= nil then
						if EsotericaMgr:GetEsotericaDef(PracticeMgr.SkillTree:GetDef(v).Esoterica).Mutex ~= nil then
							EsotericaMgr:GetEsotericaDef(PracticeMgr.SkillTree:GetDef(v).Esoterica).Mutex = nil
						end
					end
				end
			end
		end
	end
end
print("成功")
end
end
end

