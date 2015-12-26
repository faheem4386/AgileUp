
CREATE TABLE [dbo].[Actions](
	[pkActionId] [bigint] NOT NULL,
	[Action] [varchar](50) NOT NULL
)

CREATE TABLE [dbo].[Assignments](
	[pkAssignmentId] [bigint] NOT NULL,
	[fkTaskId] [bigint] NOT NULL,
	[fkCRId] [bigint] NOT NULL,
	[fkProductBacklogItemId] [bigint] NOT NULL,
	[Date of Assignment] [datetime] NOT NULL
)

CREATE TABLE [dbo].[Change Request](
	[pkCRId] [bigint] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[fkSeverityId] [bigint] NOT NULL,
	[fkPriorityId] [bigint] NOT NULL
)

CREATE TABLE [dbo].[Permissions](
	[pkPermissionsId] [bigint] NOT NULL,
	[fkRoleId] [bigint] NOT NULL,
	[fkActionId] [bigint] NOT NULL
)

CREATE TABLE [dbo].[Priority](
	[pkPriorityId] [bigint] NOT NULL,
	[Priority Level] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL
)

CREATE TABLE [dbo].[ProductBacklogItem](
	[pkProductBacklogItemId] [bigint] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[fkSeverityId] [bigint] NOT NULL,
	[fkPriorityId] [bigint] NOT NULL
)

CREATE TABLE [dbo].[Role Assignments](
	[pkRoleAssignmentId] [bigint] NOT NULL,
	[fkUserId] [bigint] NOT NULL,
	[fkRoleId] [bigint] NOT NULL,
	[Assignment Date] [datetime] NOT NULL,
)

CREATE TABLE [dbo].[Roles](
	[pkRoleId] [bigint] NOT NULL,
	[Role Name] [varchar](max) NOT NULL
)
	
CREATE TABLE [dbo].[Severity](
	[pkSeverityId] [bigint] NOT NULL,
	[Severity Level] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL
 )

 CREATE TABLE [dbo].[Status](
	[pkStatusId] [bigint] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Status Description] [varchar](max) NOT NULL
)

CREATE TABLE [dbo].[Status Change](
	[pkStatusChangeId] [bigint] NOT NULL,
	[fkTaskId] [bigint] NOT NULL,
	[fkCRId] [bigint] NOT NULL,
	[fkProductBacklogItemId] [bigint] NOT NULL,
	[fkUserId] [bigint] NOT NULL,
	[Date of Change] [datetime] NOT NULL,
	[fkPreviousStatusId] [bigint] NOT NULL,
	[fkCurrentStatusId] [bigint] NOT NULL
)

CREATE TABLE [dbo].[Tasks](
	[pkTaskId] [bigint] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[fkSeverityId] [bigint] NOT NULL,
	[fkPriorityId] [bigint] NOT NULL
)

CREATE TABLE [dbo].[Users](
	[pkUserId] [bigint] NOT NULL,
	[User Name] [varchar](max) NOT NULL,
	[fkAddressId] [bigint] NOT NULL
)
