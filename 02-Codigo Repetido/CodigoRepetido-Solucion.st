!classDefinition: #CantSuspend category: 'CodigoRepetido-Ejercicio'!
Error subclass: #CantSuspend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #NotFound category: 'CodigoRepetido-Ejercicio'!
Error subclass: #NotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #CustomerBookTest category: 'CodigoRepetido-Ejercicio'!
TestCase subclass: #CustomerBookTest
	instanceVariableNames: 'customerBook'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:32:24'!
calculateTime: action

	| millisecondsBeforeRunning millisecondsAfterRunning |
	
	millisecondsBeforeRunning := Time millisecondClockValue * millisecond.
	
	action.
	
	millisecondsAfterRunning := Time millisecondClockValue * millisecond.
	
	^millisecondsAfterRunning-millisecondsBeforeRunning.! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:36:43'!
checkOperation: operation exception: exception quantity: quantity customerName: customerName
	
	[ operation ]
		on: exception
		do: [ :anError | 
			self assert: customerBook numberOfCustomers = quantity.
			(quantity = 0) ifTrue: [self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage] ifFalse: [self assert: (customerBook includesCustomerNamed: customerName)].
			]! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:37:12'!
isStillCustomer: boolean quantity: quantity assertion: assertion

	| paulMcCartney |
	
	paulMcCartney := 'PaulMcCartney'.
	
	customerBook addCustomerNamed: paulMcCartney.
	customerBook suspendCustomerNamed: paulMcCartney.
	(boolean = true) ifTrue: [customerBook removeCustomerNamed: paulMcCartney].
	
	self assert: 0 equals: customerBook numberOfActiveCustomers.
	self assert: quantity equals: customerBook numberOfSuspendedCustomers.
	self assert: quantity equals: customerBook numberOfCustomers.
	assertion.! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:56:18'!
removalTime: removalTime usedTime: usedTime
	
	self assert: usedTime < removalTime! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:56:48'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds
	
	customerBook := CustomerBook new.
	
	self removalTime: (50 * millisecond) usedTime: [self calculateTime: (customerBook addCustomerNamed: 'JohnLennon')] value! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:57:03'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds
	
	| paulMcCartney |
	
	customerBook := CustomerBook new.
	paulMcCartney := 'PaulMcCartney'.
	
	customerBook addCustomerNamed: paulMcCartney.
	
	self removalTime: (100 * millisecond) usedTime: [self calculateTime: (customerBook removeCustomerNamed: paulMcCartney)] value! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:59:00'!
test03CanNotAddACustomerWithEmptyName 
	
	customerBook := CustomerBook new.
	
	self checkOperation: [customerBook addCustomerNamed: '' self fail] exception: Error quantity: 0 customerName: 'John Lennon'! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:46:59'!
test04CanNotRemoveAnInvalidCustomer

	| johnLennon |
			
	customerBook := CustomerBook new.
	johnLennon := 'JohnLennon'.
	
	customerBook addCustomerNamed: johnLennon.
	
	self checkOperation: [customerBook removeCustomerNamed: 'Paul McCartney' self fail] exception: NotFound quantity: 1 customerName: johnLennon! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:48:00'!
test05SuspendingACustomerShouldNotRemoveItFromCustomerBook
	
	customerBook := CustomerBook new.
	
	self isStillCustomer: false quantity: 1 assertion: [self assert: (customerBook includesCustomerNamed: 'PaulMcCartney')].! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:48:48'!
test06RemovingASuspendedCustomerShouldRemoveItFromCustomerBook
	
	customerBook := CustomerBook new.

	self isStillCustomer: true quantity: 0 assertion: [self deny: (customerBook includesCustomerNamed: 'PaulMcCartney')].! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:49:21'!
