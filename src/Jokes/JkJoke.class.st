Class {
	#name : #JkJoke,
	#superclass : #Object,
	#instVars : [
		'picture'
	],
	#classVars : [
		'List'
	],
	#category : #Jokes
}

{ #category : #accessing }
JkJoke class >> list [
	^ List
]

{ #category : #accessing }
JkJoke class >> list: anObject [
	List := anObject
]

{ #category : #persistence }
JkJoke class >> restoreFrom: anObject [
	
	List := anObject
]

{ #category : #persistence }
JkJoke class >> spData [
	
	^ List
]

{ #category : #'as yet unclassified' }
JkJoke >> displayStringOn: aStream [

	picture ifNotNil: [ 
		aStream nextPutAll: 'a visual' ]
]

{ #category : #views }
JkJoke >> gtPictureFor: aView [
	<gtView>
	
	^ aView forward
		title: 'Picture';
		object: [ self picture ];
		view: #contentsGtViewFor:
]

{ #category : #accessing }
JkJoke >> picture [
	^ picture
]

{ #category : #accessing }
JkJoke >> picture: anObject [
	picture := anObject
]

{ #category : #'as yet unclassified' }
JkJoke >> printOn: aStream [

	self printFromDisplayStringOn: aStream
]
