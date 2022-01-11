package main

import (
	"fmt"
	"github.com/sakhaei-wd/EveryThingIsGoLang/udemy/26-writing-documentation/exercises/dog"
)

func main() {
	//exercise 1
	//create a dog package. the dog package should have an exported func "Years" which
	//takes human years and turns them into dog years (1 human year = 7 dog years).
	//Document your code with comments. use this code in func main :
	// run your program and make sure it works
	// run a local server with godoc and look at your documentation

	y := dog.Years(1)
	fmt.Println(y)

	//exercise 2 
	///push the code to github, get your documentation on godoc.org and take a screenshot. 
	//delete your code from github. refresh godoc.org so that it no longer has your code.
	//tweet me your screenshot : https://twitter.com/todd_mcleod 
	
	//exercise 3
	//use godoc at the command line to look at the documentation for
}