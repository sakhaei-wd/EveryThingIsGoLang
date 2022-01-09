check this blog first : 
https://go.dev/blog/defer-panic-and-recover

▣ Defer
    A defer statement pushes a function call onto a list. The list of saved calls is executed after 
    the surrounding function returns. Defer is commonly used to simplify functions 
    that perform various clean-up actions.


    Defer statements allow us to think about closing each file right after opening it, 
    guaranteeing that, regardless of the number of return statements in the function, 
    the files will be closed.


    The behavior of defer statements is straightforward and predictable. There are three simple rules:
    

    1- A deferred function’s arguments are evaluated when the defer statement is evaluated.
         In this example, the expression “i” is evaluated when the Println call is deferred. 
         The deferred call will print “0” after the function returns.
     
        func a() {
             i := 0
             defer fmt.Println(i)
             i++
             return
        }

    2- Deferred function calls are executed in Last In First Out order after the surrounding function returns.
       This function prints “3210”:

        func b() {
            for i := 0; i < 4; i++ {
            defer fmt.Print(i)
        }

    3- Deferred functions may read and assign to the returning function’s named return values.
       In this example, a deferred function increments the return value i 
       after the surrounding function returns. Thus, this function returns 2:
        
        func c() (i int) {
            defer func() { i++ }()
            return 1
        }

▣ Panic
    Panic is a built-in function that stops the ordinary flow of control and begins panicking. 
    When the function F calls panic, execution of F stops, any deferred functions in F are executed normally, 
    and then F returns to its caller. To the caller, F then behaves like a call to panic. 
    The process continues up the stack until all functions in the current goroutine have returned, 
    at which point the program crashes. Panics can be initiated by invoking panic directly. 
    They can also be caused by runtime errors, such as out-of-bounds array accesses.

▣ Recover
    Recover is a built-in function that regains control of a panicking goroutine. Recover is only 
    useful inside deferred functions. During normal execution, a call to recover will return nil and have 
    no other effect. If the current goroutine is panicking, a call to recover will capture the value given 
    to panic and resume normal execution.


Here’s an example program that demonstrates the mechanics of panic and defer:
https://play.golang.org/p/ZocncqtwaK

so important example to clearly understand the concept of panic , defer and recover beside each other
(try to guess / find the answer before run the example)
defer ها متدهای بامرامی هستند که همیشه اجازه میدن
اونی که آخر اومده اول خروجی بده
و خودشون آخرین نفر برن بیرون

last in first out ِیا first in last out هستند





