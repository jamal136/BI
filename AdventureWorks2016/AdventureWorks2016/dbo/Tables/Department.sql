CREATE TABLE [dbo].[Department] (
    [DeptID]       INT                                         NOT NULL,
    [DeptName]     VARCHAR (60)                                NOT NULL,
    [DeptName2]    VARCHAR (60)                                NULL,
    [DeptName3]    VARCHAR (60)                                NULL,
    [ManagerID]    INT                                         NULL,
    [ParentDeptID] INT                                         NULL,
    [SysStartTime] DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [SysEndTime]   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([DeptID] ASC),
    PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[DepartmentHistory], DATA_CONSISTENCY_CHECK=ON));

