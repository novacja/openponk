examples
exampleClusters
|v es edges lines utils edgeLabels|
utils := DCLayoutUtils new.
v := RTView new.
v @ RTDraggableView.
v @ RTZoomableView.

es := RTBox new size: 30; elementsOn: #(B C D).
v addAll: es.
es do: [ :each | |lbl|
	lbl := RTLabel new color: Color black; elementOn: each model.
	TRConstraint stick: lbl onTheCenterOf: each.
	v add: lbl.
].
"es @ RTDraggable."

lines := {
	{ #B -> #C . 'alpha' }.
	{ #B -> #D . 'beta' }.
	{ #C -> #D . 'gamma' }.
}.

edgeLabels := OrderedCollection new.

edges := (lines collect: [ :each | |e lbl|
	e := RTArrowedLine new
		color: Color black;
		attachPoint: RTRectangleAttachPoint new;
		edgeFrom: (es elementFromModel: each first key)
		to: (es elementFromModel: each first value).
	e model: each second.
	v add: e.
	lbl := RTLabel new color: Color blue; text: [ :model | model model ]; elementOn: e.
	TRConstraint 
							stick: lbl 
							between: e from trachelShape 
							and: e to trachelShape
							offset: 0.5. 
	v add: lbl.
	edgeLabels add: lbl.
	e.
]) asGroup.

RTDominanceTreeLayout new
	doNotAttachPoint;
	horizontalGap: 100;
	verticalGap: 50;
	on: es.

(es elementFromModel: #C) translateBy: 150 @ -80.

DCRTEdgeLabelLayout new
	spacing: 70;
	labels: edgeLabels;
	withVisualization;
"	labels: {edgeLabels last};"
	on: es edges: edges.
	
v canvas camera focusOnCenterScaled: (521.0@700.0).

^ v