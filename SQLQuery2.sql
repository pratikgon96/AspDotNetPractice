create database Practice

CREATE TABLE [dbo].[UserDetails] (
    [Id]          INT           NOT NULL,
    [UserName]    VARCHAR (100) NOT NULL,
    [Email]       VARCHAR (50)  NOT NULL,
    [PhoneNumber] BIGINT        NOT NULL,
    [Age]         INT           NULL,
    [Gender]      NVARCHAR(50)      NULL,
    [Department]  VARCHAR (50)  NOT NULL,
    [Password]    VARCHAR (50) NOT NULL, 
    CONSTRAINT [PK_UserDetails] PRIMARY KEY ([Id])
);

