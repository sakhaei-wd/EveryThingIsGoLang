package main

import (
	"fmt"
)

//create a variable of type string using a raw string literal. Print it

func main() {

	//exercise 2
	//print every rune code point of the uppercase alphabet three times
	for i := 65; i <= 90; i++ {
		for j := 0; j < 3; j++ {
			fmt.Printf("%#U\n", i)
		}
	}

	//exercise 3
	//create a for-loop using this syntax : for condition {}
	// x := 20
	// for x < 30{
	// 	fmt.Println(x)
	// 	x++
	// }

	//exercise 4
	//create a for loop using this syntax : for {}
	x := 10
	for {
		if x == 20 {
			fmt.Print("x equal to 20")
			break
		}
		fmt.Print(x, " ")
		x++
	}

	//exercise 5
	//print out remainder (modulus) which is found for each number between
	//10 and 100 when it is divided by 4
	for i := 10; i < 100; i++ {
		fmt.Print(i%4, " ")
	}

	//exercise 6
	//create a program that shows the "if statement" in action
	name := "james bond"
	if name == "James" {
		fmt.Print("\n that's true")
	} else {
		fmt.Print("\n no he isn't")
	}

	//exercise 7
	//building on the previous hands-on exercise ,
	//create a program that uses "else if" and "else"
	if name == "Bond" {
		fmt.Print("\n that's true family")
	} else if name == "james bond" {
		fmt.Print("\n exactly it's true")
	}

	//exercise 8
	//create a program that uses a switch statement with no switch expression specified
	switch name {
	case "saeed":
		fmt.Print("\n shit he's saeed")
	case "majid":
		fmt.Print("\n shit he's saeed")
	}

	//exercise 9
	//create a program that uses a switch statement with the switch expression
	//specified as a variable of TYPE string with the IDENTIFIER "favSport"
	favSport := "soccer"
	switch favSport {
	case "football":
		fmt.Print("that's true")
	default:
		fmt.Print("\t you can't guess the write sport\n")
	}

	//exercise 10
	//write down what these print :
	fmt.Println(true && true)  //true
	fmt.Println(true && false) //false
	fmt.Println(true || true)  //true
	fmt.Println(true || false) //true
	fmt.Println(!true)         //false
}
