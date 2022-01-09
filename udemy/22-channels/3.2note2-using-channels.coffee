Using Channels : 

    ▣ create general channels
        ▢ in funcs you can specify        
            □ receive channel            
                ■ you can receive values from the channel
                ■ a receive channel parameter
                ■ in the func, you can only pull values from the channel
                ■ you can't close a receive channel

            □ send channel            
                ■ you can push values to the channel
                ■ you can't receive / pull / read from the channel
                ■ you can only push values to the channel

Range : 
▣ range stops reading from a channel when the channel is closed
    code : close a channel : 
        https://go.dev/play/p/t1rc8rSrMd
    
    code : range over a channel 
        https://go.dev/play/p/tUVjK5QSQB