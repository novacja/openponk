hooks
connectionFeedback
	^ DCInteractiveLine new
		lineBuilder: [ :fromFigure :toFigure | self edgeBuilder createEdgeFrom: fromFigure to: toFigure ];
		from: source figure