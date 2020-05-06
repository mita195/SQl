
Backup database footdb
TO Disk = 'D:\sql\SQLTestDB.bak'
WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of SQLTestDB';

BACKUP LOG footdb TO DISK = 'D:\sql\logtest.bak';

Drop Table football_Player