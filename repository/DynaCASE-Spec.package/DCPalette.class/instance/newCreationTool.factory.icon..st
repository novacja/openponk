protocol
newCreationTool: aLabel factory: aBlock icon: anIcon
	| item tool |
	item := self addItem.
	(tool := DCCreationTool new)
		palette: self;
		factory: aBlock.
	item
		label: aLabel;
		icon: anIcon;
		action: [ self selectItem: item tool: tool ]