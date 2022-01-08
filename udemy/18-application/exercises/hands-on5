package main

import (
	"fmt"
	"sort"
)

func main() {

	//exercise5
	//starting with this code, sort the []user by age, last
	//also sort each []string "Sayings" for each user
	//print everything out using the range clause and in a way that is pleasant
	p1 := Person{Last: "James", Age: 32}
	p3 := Person{Last: "CR7", Age: 32}
	p2 := Person{Last: "MoneyPenny", Age: 27}

	people := []Person{p1, p2, p3}
	sort.Sort(byAge(people))

	for _,v := range people{
		fmt.Println(v)
	}
}

type byAge []Person

func (s byAge) Len() int {
	return len(s)
}
func (s byAge) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
func (s byAge) Less(i, j int) bool {
	if s[i].Age == s[j].Age {
		return s[i].Last < s[j].Last
	}
	return s[i].Age < s[j].Age
}

type Person struct {
	Last string
	Age  int
}
