#create databases
CREATE DATABASE IF NOT EXISTS db_01_cliente_ms;
CREATE DATABASE IF NOT EXISTS db_02_comercial_ms;
CREATE DATABASE IF NOT EXISTS db_03_financeiro_ms;
CREATE DATABASE IF NOT EXISTS db_04_fornecedor_ms;
CREATE DATABASE IF NOT EXISTS db_05_funcionario_ms;
CREATE DATABASE IF NOT EXISTS db_06_produto_ms;

#create ms users
CREATE USER 'cliente-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_01_cliente_ms`.* TO 'cliente-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'comercial-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_02_comercial_ms`.* TO 'comercial-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'financeiro-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_03_financeiro_ms`.* TO 'financeiro-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'fornecedor-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_04_fornecedor_ms`.* TO 'fornecedor-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'funcionario-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_05_funcionario_ms`.* TO 'funcionario-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'produto-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_06_produto_ms`.* TO 'produto-user'@'%';
FLUSH PRIVILEGES;