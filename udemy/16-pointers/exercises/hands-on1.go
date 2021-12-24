package main

import (
	"fmt"
)

func main() {
	//exercise1
	//create a value and assign it to a variable
	//print the address of the value

	x := 12
	fmt.Println(&x)

	//exercise2
	//create a person struct
	//create a func called "changeMe" with a 'person'  as a parameter
	//change the value stored at the 'person' address
	//create a value of type person
	sampleP := person{fullName: "MohammadReza"}
	fmt.Println(sampleP)
	sampleP.changeMe()
	fmt.Println(sampleP)
	
	//important : 
		// to dereference a struct , use (*value).field
		// "as an exception, if the type of x is a named pointer type and (*x).f
		// is a valid selector expression denoting a field (but not method), 
		// x.f is shorthand for (*x).f "
			// https://golang.org/ref/spec#Selectors

	
}

func (p *person) changeMe(){
	p.fullName = "Maryam"	
}

type person struct {
	fullName string
}
