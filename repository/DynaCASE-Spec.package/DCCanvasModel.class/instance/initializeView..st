initialization
initializeView: aView
	aView when: TRMouseLeftClick do: [ :event | self viewClicked: event ].
	aView @ RTDraggableView.
	aView @ (RTZoomableView new min: 0.25 max: 4).
	aView @ (RTGridView new gridSize: 20).
	^ aView canvas camera
		addCallback:
			(TRCameraScaleCallback
				block: [ :newScale | 
					self editor zoomLabel
						label:
							(newScale < 1
								ifTrue: [ '   ' ]
								ifFalse: [ '' ]) , (newScale * 100) rounded asString , '%' ])