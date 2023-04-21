-- Tabela: Tanque
Create Generator Gen_Tanque
Create Table Tanque
(
	CdTanque		SmallInt		Not Null,
	NomeTanque		VarChar(500)	Not Null,
	TipoCombustivel	VarChar(20)		Not Null,

	Constraint "pk_Tanque - 'CdTanque'"   	Primary Key (CdTanque),
	Constraint "uk_Tanque - 'NomeTanque'"	Unique (NomeTanque) Using Index "ix_Tanque - 'NomeTanque'"
)
Create Trigger Trigger_Tanque For Tanque Before Insert Position 00
As
Begin
	New.CdTanque = Gen_ID(Gen_Tanque, 01);
End

Insert Into Tanque (NomeTanque, TipoCombustivel) Values ('Tanque #1 - Gasolina', 'Gasolina')
Insert Into Tanque (NomeTanque, TipoCombustivel) Values ('Tanque #2 - Diesel', 	 'Diesel')



-- Tabela: Bomba
Create Generator Gen_Bomba
Create Table Bomba
(
	CdBomba		SmallInt		Not Null,
	NomeBomba	VarChar(500)	Not Null,
	CdTanque	SmallInt		Not Null,

	Constraint "pk_Bomba - 'CdBomba'"   Primary Key (CdBomba),
	Constraint "uk_Bomba - 'NomeBomba'"	Unique (NomeBomba) Using Index "ix_Bomba - 'NomeBomba'",
	Constraint "fk_Bomba - 'CdTanque'"	Foreign Key (CdTanque) References Tanque(CdTanque)
)
Create Trigger Trigger_Bomba For Bomba Before Insert Position 00
As
Begin
	New.CdBomba = Gen_ID(Gen_Bomba, 01);
End

Insert Into Bomba (NomeBomba, CdTanque) Values ('Bomba #1', (Select CdTanque From Tanque Where NomeTanque = 'Tanque #1 - Gasolina'))
Insert Into Bomba (NomeBomba, CdTanque) Values ('Bomba #2', (Select CdTanque From Tanque Where NomeTanque = 'Tanque #1 - Gasolina'))
Insert Into Bomba (NomeBomba, CdTanque) Values ('Bomba #3', (Select CdTanque From Tanque Where NomeTanque = 'Tanque #2 - Diesel'))
Insert Into Bomba (NomeBomba, CdTanque) Values ('Bomba #4', (Select CdTanque From Tanque Where NomeTanque = 'Tanque #2 - Diesel'))



-- Tabela: Abastecimento
Create Generator Gen_Abastecimento
Create Table Abastecimento
(
	CdAbastecimento	SmallInt		Not Null,
	Data			Timestamp		Not Null,
	CdBomba			SmallInt		Not Null,
	QtdLitros		Decimal(10, 06)	Not Null,
	Valor			Decimal(10, 02)	Not Null,
	ValorImposto	Decimal(10, 02)	Not Null,

	Constraint "pk_Abast - 'CdAbastecimento'"	Primary Key (CdAbastecimento),
	Constraint "fk_Abast - 'CdBomba'"			Foreign Key (CdBomba) References Bomba(CdBomba)
)
Create Trigger Trigger_Abastecimento For Abastecimento Before Insert Position 00
As
Begin
	New.CdAbastecimento = Gen_ID(Gen_Abastecimento, 01);
End
