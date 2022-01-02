channels and channels are a higher level order way, a better way
for synchronizing your code and writing concurrent code.
And so the best way to understand channels is just to see them.

Channels Introduction : 
    ▣ making a channel
        □ make (chan int)
    ▣ putting a value on a channel

    ▣ taking values off of a channel    
    ▣ buffered and unbuffered channels   
    ▣ channels block   
        ▢ they are like runners in a relay race   
        ▢ they have to pass / receive the value at the same time   
            □ just like runners in a relay race have to pass / receive 
            the baton to each other at the same time
                ■ one runner can't pass the baton at the one moment
                ■ and then, later, have the other runner receive the baton
                ■ the baton is passed / received by the runners at the same time
            □ the value is passed / receiveed synchronously; at the same time
    
    ▣ channels allow us to pass values between goroutines  

'
▣ about directional channels
    ▣ "send and receive" means "send and receive"
    
    ▣ send means send
        error : "invalid operation <- cs , receive from send-only type chan <- int"
    
    ▣ receive means receive
        error : "invalid operation cr <- 42 , send to receive-only type <- chan int"

    ▣ " A Channel may be constrained only to send or only to receive [general to specific]
        by conversion or assignment 

    ▣ doesn't assign
        ▣ specific to general
        ▣ specific to specific
    
    ▣ assign
        ▣ general to specific
        
    ▣ conversion : 
      - general to specific work
      - specific to general doesn't work
    
