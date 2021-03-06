tests
testLength
	| segment segments |
	segment := RTLineSegment from: 0 @ 0 to: 8 @ 6.
	segments := DCRTPolyLineSegment with: segment.
	self assert: segments length equals: 10.
	segments := DCRTPolyLineSegment
		with: (RTLineSegment from: 0 @ 0 to: 10 @ 0)
		with: (RTLineSegment from: 10 @ 0 to: 10 @ 5).
	self assert: segments length equals: 15