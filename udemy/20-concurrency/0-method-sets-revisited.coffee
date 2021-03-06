Method Set
	A type has a (possibly empty) method set associated with it. 
	The method set of an interface type is its interface. 
	The method set of any other type T consists of all methods declared with receiver type T.
	 The method set of the corresponding pointer type *T is the set of all methods declared with receiver *T or T 
	(that is, it also contains the method set of T)

	IMPORTANT : 
	The method set of a type determines the interfaces that the type implements and the methods 
	that can be called using a receiver of that type.