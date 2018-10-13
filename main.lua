SLASH_ILSKA1 = "/ilska"


local visibleToggle = 1


SlashCmdList["ILSKA"] = function(msg)
	if visibleToggle == 1 then
		Ragebar:Hide();
		visibleToggle = 2
	else 
		Ragebar:Show();
		visibleToggle = 1
	end
end 
function IlskaStartResize(self)
	self:SetScript("OnUpdate", IlskaResize);
end
function IlskaStopResize(self)
	self:SetScript("OnUpdate", nil);
end
function IlskaResize(self)

	local parent = self:GetParent();
	local cursorX, cursorY = GetCursorPosition(UIParent);

	local botY = parent:GetBottom()-(parent:GetHeight()*2);
	local rightX = parent:GetRight()-100;
	
	
	if cursorX > rightX then
		local newWidth = parent:GetWidth()+(cursorX-rightX);
		parent:SetWidth(newWidth);
	else
		local newWidth = parent:GetWidth()-(rightX-cursorX);
		parent:SetWidth(newWidth);
	end
	
end	
function printRage()
	local rage = UnitPower("player");
	RagebarTextFont:SetText(getRage());
end
function getRage()
	local rage = UnitPower("player");
	return rage;
end

