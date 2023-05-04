-- find top 100 commenters in basketball
select count(*) from raw_reddit_comments group by author_name limit 100;

select count(*) from raw_reddit_comments;

select COUNT(*) from raw_reddit_comments where comment_is_censored = 1;