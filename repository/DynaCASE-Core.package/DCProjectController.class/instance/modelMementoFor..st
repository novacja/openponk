saving
modelMementoFor: aModel
	^ controllers
		detect: [ :each | each model = aModel ]
		ifFound: #memento
		ifNone: [ DCPersistenceMemento model: aModel diagram: nil ]