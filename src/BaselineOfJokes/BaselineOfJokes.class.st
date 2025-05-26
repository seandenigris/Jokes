Class {
	#name : #BaselineOfJokes,
	#superclass : #BaselineOf,
	#category : #BaselineOfJokes
}

{ #category : #baseline }
BaselineOfJokes >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Jokes'
		]
]
