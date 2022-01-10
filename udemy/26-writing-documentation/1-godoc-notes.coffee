 ▣ go doc prints the documentation for a package , const, func, type, var or method
    - go doc accepts zero, one, or two arguments
    - zero
        - prints package documentation for the package in the current directory
            - go doc
    
    for example : go doc fmt 
                  go doc fmt Stringer / go doc fmt.Stringer
                  go doc json.Number (write about number paramter in this package)
                  go doc json.Number.Float64
    - one
        - arguments Go-syntax-like representation of item to be documented
        - fyi : <sym> also known as "identifier"
            - go doc <pkg>
            - go doc <sym>[.<method>]
            - go doc [<pkg>.]<sym>[.<method>]

        - the first item in this list that succeeds is the one whose documentation printed,
        if there is a symbol but no package, the package in the current directory is chosen,
        however if the argument begins with a capital letter it is always assumed to be a 
        symbol in the current directory

    - two
        - first argument must be a full package path
            - go doc <pkg> <sym>[.<method>]



  ▣ godoc
    godoc extracts and generates documentation for Go programs, it has two 
       ▣ without -http flag
         ▣ command-line mode; prints text documentation to standard out 
         ▣ - src flag
             ▣ godoc prints the exported interface of a package in Go 