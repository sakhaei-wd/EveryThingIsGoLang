package main 

import (
	"fmt"	
)

type A struct {
    b *B
}

type B struct {
    c float64
} 

func SquareInPlace(a A) {
    a.b.c *= a.b.c
}


func main() {
    a := A{}
    a.b = new(B)
	a.b.c = 1.5

    fmt.Println(a.b.c) // prints 0
    SquareInPlace(a)
    fmt.Println(a.b.c) // prints 1
}