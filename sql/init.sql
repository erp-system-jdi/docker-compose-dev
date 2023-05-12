#create databases
CREATE DATABASE IF NOT EXISTS db_01_customer_ms;
CREATE DATABASE IF NOT EXISTS db_02_sales_ms;
CREATE DATABASE IF NOT EXISTS db_03_products_ms;
-- CREATE DATABASE IF NOT EXISTS db_03_financeiro_ms;
-- CREATE DATABASE IF NOT EXISTS db_04_fornecedor_ms;
-- CREATE DATABASE IF NOT EXISTS db_05_funcionario_ms;

-- CREATE DATABASE IF NOT EXISTS sonarqube_db;

#create ms users
CREATE USER 'customer-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_01_customer_ms`.* TO 'customer-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'sales-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_02_sales_ms`.* TO 'sales-user'@'%';
FLUSH PRIVILEGES;

CREATE USER 'products-user'@'%' IDENTIFIED BY 'password';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_03_products_ms`.* TO 'products-user'@'%';
FLUSH PRIVILEGES;

-- CREATE USER 'financeiro-user'@'%' IDENTIFIED BY 'password';
-- GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_03_financeiro_ms`.* TO 'financeiro-user'@'%';
-- FLUSH PRIVILEGES;

-- CREATE USER 'fornecedor-user'@'%' IDENTIFIED BY 'password';
-- GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_04_fornecedor_ms`.* TO 'fornecedor-user'@'%';
-- FLUSH PRIVILEGES;

-- CREATE USER 'funcionario-user'@'%' IDENTIFIED BY 'password';
-- GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `db_05_funcionario_ms`.* TO 'funcionario-user'@'%';
-- FLUSH PRIVILEGES;

