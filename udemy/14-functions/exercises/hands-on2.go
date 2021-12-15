package main

import (
	"fmt"
	"math"
)

func main() {
	//exercise5
	//create a type square , create a type circle
	//attach a method to each that calculates area and returns it
	//create a type shape which defines an interface as anything which has the area method
	//create a func info which takes type shape and then prints the area
	//create a value of type square
	//create a value of type circle
	//use func info to print the area of sqaure
	//use func info to print the area of circle
	c := circle{radius: 12.345}
	s := square{length: 15}

	info(c)
	info(s)

	//exercise 6
	//build and use anonymous func
	ex6 := func(x int) int{
		return x + 2
	}(14)

	fmt.Println(ex6)

	//exercise7
	//assign a func to a variable, then call that func
	ex7 := func (num int) int{
		return num + 10
	}(14)
	
	fmt.Println(ex7)

}



type shape interface{
	area() float64
}

type square struct{
	length float64
}

type circle struct{
	radius float64
}

func (c circle) area() float64{
	return math.Pi * c.radius * c.radius
}

func (s square) area() float64{
	return s.length * s.length
}

func info(s shape) {
	x:= s.area
	fmt.Println(x())
}
