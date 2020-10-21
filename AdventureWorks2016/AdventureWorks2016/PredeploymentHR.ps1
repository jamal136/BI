    $connString = "Data Source=SERVER101;Database=AdventureWorks2016;Integrated Security=True"

    #Create a SQL connection object
    $conn = New-Object System.Data.SqlClient.SqlConnection $connString

    #Attempt to open the connection
    $conn.Open()
    if($conn.State -eq "Open")
    {

	$rowcount = 
	"IF OBJECT_ID(N'tempdb..##T', N'U') IS NOT NULL        
   	DROP TABLE ##T 
	BEGIN
	SELECT * INTO ##T FROM [AdventureWorks2016].[HumanResources].[Employee]
	END"

	Invoke-Sqlcmd -ServerInstance SERVER101 -Database AdventureWorks2016 -Query $rowcount

        $conn.Close()
    }
    # We could not connect here
    # Notify connection was not in the "open" state

{
    # We could not connect here
    # Notify there was an error connecting to the database
}
