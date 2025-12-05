local UNLOCK = GameMain:GetMod("UNLOCK");
local time = 0;
local flag = 0;

function UNLOCK:OnStep(dt)
if flag == 0 then
time = time + dt;
if time >= 10 then
flag = 1;

for q,w in pairs(CS.XiaWorld.PracticeMgr.Instance:GetAllGongName()) do

	if w == "Gong_LOST" or w == "Gong_DaNeng" or w == "Gong_YaoShou" then
	else
		for k,v in pairs(PracticeMgr.SkillTree:GetGongTree(w)) do

			if PracticeMgr.SkillTree:GetGongTree(w) ~= nil then
				if PracticeMgr.SkillTree:GetDef(v) ~= nil then
					if PracticeMgr.SkillTree:GetDef(v).Esoterica ~= nil then
						if EsotericaMgr:GetEsotericaDef(PracticeMgr.SkillTree:GetDef(v).Esoterica).Hide == 2 then
							EsotericaMgr:GetEsotericaDef(PracticeMgr.SkillTree:GetDef(v).Esoterica).Hide = 0
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

