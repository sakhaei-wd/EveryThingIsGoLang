package main

import (
	"fmt"
	"github.com/sakhaei.wd/everythingisgolang/udemy/26-writing-documentation/exercises/dog"
)

func main() {
	//exercise1
	//create a dog package. the dog package should have an exported func "Years" which
	//takes human years and turns them into dog years (1 human year = 7 dog years).
	//Document your code with comments. use this code in func main :
	// run your program and make sure it works
	// run a local server with godoc and look at your documentation

	y := dog.Years(1)
	fmt.Println(y)
}
