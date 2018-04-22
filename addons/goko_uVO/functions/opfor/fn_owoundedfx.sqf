goko_randomizeopfor = 67;

goko_fnc_odmgwoundsys = 
{
	params ["_victim", "_causedBy", "_damage", "_shooter"];

	if (goko_var_cltalking) exitWith {};
	
	if (side _shooter == east) then 
	{
		_fsounds = ["owatchfire01", "owatchfire02", "owatchfire03", "owatchfire04", "owatchfire05", "owatchfire06", "owatchfire07", "owatchfire08","owatchfire09", "owatchfire10", "owatchfire11"];
		_fsound = selectRandom _fsounds;
		[_victim, [_fsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		[_victim] remoteExecCall ["goko_fnc_movelips"];
	} else
	{
		_wsounds = ["owounded01", "owounded02", "owounded03", "owounded04", "owounded05", "owounded06", "owounded07", "owounded08", "owounded09", "owounded10", "owounded11", "owounded12", "owounded13", "owounded14", "owounded15", "owounded16", "owounded17", "owounded18", "owounded19", "owounded20", "owounded21", "owounded22", "owounded23", "owounded24", "owounded25", "owounded26", "owounded27", "owounded28", "owounded29", "owounded30", "owounded31", "owounded32", "owounded33", "owounded34", "owounded35", "owounded36", "owounded37", "owounded38", "owounded39", "owounded40", "owounded41", "owounded42", "owounded43", "owounded44", "owounded45", "owounded46", "owounded47", "owounded48", "owounded49", "owounded50", "owounded51", "owounded52", "owounded53", "owounded54", "owounded55", "owounded56", "owounded57", "owounded58", "owounded59"];
		_wsound = selectRandom _wsounds;
		[_victim, [_wsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		[_victim] remoteExecCall ["goko_fnc_movelips"];
	};
};

goko_fnc_odeath =
{
	params ["_unit", "_shooter", "_killer"];
	
	_meters = round (_unit distance _killer);
	_deathsArray = 
	[
		"goko_uVO\sounds\pl_deathshout_01.wav",
		"goko_uVO\sounds\pl_deathshout_02.wav",
		"goko_uVO\sounds\pl_deathshout_03.wav",
		"goko_uVO\sounds\pl_deathshout_04.wav",
		"goko_uVO\sounds\pl_deathshout_05.wav",
		"goko_uVO\sounds\pl_deathshout_06.wav",
		"goko_uVO\sounds\pl_deathshout_07.wav",
		"goko_uVO\sounds\pl_deathshout_08.wav",
		"goko_uVO\sounds\pl_deathshout_09.wav",
		"goko_uVO\sounds\pl_deathshout_10.wav",
		"goko_uVO\sounds\pl_deathshout_11.wav",
		"goko_uVO\sounds\pl_deathshout_12.wav",
		"goko_uVO\sounds\pl_deathshout_13.wav",
		"goko_uVO\sounds\pl_deathshout_14.wav",
		"goko_uVO\sounds\pl_deathshout_15.wav",
		"goko_uVO\sounds\pl_deathshout_16.wav",
		"goko_uVO\sounds\pl_deathshout_17.wav",
		"goko_uVO\sounds\pl_deathshout_18.wav",
		"goko_uVO\sounds\pl_deathshout_19.wav",
		"goko_uVO\sounds\pl_deathshout_20.wav",
		"goko_uVO\sounds\pl_deathshout_21.wav",
		"goko_uVO\sounds\pl_deathshout_22.wav",
		"goko_uVO\sounds\pl_deathshout_23.wav",
		"goko_uVO\sounds\pl_deathshout_24.wav",
		"goko_uVO\sounds\pl_deathshout_25.wav",
		"goko_uVO\sounds\pl_deathshout_26.wav",
		"goko_uVO\sounds\pl_deathshout_27.wav",
		"goko_uVO\sounds\pl_deathshout_28.wav",
		"goko_uVO\sounds\pl_deathshout_29.wav",
		"goko_uVO\sounds\pl_deathshout_30.wav",
		"goko_uVO\sounds\pl_deathshout_31.wav",
		"goko_uVO\sounds\pl_deathshout_32.wav",
		"goko_uVO\sounds\pl_deathshout_33.wav",
		"goko_uVO\sounds\pl_deathshout_34.wav",
		"goko_uVO\sounds\pl_deathshout_35.wav",
		"goko_uVO\sounds\pl_deathshout_36.wav",
		"goko_uVO\sounds\pl_deathshout_37.wav",
		"goko_uVO\sounds\pl_deathshout_38.wav",
		"goko_uVO\sounds\pl_deathshout_39.wav",
		"goko_uVO\sounds\pl_deathshout_40.wav",
		"goko_uVO\sounds\pl_deathshout_41.wav",
		"goko_uVO\sounds\pl_deathshout_42.wav",
		"goko_uVO\sounds\pl_deathshout_43.wav",
		"goko_uVO\sounds\pl_deathshout_44.wav",
		"goko_uVO\sounds\pl_deathshout_45.wav",
		"goko_uVO\sounds\pl_deathshout_46.wav",
		"goko_uVO\sounds\pl_deathshout_47.wav",
		"goko_uVO\sounds\pl_deathshout_48.wav",
		"goko_uVO\sounds\pl_deathshout_49.wav"
	];
	
	_deathsound = selectRandom _deathsArray;
	playsound3d [format ["%1",_deathsound], _unit, false, getPosASL _unit, goko_vo_deathshouts_volume, 1, goko_vo_deathshouts_diameter];
	
	if (round (random 100) < goko_randomizeopfor) then 
	{
		_abow = _unit nearEntities [["O_Soldier_base_F"], 50]; 
		if (_abow isequalto [] || _abow isequalto [_unit]) exitwith{};
		_obara = selectRandom _abow; 

		_subdowns = ["osubdown01", "osubdown02", "osubdown03", "osubdown04", "osubdown05", "osubdown06", "osubdown07", "osubdown08", "osubdown09", "osubdown10", "osubdown11", "osubdown12", "osubdown13", "osubdown14", "osubdown15", "osubdown16", "osubdown17", "osubdown18", "osubdown19", "osubdown20", "osubdown21", "osubdown22", "osubdown23", "osubdown24", "osubdown25", "osubdown26", "osubdown27"];
		_subdown = selectRandom _subdowns;
		[_obara, [_subdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
	};
	if (round (random 100) > goko_vo_killconfirmratio) exitWith {};
	
	if (side _killer == west) then 
	{
		_btargetdowns = ["btarget01", "btarget02", "btarget03", "btarget04", "btarget05", "btarget06", "btarget07", "btarget08", "btarget09", "btarget10"];
		_btargetdown = selectRandom _btargetdowns;
			
		_suppbtargetdowns = ["bsupptarget01", "bsupptarget02", "bsupptarget03", "bsupptarget04", "bsupptarget05", "bsupptarget06", "bsupptarget07", "bsupptarget08", "bsupptarget09", "bsupptarget10", "bsupptarget11", "bsupptarget12", "bsupptarget13"];
		_suppbtargetdown = selectRandom _suppbtargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_btargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppbtargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
	
	if (side _killer == independent) then 
	{
		_intargetdowns = ["intarget01", "intarget02", "intarget03", "intarget04", "intarget05", "intarget06", "intarget07", "intarget08", "intarget09", "intarget10"];
		_intargetdown = selectRandom _intargetdowns;
			
		_suppintargetdowns = ["insupptarget01", "insupptarget02", "insupptarget03", "insupptarget04", "insupptarget05", "insupptarget06", "insupptarget07", "insupptarget08", "insupptarget09", "insupptarget10"];
		_suppintargetdown = selectRandom _suppintargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_intargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppintargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
};

goko_fnc_odeath_ace3 =
{
	params ["_unit"];
	
	_killer = _unit getVariable "ace_medical_lastDamageSource";
	
	_meters = round (_unit distance _killer);
	_deathsArray = 
	[
		"goko_uVO\sounds\pl_deathshout_01.wav",
		"goko_uVO\sounds\pl_deathshout_02.wav",
		"goko_uVO\sounds\pl_deathshout_03.wav",
		"goko_uVO\sounds\pl_deathshout_04.wav",
		"goko_uVO\sounds\pl_deathshout_05.wav",
		"goko_uVO\sounds\pl_deathshout_06.wav",
		"goko_uVO\sounds\pl_deathshout_07.wav",
		"goko_uVO\sounds\pl_deathshout_08.wav",
		"goko_uVO\sounds\pl_deathshout_09.wav",
		"goko_uVO\sounds\pl_deathshout_10.wav",
		"goko_uVO\sounds\pl_deathshout_11.wav",
		"goko_uVO\sounds\pl_deathshout_12.wav",
		"goko_uVO\sounds\pl_deathshout_13.wav",
		"goko_uVO\sounds\pl_deathshout_14.wav",
		"goko_uVO\sounds\pl_deathshout_15.wav",
		"goko_uVO\sounds\pl_deathshout_16.wav",
		"goko_uVO\sounds\pl_deathshout_17.wav",
		"goko_uVO\sounds\pl_deathshout_18.wav",
		"goko_uVO\sounds\pl_deathshout_19.wav",
		"goko_uVO\sounds\pl_deathshout_20.wav",
		"goko_uVO\sounds\pl_deathshout_21.wav",
		"goko_uVO\sounds\pl_deathshout_22.wav",
		"goko_uVO\sounds\pl_deathshout_23.wav",
		"goko_uVO\sounds\pl_deathshout_24.wav",
		"goko_uVO\sounds\pl_deathshout_25.wav",
		"goko_uVO\sounds\pl_deathshout_26.wav",
		"goko_uVO\sounds\pl_deathshout_27.wav",
		"goko_uVO\sounds\pl_deathshout_28.wav",
		"goko_uVO\sounds\pl_deathshout_29.wav",
		"goko_uVO\sounds\pl_deathshout_30.wav",
		"goko_uVO\sounds\pl_deathshout_31.wav",
		"goko_uVO\sounds\pl_deathshout_32.wav",
		"goko_uVO\sounds\pl_deathshout_33.wav",
		"goko_uVO\sounds\pl_deathshout_34.wav",
		"goko_uVO\sounds\pl_deathshout_35.wav",
		"goko_uVO\sounds\pl_deathshout_36.wav",
		"goko_uVO\sounds\pl_deathshout_37.wav",
		"goko_uVO\sounds\pl_deathshout_38.wav",
		"goko_uVO\sounds\pl_deathshout_39.wav",
		"goko_uVO\sounds\pl_deathshout_40.wav",
		"goko_uVO\sounds\pl_deathshout_41.wav",
		"goko_uVO\sounds\pl_deathshout_42.wav",
		"goko_uVO\sounds\pl_deathshout_43.wav",
		"goko_uVO\sounds\pl_deathshout_44.wav",
		"goko_uVO\sounds\pl_deathshout_45.wav",
		"goko_uVO\sounds\pl_deathshout_46.wav",
		"goko_uVO\sounds\pl_deathshout_47.wav",
		"goko_uVO\sounds\pl_deathshout_48.wav",
		"goko_uVO\sounds\pl_deathshout_49.wav"
	];
	
	_deathsound = selectRandom _deathsArray;
	playsound3d [format ["%1",_deathsound], _unit, false, getPosASL _unit, goko_vo_deathshouts_volume, 1, goko_vo_deathshouts_diameter];
	
	if (round (random 100) < goko_randomizeopfor) then 
	{
		_abow = _unit nearEntities [["O_Soldier_base_F"], 50]; 
		if (_abow isequalto [] || _abow isequalto [_unit]) exitwith{};
		_obara = selectRandom _abow; 

		_subdowns = ["osubdown01", "osubdown02", "osubdown03", "osubdown04", "osubdown05", "osubdown06", "osubdown07", "osubdown08", "osubdown09", "osubdown10", "osubdown11", "osubdown12", "osubdown13", "osubdown14", "osubdown15", "osubdown16", "osubdown17", "osubdown18", "osubdown19", "osubdown20", "osubdown21", "osubdown22", "osubdown23", "osubdown24", "osubdown25", "osubdown26", "osubdown27"];
		_subdown = selectRandom _subdowns;
		[_obara, [_subdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
	};
	if (round (random 100) > goko_vo_killconfirmratio) exitWith {};
	
	if (side _killer == west) then 
	{
		_btargetdowns = ["btarget01", "btarget02", "btarget03", "btarget04", "btarget05", "btarget06", "btarget07", "btarget08", "btarget09", "btarget10"];
		_btargetdown = selectRandom _btargetdowns;
			
		_suppbtargetdowns = ["bsupptarget01", "bsupptarget02", "bsupptarget03", "bsupptarget04", "bsupptarget05", "bsupptarget06", "bsupptarget07", "bsupptarget08", "bsupptarget09", "bsupptarget10", "bsupptarget11", "bsupptarget12", "bsupptarget13"];
		_suppbtargetdown = selectRandom _suppbtargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_btargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppbtargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
	
	if (side _killer == independent) then 
	{
		_intargetdowns = ["intarget01", "intarget02", "intarget03", "intarget04", "intarget05", "intarget06", "intarget07", "intarget08", "intarget09", "intarget10"];
		_intargetdown = selectRandom _intargetdowns;
			
		_suppintargetdowns = ["insupptarget01", "insupptarget02", "insupptarget03", "insupptarget04", "insupptarget05", "insupptarget06", "insupptarget07", "insupptarget08", "insupptarget09", "insupptarget10"];
		_suppintargetdown = selectRandom _suppintargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_intargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppintargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
};

goko_fnc_opfCallDir =   
{ 
	params ["_unit"]; 
	_cTar = cursortarget;
	_knowabouts = _unit knowsabout _cTar; 
	if (_unit == player && _knowabouts > 0 && _cTar iskindof "MAN" && alive _cTar) then 
	{ 
 
		if (side _unit != side _cTar) then 
		{ 
			_azimuth = getDir _unit; 
			_direction = lolo; 
			switch (true) do 
			{ 
				case (_azimuth >= 337.5 ) : {_direction = "N" }; 
				case (_azimuth >= 22.5 and _azimuth < 67.5) : {_direction = "NE" }; 
				case (_azimuth >= 67.5 and _azimuth < 112.5) : {_direction = "E"; }; 
				case (_azimuth >= 112.5 and _azimuth < 157.5) : {_direction = "SE" }; 
				case (_azimuth >= 157.5 and _azimuth < 202.5) : {_direction = "S" }; 
				case (_azimuth >= 202.5 and _azimuth < 247.5) : {_direction = "SW" }; 
				case (_azimuth >= 247.5 and _azimuth < 292.5) : {_direction = "W" }; 
				case (_azimuth >= 292.5 and _azimuth < 337.5) : {_direction = "NW" }; 
			}; 

			if (_direction == "N") then 
			{ 
				_dirsounds = ["Oenemynorth01", "Oenemynorth02", "Oenemynorth03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "NE") then 
			{ 
				_dirsounds = ["OenemyNE01", "OenemyNE02", "OenemyNE03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "E") then 
			{ 
				_dirsounds = ["Oenemyeast01", "Oenemyeast02", "Oenemyeast03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "SE") then 
			{ 
				_dirsounds = ["OenemySE01", "OenemySE02", "OenemySE03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "S") then 
			{ 
				_dirsounds = ["Oenemysouth01", "Oenemysouth02", "Oenemysouth03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "SW") then 
			{ 
				_dirsounds = ["OenemySW01", "OenemySW02", "OenemySW03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "W") then 
			{ 
				_dirsounds = ["Oenemywest01", "Oenemywest02", "Oenemywest03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "NW") then 
			{ 
				_dirsounds = ["OenemyNW01", "OenemyNW02", "OenemyNW03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 
		}; 
	}; 
}; 
