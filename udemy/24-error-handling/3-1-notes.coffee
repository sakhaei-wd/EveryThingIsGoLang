▣ Printing and logging

    You have a few option to choose from when it comes to printing out, or logging, 
    an error message : 

    	▣ fmt.Println()
    	▣ log.Println()
    	▣ log.Fatalln()
        
            'and just look at the words, they're fatal. Fatal, man, you're dead.
            It's fatal OSX it give it some non-zero exit code, which means like things went south.

    		os.Exit()

    	▣ log.Panicln() 
            'Panic is like, oh, my gosh, we're going to have a panic. We're not dead yet.
            It's not fatal.It's a panic.'

    		deferred functions run
    		can use "recover"

    	▣ panic : func panic(v interface{})
                
        The panic built-in function stops normal execution of the current goroutine. When a function F calls panic, 
        normal execution of F stops immediately. Any functions whose execution was deferred by F are 
        run in the usual way, and then F returns to its caller. To the caller G, the invocation of F then behaves 
        like a call to panic, terminating G's execution and running any deferred functions. 
        This continues until all functions in the executing goroutine have stopped, in reverse order. 
        At that point, the program is terminated with a non-zero exit code. 
        This termination sequence is called panicking and can be controlled by the built-in function recover.'

        ▣ recover : func recover() interface{}

        The recover built-in function allows a program to manage behavior of a panicking goroutine. 
        Executing a call to recover inside a deferred function (but not any function called by it) stops 
        the panicking sequence by restoring normal execution and retrieves the error value passed to the 
        call of panic. If recover is called outside the deferred function it will not stop a panicking sequence. 
        In this case, or when the goroutine is not panicking, or if the argument supplied to panic was nil, 
        recover returns nil. Thus the return value from recover reports whether the goroutine is panicking.