package main

import (
	"fmt"
)

//here's look at flow of program using channels

func main() {
		
		c := make(chan int,2)		 //create general channel
		
		go foo(c) //we use go to make send-receive concurrent
		bar(c)

		fmt.Println("program exits")
}

//create send-only channel
func foo(c chan <-int){ 
	c <- 42
}

//create receive-only channel
func bar(c <- chan int){ 
	fmt.Println(<-c)
}


