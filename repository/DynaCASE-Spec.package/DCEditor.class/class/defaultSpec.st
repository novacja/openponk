specs
defaultSpec
	^ SpecLayout composed
		add: #roassalModel origin: 0 @ 0 corner: 0.7 @ 0.7;
		add: #paletteModel origin: 0.7 @ 0 corner: 1 @ 0.7;
		add: #textEditorModel origin: 0 @ 0.7 corner: 0.7 @ 0.95;
		add: #statusModel origin: 0 @ 0.95 corner: 0.7 @ 1;
		yourself