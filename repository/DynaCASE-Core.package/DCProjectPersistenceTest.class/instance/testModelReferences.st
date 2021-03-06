tests
testModelReferences
	| result models |
	models := DCPluginRegistry default plugins collect: [ :each | each modelClass new ].
	result := XMLDOMParser
		parse: (String streamContents: [ :stream | persistence writeModelReferences: models on: stream ]).
	self assert: result root elements size equals: models size.
	self
		assert: (result root elements collect: [ :each | each attributeAt: #plugin ]) asSet
		equals: (DCPluginRegistry default plugins collect: #className) asSet