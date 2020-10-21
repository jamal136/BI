CREATE TABLE [dbo].[DepartmentHistory] (
    [DeptID]       INT           NOT NULL,
    [DeptName]     VARCHAR (60)  NOT NULL,
    [DeptName2]    VARCHAR (60)  NULL,
    [DeptName3]    VARCHAR (60)  NULL,
    [ManagerID]    INT           NULL,
    [ParentDeptID] INT           NULL,
    [SysStartTime] DATETIME2 (7) NOT NULL,
    [SysEndTime]   DATETIME2 (7) NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_DepartmentHistory_ID_PERIOD_COLUMNS]
    ON [dbo].[DepartmentHistory]([SysEndTime] ASC, [SysStartTime] ASC, [DeptID] ASC);


GO
CREATE CLUSTERED COLUMNSTORE INDEX [IX_DepartmentHistory]
    ON [dbo].[DepartmentHistory];

