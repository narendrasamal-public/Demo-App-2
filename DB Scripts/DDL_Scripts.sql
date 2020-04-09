
CREATE DATABASE TESTDB

GO

use TESTDB

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffierRAWData] (
    [PEERSONID]            INT             NOT NULL,
    [PREFIX]               NCHAR (10)      NOT NULL,
    [FIRST_NAME]           NVARCHAR (1550) NOT NULL,
    [MIDDLE_NAME]          NVARCHAR (1550) NOT NULL,
    [LAST_NAME]            NVARCHAR (1550) NOT NULL,
    [DOB]                  DATETIME        NOT NULL,
    [CompanyIDs]           NVARCHAR (1550) NOT NULL,
    [Company_Names]        NVARCHAR (1550) NOT NULL,
    [TITLE]                NVARCHAR (1550) NOT NULL,
    [TITLE_ID]             NVARCHAR (1520) NOT NULL,
    [POSITION_TITLE]       NVARCHAR (1550) NOT NULL,
    [POSITIONS_START_DATE] NVARCHAR (1550) NOT NULL,
    PRIMARY KEY CLUSTERED ([PEERSONID] ASC)
);

GO

----------------------------------------------


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_OfficeDetails] (
    [CompanyIDs]    NVARCHAR (250) NULL,
    [Company_Names] NVARCHAR (250) NULL,
    [OfficerID]     NVARCHAR (250) NULL,
    [PersonID]      NVARCHAR (250) NULL
);

GO

----------------------------------------------


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_OfficerTitle] (
    [TITLE]                NVARCHAR (500) NULL,
    [TITLE_ID]             NVARCHAR (520) NULL,
    [POSITION_TITLE]       NVARCHAR (500) NULL,
    [POSITIONS_START_DATE] NVARCHAR (500) NULL
);

GO

----------------------------------------------


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_PersonalDetails] (
    [PERSONID]    INT             NOT NULL,
    [PREFIX]      NVARCHAR (1950) NULL,
    [FIRST_NAME]  NVARCHAR (1950) NULL,
    [MIDDLE_NAME] NVARCHAR (1950) NULL,
    [LAST_NAME]   NVARCHAR (1950) NULL,
    [DOB]         NVARCHAR (1950) NULL,
    CONSTRAINT [PK_Tbl_PersonalDetails] PRIMARY KEY CLUSTERED ([PERSONID] ASC)
);

GO

/*

-- truncate tables

truncate table OffierRAWData
truncate table Tbl_PersonalDetails
truncate table Tbl_OfficeDetails
truncate table Tbl_OfficerTitle

	
-- verify data inserter or not

select * from OffierRAWData

select * from dbo.Tbl_PersonalDetails

select * from dbo.Tbl_OfficeDetails

select * from dbo.Tbl_OfficerTitle

*/



