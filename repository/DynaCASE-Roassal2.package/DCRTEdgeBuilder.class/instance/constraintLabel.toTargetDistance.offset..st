labels
constraintLabel: labelName toTargetDistance: aNumber offset: anotherNumber
	| label |
	label := self labelNamed: labelName.
	constraints
		add: [ :edge | 
			DCRTEdgeEndConstraint
				stick: label
				nearEndOfEdge: edge
				distance: aNumber
				offset: anotherNumber.
			DCRTElementsConstraint
				whenDragging: label
				drawLineToPoint: [ (edge shape endingPointOf: edge) * 0.9 + ((edge shape startingPointOf: edge) * 0.1) ] ]