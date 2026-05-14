-- Backup do Banco de Dados "Aula"
BACKUP DATABASE Aula TO DISK = 'C:\BackupSQL\Aula.bak' WITH format, compression, stats=2

-- Retorna informações do Banco de Dados "Aula"
EXEC sp_helpdb 'Aula';

-- Coloca o Banco de Dados "Aula" Offline, derrubando antes todas as conexões
ALTER DATABASE Aula SET ONLINE WITH ROLLBACK IMMEDIATE

-- Restaura o Banco de Dados "Aula" a partir de um Backup
RESTORE DATABASE Aula FROM DISK = 'C:\BackupSQL\Aula.bak' WITH recovery, stats=2,
MOVE 'Aula' TO 'C:\MSSQL_Data\Aula.mdf',
MOVE 'Aula_log' TO 'C:\MSSQL_Data\Aula.ldf'

-- Exclui o Banco de Dados 'Aula'
DROP DATABASE Aula