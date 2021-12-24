package main

import (
	"fmt"
)

func main() {

	arr := []int{15, 18, 20, 1, 2, 4, 5, 8, 9, 10}

	res := Ints(arr, 18) 
	fmt.Println(res)
}

// Ints searches for needle in data not sorted slice of ints and returns the index
// as specified by Search. The return value is the index to insert needle if needle is
// not present (it could be len(data)).
// The slice must be sorted in ascending order.
func Ints(data []int, needle int) int {

	left := 0
	right := len(data)

	if right == 0 || needle < data[0] || needle > data[right-1] {
		return -1 // Out of range
	}

	for left < right {
		mid := left + (right-left)/2

		if needle <= data[mid] {
			right = mid
		} else {
			left = mid + 1
		}
	}

	if data[right] == needle {
		return right
	}

	return -1 // Not found
}
