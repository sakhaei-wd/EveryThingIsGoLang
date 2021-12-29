package main

import (
	"fmt"
	"runtime"
	"sync"
)

var wg sync.WaitGroup

func main() {
	fmt.Println("OS\t", runtime.GOOS)
	fmt.Println("ARCH\t", runtime.GOARCH)
	fmt.Println("CPUs\t", runtime.NumCPU())
	fmt.Println("GoRoutines\t", runtime.NumGoroutine())
	
	//don't forget, if you have ONE cpu, your code is concurrent but
	//it's not running in parallel because you have ONE cpu
	wg.Add(1) //means we're going to wait for one thing
	go foo() //this is goroutine
	//Our control flow doesn't have to wait for this to execute it, like sends out its own 
	//good routine and it goes down here and executes bar and then it executes these and 
	//we print out

	//To get this to work, we need to use some sort of some sort of synchronization.
	//we could use a wait group.
	
	
	bar()
	//And this will come down here and wait until all the things 
	//that we've added are done. 
	wg.Wait() //means wait for foo , so if we removed it , we can't see the foo result

	fmt.Println("CPUs\t", runtime.NumCPU())
	fmt.Println("GoRoutines\t", runtime.NumGoroutine())
}

func foo() {
	for i := 0; i < 10; i++ {
		fmt.Println("foo:", i)
	}
	wg.Done()
	//Foo is going to run and then we're going to say Dudd when Foo is done, 
	//doing what we need to do, we say done.
}

func bar() {
	for i := 0; i < 10; i++ {
		fmt.Println("bar :", i)
	}	
}
