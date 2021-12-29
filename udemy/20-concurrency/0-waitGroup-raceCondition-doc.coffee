Wait Group : 
~  ~ 
.  .
 |
(  ) 
/\/\/\
Richard The Third

//===========================
Race Condition : 
race condition.
A race condition and concurrent programming is when you have shared variables and the read write gets
screwed up because you have different routines accessing those simultaneously.
And so that's what this is saying here.

simple scenario about race condition : 
https://www.youtube.com/watch?v=KF8dF1QS8Go


https://stackoverflow.com/questions/34510/what-is-a-race-condition

A race condition occurs when two or more threads can access 
shared data and they try to change it at the same time

ما ریس کاندیشن رو توی فایلهای مشترک tfs هم میبینیم
راه حل tfs چیه برای حل این مشکل؟
روشون قفل میزاره، به همین سادگی، لذا وقتی یه نفر روی یه فایل مشغوله نفر بعدی
نمیتونه اونو تغییر بده، اگر هم بده merge رخ میده

In order to prevent race conditions from occurring, you would typically put a lock around 
the shared data to ensure only one thread can access the data at a time.

//========================================
question : 
    What does the other thread do when it encounters the lock? Does it wait? Error? 

Answer : 
    Yes, the other thread will have to wait until the lock is released before it can proceed. 
    This makes it very important that the lock is released by the holding thread when it is finished with it. 
    `If it never releases it, then the other thread will wait indefinitely`

