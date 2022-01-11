package dog

type humanYears int
type dogYears int

//Years turn humanYear into dogYears
func Years(year humanYears) dogYears {
	return dogYears(year * 7)
}
