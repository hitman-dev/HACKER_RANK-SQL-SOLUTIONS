select Hackers.hacker_id, Hackers.name from Hackers
join Submissions
on Hackers.hacker_id = submissions.hacker_id
join Challenges
on Challenges.challenge_id = Submissions.challenge_id
join Difficulty
on Difficulty.difficulty_level = Challenges.difficulty_level
where Submissions.score = Difficulty.score
group by Hackers.hacker_id,Hackers.name having count(*)>1
order by count(*) DESC,Hackers.hacker_id;
