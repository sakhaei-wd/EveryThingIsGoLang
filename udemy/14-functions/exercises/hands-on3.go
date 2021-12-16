package main

import (
	"fmt"
)

func main() {

	//exercise10
	//closure is when we have "enclosed" the scope of a variable in some code block.
	//for this hands-on-exercise, create a func which "encloses" the scope of a variable
	f:= foo()
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())
	fmt.Println(f())

	g:= foo()
	fmt.Println(g())
	fmt.Println(g())
	fmt.Println(g())
	fmt.Println(g())
	fmt.Println(g())
}

//best example of closure , don't forget it
func foo() func() int {
	x := 0
	return func() int {
		x++
		return x
	}
}
