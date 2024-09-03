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
SELECT 
    GroupMemberUserID AS User_ID, 
    GroupMemberShipRequestsID, 
    GroupID, 
    IsGroupMemberShipAccepted
FROM GroupMembershipRequests
WHERE GroupMemberUserID = 2;

-- Number 5 --
SELECT 
us.UserID, 
us.Username, 
us.FirstName, 
us.LastName
FROM Users us
JOIN Friends fr ON (us.UserID = fr.FriendWhoAdded OR us.UserID = fr.FriendBeingAdded)
WHERE (fr.FriendWhoAdded = 2 OR fr.FriendBeingAdded = 2)
AND fr.IsAccepted = TRUE AND us.UserID != 2;

-- Number 6 --
SELECT * FROM Friends
WHERE FriendWhoAdded = 1;

-- Number 7 -- 
SELECT * FROM Posts
WHERE GroupID = 2;

-- Number 8 -- 
SELECT * FROM GroupMembershipRequests 
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = FALSE;
