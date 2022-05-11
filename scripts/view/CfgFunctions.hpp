class TAW_VD {
	tag = "TAWVD";

	class Initialize {
		file = "scripts\view";
		class stateTracker {
			ext = ".fsm";
			postInit = 1;
			headerType = -1;
		};
			
		class onSliderChanged {};
		class onTerrainChanged {};
		class updateViewDistance {};
		class openMenu {};
		class onChar {};
		class openSaveManager {};
		class onSavePressed {};
		class onSaveSelectionChanged {};
	};
};