package main

import (
	"fmt"
	"sort"
	//"sort"
)

func main() {

	strArr := []string{"Colorado", "Utah", "Wisconsin", "Oregon"}

	
	RemainderSorting(strArr)	
}

func RemainderSorting(strArr []string) []string {
	mapArr := make(map[int]string)
	arrRemainder := []int{}
	remainder := 3
	for i := 0; i < len(strArr); i++ {
		mapArr[len(strArr[i]) % remainder] = strArr[i]
		arrRemainder = append(arrRemainder, len(strArr[i])%remainder)
	}
	
	//sort keys
	sort.Ints(arrRemainder)
	fmt.Println(mapArr)
	
	return strArr
}

func RemainderSortingOld(strArr []string) []string {

	remainder := 3
	arrRemainder := []int{}
	nameHolder := []string{}

	for i := 0; i < len(strArr); i++ {
		arrRemainder = append(arrRemainder, len(strArr[i])%remainder)
		nameHolder = append(nameHolder, strArr[i])
	}

	var sorted bool
	for !sorted {
		sorted = true
		for i := 0; i < len(arrRemainder)-1; i++ {
			if arrRemainder[i] > arrRemainder[i+1] {
				arrRemainder[i], arrRemainder[i+1] = arrRemainder[i+1], arrRemainder[i]
				//nameHolder[i], nameHolder[i+1] = nameHolder[i+1], nameHolder[i]
				sorted = false
			}

			// if arrRemainder[i] == arrRemainder[i+1] {
			// 	if nameHolder[i][0:1] > nameHolder[i+1][0:1] {
			// 		nameHolder[i], nameHolder[i+1] = nameHolder[i+1], nameHolder[i]
			// 	}
			// }
		}
	}
	//sort.Strings(nameHolder)
	return nameHolder
}