test07CanNotSuspendAnInvalidCustomer

	| johnLennon |
			
	customerBook := CustomerBook new.
	johnLennon := 'JohnLennon'.
	
	customerBook addCustomerNamed: johnLennon.
	
	self checkOperation: [customerBook suspendCustomerNamed: 'Ringo Starr' self fail] exception: CantSuspend quantity: 1 customerName: johnLennon.! !

!CustomerBookTest methodsFor: 'tests' stamp: 'JRC 5/20/2021 10:50:05'!
test08CanNotSuspendAnAlreadySuspendedCustomer

	| johnLennon |
			
	customerBook := CustomerBook new.
	johnLennon := 'JohnLennon'.
	
	customerBook addCustomerNamed: johnLennon.
	customerBook suspendCustomerNamed: johnLennon.

	self checkOperation: [customerBook suspendCustomerNamed: 'JohnLennon' self fail] exception: CantSuspend quantity: 1 customerName: johnLennon.! !


!classDefinition: #CustomerBook category: 'CodigoRepetido-Ejercicio'!
Object subclass: #CustomerBook
	instanceVariableNames: 'suspended active'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBook methodsFor: 'initialization' stamp: 'LL 10/30/2020 12:22:04'!
initialize

	active := OrderedCollection new.
	suspended:= OrderedCollection new.! !


!CustomerBook methodsFor: 'customer management' stamp: 'JRC 5/20/2021 10:19:05'!
addCustomerNamed: aName

	aName isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ].
	((active includes: aName) or: [suspended includes: aName]) ifTrue: [ self signalCustomerAlreadyExists ].
	
	active add: aName! !

!CustomerBook methodsFor: 'customer management' stamp: 'JRC 5/20/2021 10:17:55'!
isIncluded: boolean signal: signal name: aName

	(boolean = true) ifFalse: [^signal].
	
	self removeName: aName from: active.! !

!CustomerBook methodsFor: 'customer management' stamp: 'JRC 5/20/2021 10:17:14'!
removeCustomerNamed: aName 

	self isIncluded: [self includesCustomerNamed: aName] signal: [NotFound signal] name: aName.

	self removeName: aName from: suspended.

	^ aName.! !

!CustomerBook methodsFor: 'customer management' stamp: 'JRC 5/20/2021 10:17:49'!
removeName: aName from: collection
	
	1 to: collection size do:
	[:index |
		aName = (collection at: index)
			ifTrue: [
				collection removeAt: index.
				^ aName 
			]
	]! !

!CustomerBook methodsFor: 'customer management' stamp: 'JRC 5/20/2021 10:18:37'!
suspendCustomerNamed: aName 
	
	self isIncluded: (active includes: aName) signal: [CantSuspend signal] name: aName.
	
	suspended add: aName! !


!CustomerBook methodsFor: 'accessing' stamp: 'NR 4/3/2019 10:14:26'!
numberOfActiveCustomers
	
	^active size! !

!CustomerBook methodsFor: 'accessing' stamp: 'NR 4/3/2019 10:14:26'!
numberOfCustomers
	
	^active size + suspended size! !

!CustomerBook methodsFor: 'accessing' stamp: 'NR 9/19/2018 17:36:09'!
numberOfSuspendedCustomers
	
	^suspended size! !


!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
includesCustomerNamed: aName

	^(active includes: aName) or: [ suspended includes: aName ]! !

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
isEmpty
	
	^active isEmpty and: [ suspended isEmpty ]! !


!CustomerBook methodsFor: 'signal errors' stamp: 'HernanWilkinson 7/6/2011 17:52'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage! !

!CustomerBook methodsFor: 'signal errors' stamp: 'HernanWilkinson 7/6/2011 17:51'!
signalCustomerNameCannotBeEmpty 

	self error: self class customerCanNotBeEmptyErrorMessage ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'CodigoRepetido-Ejercicio'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:18'!
customerAlreadyExistsErrorMessage

	^'Customer Already Exists'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:25'!
customerCanNotBeEmptyErrorMessage

	^'Customer Name Cannot Be Empty'! !
