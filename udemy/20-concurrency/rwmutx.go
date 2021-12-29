package main

//now we want to prevent race-condition

import (
	"fmt"
	"runtime"
	"sync"
)

func main() {

	fmt.Println("CPUs : ", runtime.NumCPU())
	fmt.Println("GoRoutines : ", runtime.NumGoroutine())

	counter := 0
	const gs = 100
	var wg sync.WaitGroup
	wg.Add(gs)

	var mu sync.RWMutex 
	//using RWMutex helps us to seperate read lock to write lock on variable

	for i := 0; i < gs; i++ {
		go func() {
			mu.Lock()  
			//mu.RLock() so if i used RLock here , i give an error , because i lock read action
			v := counter
			runtime.Gosched()
			v++
			counter = v
			wg.Done()
			mu.Unlock()
		}()
		fmt.Println("GoRoutines : ", runtime.NumGoroutine())
	}
	wg.Wait()
	fmt.Println("GoRoutines : ", runtime.NumGoroutine())
	fmt.Println("count:", counter)
}

