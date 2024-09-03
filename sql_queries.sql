-- Number 1 -- 
SELECT * FROM Users
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

-- Number 2 -- 
SELECT 
    PostedBy AS User_ID, 
    PostID, 
    PostDescription, 
    IsPublic, 
    IsOnlyForFriends, 
    GroupID, 
    DatePosted
FROM Posts
WHERE PostedBy = 4;

-- Number 3 -- 
SELECT GroupName
FROM Groups;

-- Number 4 --
