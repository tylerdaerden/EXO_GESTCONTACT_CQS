-- Le non est CSP pour (Contact Stored Procedure) un autre nom était acceptable of course --

CREATE PROCEDURE [dbo].[CSP_Register]
	@Nom NVARCHAR(50),
	@Prenom NVARCHAR(50),
	@Email NVARCHAR(384),
	@Passwd NVARCHAR(30)
AS
BEGIN
/*
	Petit test des valeurs
*/
INSERT INTO [Utilisateur] ([Nom],[Prenom],[Email],[Passwd])
VALUES (@Nom,@Prenom,@Email,HASHBYTES('SHA2_512', @Passwd));
RETURN 0
END
