function printRage()
	local rage = UnitPower("player");
	testFont:SetText(getRage());
end

function getRage()
	local rage = UnitPower("player");
	return rage;
end