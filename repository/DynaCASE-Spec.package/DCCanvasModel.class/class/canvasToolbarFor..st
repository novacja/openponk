as yet unclassified
canvasToolbarFor: aBuilder
	<dcCanvasTolbar>
	| canvas |
	canvas := aBuilder model.
	(aBuilder item: 'Zoom out')
		icon: DCIcons current dcZoomOutIcon;
		action: [ canvas zoom: canvas zoom * 0.8 ].
	(aBuilder item: '100%')
		icon: DCIcons current dcZoomIcon;
		action: [ canvas zoom: 1.0001 ].
	(aBuilder item: 'Zoom in')
		icon: DCIcons current dcZoomInIcon;
		action: [ canvas zoom: canvas zoom * 1.25 ].
	(aBuilder item: 'View All') action: [ canvas showAllFigures ].
	(aBuilder item: 'Undo')
		icon: Smalltalk ui icons smallUndo;
		enabled: false;
		action: [ canvas diagramController undo ].
	(aBuilder item: 'Redo')
		icon: Smalltalk ui icons smallRedo;
		enabled: false;
		action: [ canvas diagramController redo ]