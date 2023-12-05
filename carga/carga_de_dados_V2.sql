-- Carga de dados para o último usuário cadastrado
-- PS: Atualizado para sintaxe MariaDB
-- By: Elvis Lima

set @iduser := (select max(ID_USER ) as result from TB_USER);
select @iduser;

INSERT INTO TB_BUDGET (BUDGET, VALUE_SAVED, SPENDING_LIMIT_ECONOMY, ID_USER)
	VALUES (6000, 0, 600, @iduser);

INSERT INTO TB_EXPENSES (DATE_REFERENCE, VALUE, ID_USER, ID_EXP_TYPE, STATUS)
	VALUES
('2023-12-04 20:41:33',	120, @iduser, 1, 'A'),
('2023-12-04 20:42:01', 100, @iduser, 2, 'A'),
('2023-12-04 20:41:35', 300, @iduser, 3, 'A'),
('2023-12-04 20:41:56',	100, @iduser, 4 , 'A'),
('2023-12-04 20:41:59', 100, @iduser, 5, 'A'),
('2023-12-04 20:42:04', 50, @iduser, 6, 'A'),
('2023-12-04 20:41:38', 1500, @iduser, 7, 'A'),
('2023-12-04 20:42:06', 200, @iduser, 8, 'A'),
('2023-12-04 20:41:47', 100, @iduser, 14, 'A'),
('2023-11-01 20:41:33', 120, @iduser, 1, 'A'),
('2023-11-02 20:42:01', 100, @iduser, 2, 'A'),
('2023-11-03 20:41:35', 300, @iduser, 3, 'A'),
('2023-11-04 20:41:56', 100, @iduser, 4 , 'A'),
('2023-11-05 20:41:59', 100, @iduser, 5, 'A'),
('2023-11-06 20:42:04', 50, @iduser, 6, 'A'),
('2023-11-07 20:41:38', 1500, @iduser, 7, 'A'),
('2023-11-08 20:42:06', 200, @iduser, 8, 'A'),
('2023-11-09 20:41:47', 100, @iduser, 14, 'A'),
('2023-10-01 20:41:33', 120, @iduser, 1, 'A'),
('2023-10-02 20:42:01', 100, @iduser, 2, 'A'),
('2023-10-03 20:41:35', 300, @iduser, 3, 'A'),
('2023-10-04 20:41:56', 100, @iduser, 4 , 'A'),
('2023-10-05 20:41:59', 100, @iduser, 5, 'A'),
('2023-10-06 20:42:04', 50, @iduser, 6, 'A'),
('2023-10-07 20:41:38', 1500, @iduser, 7, 'A'),
('2023-10-08 20:42:06', 200, @iduser, 8, 'A'),
('2023-10-09 20:41:47', 100, @iduser, 14, 'A'),
('2023-09-01 20:41:33', 120, @iduser, 1, 'A'),
('2023-09-02 20:42:01', 100, @iduser, 2, 'A'),
('2023-09-03 20:41:35', 300, @iduser, 3, 'A'),
('2023-09-04 20:41:56', 100, @iduser, 4 , 'A'),
('2023-09-05 20:41:59', 100, @iduser, 5, 'A'),
('2023-09-06 20:42:04', 50, @iduser, 6, 'A'),
('2023-09-07 20:41:38', 1500, @iduser, 7, 'A'),
('2023-09-08 20:42:06', 200, @iduser, 8, 'A'),
('2023-09-09 20:41:47', 100, @iduser, 14, 'A'),
('2023-08-01 20:41:33', 120, @iduser, 1, 'A'),
('2023-08-02 20:42:01', 100, @iduser, 2, 'A'),
('2023-08-03 20:41:35', 300, @iduser, 3, 'A'),
('2023-08-04 20:41:56', 100, @iduser, 4 , 'A'),
('2023-08-05 20:41:59', 100, @iduser, 5, 'A'),
('2023-08-06 20:42:04', 50, @iduser, 6, 'A'),
('2023-08-07 20:41:38', 1500, @iduser, 7, 'A'),
('2023-08-08 20:42:06', 200, @iduser, 8, 'A'),
('2023-08-09 20:41:47', 100, @iduser, 14, 'A'),
('2023-07-01 20:41:33', 120, @iduser, 1, 'A'),
('2023-07-02 20:42:01', 100, @iduser, 2, 'A'),
('2023-07-03 20:41:35', 300, @iduser, 3, 'A'),
('2023-07-04 20:41:56', 100, @iduser, 4 , 'A'),
('2023-07-05 20:41:59', 100, @iduser, 5, 'A'),
('2023-07-06 20:42:04', 50, @iduser, 6, 'A'),
('2023-07-07 20:41:38', 1500, @iduser, 7, 'A'),
('2023-07-08 20:42:06', 200, @iduser, 8, 'A'),
('2023-07-09 20:41:47', 100, @iduser, 14, 'A'),
('2023-06-01 20:41:33', 120, @iduser, 1, 'A'),
('2023-06-02 20:42:01', 100, @iduser, 2, 'A'),
('2023-06-03 20:41:35', 300, @iduser, 3, 'A'),
('2023-06-04 20:41:56', 100, @iduser, 4 , 'A'),
('2023-06-05 20:41:59', 100, @iduser, 5, 'A'),
('2023-06-06 20:42:04', 50, @iduser, 6, 'A'),
('2023-06-07 20:41:38', 1500, @iduser, 7, 'A'),
('2023-06-08 20:42:06', 200, @iduser, 8, 'A'),
('2023-06-09 20:41:47', 100, @iduser, 14, 'A');

INSERT INTO TB_GOALS (DESCRIPTION, PROGRESS, ESTIMATED_DATE, ID_USER)
	VALUES ('Viajar para o exterior', 'ANDAMENTO', '2026-01-03', @iduser),
		   ('Comprar um apartamento na praia', 'ANDAMENTO', '2030-01-01', @iduser),
           ('Quitar financiamento de casa', 'ANDAMENTO', '2025-06-05', @iduser),
           ('Comprar carro', 'ANDAMENTO', '2027-06-05', @iduser),
           ('Iniciar faculdade de direito', 'ANDAMENTO', '2030-02-08', @iduser);


select * from TB_EXPENSES where ID_USER = @iduser;
select * from TB_GOALS where ID_USER = @iduser;
select * from TB_BUDGET where ID_USER = @iduser;
