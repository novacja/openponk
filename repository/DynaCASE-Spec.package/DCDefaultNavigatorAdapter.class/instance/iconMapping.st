widget API
iconMapping
	^ {DCDiagram -> DCIcons current dcFsmDiagramIcon.
	DCNamedElement -> DCIcons current dcFsmRegularStateIcon.
	DCEdge -> DCIcons current dcFsmTransitionIcon.
	Object -> DCIcons current dcFsmRegularStateIcon}