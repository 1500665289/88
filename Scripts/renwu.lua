local renwu = GameMain:GetMod("renwu");
local tbEvent = GameMain:GetMod("_Event");

function renwu:OnInit()

end

function renwu:OnEnter()
	tbEvent:RegisterEvent(g_emEvent.SecretUpdate, renwu.OnSecretUpdate, "renwu")
end


function renwu:OnLeave()
	tbEvent:UnRegisterEvent(g_emEvent.SecretUpdate, "renwu")
end


function renwu.OnSecretUpdate(t,obj)
	if PlacesMgr:IsLocked("Place_renwu") == true then
		if MapStoryMgr:HasSecret(11157) == true then
			PlacesMgr:UnLockPlace("Place_renwu");
			MapStoryMgr:GetSecretDef(11157).Hide = true
		end
	end
end