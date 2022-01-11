▣ for example look at error package (error.go) from source code: 

https://cs.opensource.google/go/go/+/refs/tags/go1.17.6:src/errors/errors.go

// Package errors implements functions to manipulate errors.
package error

// New returns an error that formats as the given text.
// Each call to New returns a distinct error value even if the text is identical.
func New(text string) error {
	return &errorString{text}
}

// errorString is a trivial implementation of error.
type errorString struct {
	s string
}



now look at the godoc.org writing about this package
https://pkg.go.dev/errors#As



▣ And it's a convention to use the name of whatever you're documenting as the first thing in the sentence.