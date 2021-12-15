package main

import (
	"context"
	"fmt"
)

// Robot navigates the warehouse floor and fetches items for packing.
type Robot struct {
	// various fields
}

func main() {

	
	
	pos, neg := adder(), adder()
		for i := 0; i < 10; i++ {
			fmt.Println(
				pos(i),
				neg(-2*i),
			)
		}

}

func adder() func(int) int {
	sum := 0
	return func(x int) int {
		sum += x
		return sum
	}
}

// AcquireRobot blocks until a Robot becomes available or until the
// context expires.
func AcquireRobot(ctx context.Context) *Robot {
	//...
	return &Robot{}
}

// Pack instructs the robot to pick up an item from its shelf and place
// it into a box that will be shipped to the customer.
// func (r *Robot) Pack(item *entity.Item, to *entity.Box) error {
// 	//...
// 	return context.TODO().Err()
//  }
