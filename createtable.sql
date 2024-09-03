-- Create Users Table
CREATE TABLE Users (
    UserID INTEGER PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Password VARCHAR(255),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Friends Table
CREATE TABLE Friends (
    FriendID INTEGER PRIMARY KEY,,
    FriendWhoAdded INT,
    FriendBeingAdded INT,
    IsAccepted BOOLEAN,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Groups Table
CREATE TABLE Groups (
    GroupID INTEGER PRIMARY KEY,,
    GroupName VARCHAR(100),
    CreatedBy INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Posts Table
CREATE TABLE Posts (
    PostID INTEGER PRIMARY KEY,,
    PostDescription VARCHAR(255),
    PostedBy INT,
    IsPublic BOOLEAN,
    IsOnlyForFriends BOOLEAN,
    GroupID INT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Group Membership Requests Table
CREATE TABLE GroupMembershipRequests (
    GroupMemberShipRequestsID INTEGER PRIMARY KEY,,
    GroupID INT,
    GroupMemberUserID INT,
    IsGroupMemberShipAccepted BOOLEAN,
    DateAccepted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
