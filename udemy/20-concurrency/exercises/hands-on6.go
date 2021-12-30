package main

import (
	"fmt"
	"runtime"
)

func main() {

	//exercice6
	//create a program that prints out your OS and ARCH, Use the following command to run it :
	//go run
	//go build
	//go install

	fmt.Println("GoRoutines : ", runtime.GOARCH)
	fmt.Println("GoRoutines : ", runtime.GOOS)

}
