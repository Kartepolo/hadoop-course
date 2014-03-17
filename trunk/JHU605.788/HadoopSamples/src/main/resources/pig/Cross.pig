--Cross.pig
posts = LOAD 'examples_input/user-posts.txt' USING PigStorage(',') AS (user:chararray,post:chararray,date:long);
likes = LOAD 'examples_input/user-likes.txt' USING PigStorage(',') AS (user:chararray,likes:int,date:long);
userInfo = CROSS posts, likes;
DUMP userInfo;