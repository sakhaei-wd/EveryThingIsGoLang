-- brief history of concurrecny in go : 
Go the go programming language is the first major software programming language ever to have been written
ever to have been built to natively take advantage of multiple cores, all of the other programming
all of the other programming
languages up to that point, C, C++, C, Sharp, Java, JavaScript, Python, whatever you want to
throw into that mix.
They were all built prior to 2006, all built prior to widely available in the open marketplace.
Widely available multiple core processors only go only the go programming language was built after multiple
cores became available.
And I think it's no coincidence that in 2006 dual cores became widely available.
And in 2007, Google started to build a programming language to natively take advantage of multiple
cores.
And that makes a huge and significant difference in how we do concurrency with the go programming language.
So 2006, Intel released, widely released in the open marketplace, the first dual core processors.
2007, Google began work on creating the go programming language.
March 2012, the go programming language version one was released and open source.


parallelism : 
If you write code and go and you run that code on a machine that only has one CPU, your code is not
going to run in parallel.
It's going to run sequentially.
One instruction right after the other because you only have one CPU.

concurrecny : 
concurrency is a design pattern.

So in parallel you can have like four threads of instruction executing at the same time executing in
parallel.
But concurrency, "which is a design pattern, which is a way that we write code", does not guarantee
that your code is going to run in parallel parallelism.

What makes the determination as to whether or not your code runs in parallel?

    1- One of the primary factors is if you have more than one CPU, you've got to have one more than one CPU.
    so if you have more than one CPU, then your your odds are increased that you're going to be able
    to run your concurrent code in parallel.

But I think you'll be amazed at how easy it is to launch code and make it become concurrent.


== also watch this video later : 
Concurrency is not Parallelism by Rob Pike :
    https://www.youtube.com/watch?v=oV9rvDllKEg
