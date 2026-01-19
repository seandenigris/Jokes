Class {
	#name : 'JkJoke',
	#superclass : 'Object',
	#instVars : [
		'picture',
		'premise',
		'setup',
		'punchline'
	],
	#classVars : [
		'List'
	],
	#category : 'Jokes',
	#package : 'Jokes'
}

{ #category : 'accessing' }
JkJoke class >> list [
	^ List
]

{ #category : 'accessing' }
JkJoke class >> list: anObject [
	List := anObject
]

{ #category : 'persistence' }
JkJoke class >> restoreFrom: anObject [
	
	List := anObject
]

{ #category : 'persistence' }
JkJoke class >> spData [
	
	^ List
]

{ #category : 'as yet unclassified' }
JkJoke >> displayStringOn: aStream [

	(self punchline isNil and: [ self picture isNotNil]) ifTrue: [ 
		aStream nextPutAll: 'a visual' ].
		
	self setup ifNotNil: [
		aStream 
			nextPutAll: self setup;
			nextPutAll: '… ' ].
			
	self punchline ifNotNil: [
		aStream nextPutAll: self punchline ].
]

{ #category : 'accessing' }
JkJoke >> picture [
	^ picture
]

{ #category : 'accessing' }
JkJoke >> picture: anObject [
	picture := anObject
]

{ #category : 'views' }
JkJoke >> pictureGtViewFor: aView [
	<gtView>
	
	self picture ifNil: [ ^ aView empty ].
	
	^ aView forward
		title: 'Picture';
		object: [ self picture ];
		view: #contentsGtViewFor:
]

{ #category : 'accessing' }
JkJoke >> premise [
	^ premise
]

{ #category : 'accessing' }
JkJoke >> premise: anObject [
	premise := anObject
]

{ #category : 'as yet unclassified' }
JkJoke >> printOn: aStream [

	self printFromDisplayStringOn: aStream
]

{ #category : 'accessing' }
JkJoke >> punchline [
	^ punchline
]

{ #category : 'accessing' }
JkJoke >> punchline: anObject [
	punchline := anObject
]

{ #category : 'accessing' }
JkJoke >> setup [
	^ setup
]

{ #category : 'accessing' }
JkJoke >> setup: anObject [
	setup := anObject
]
