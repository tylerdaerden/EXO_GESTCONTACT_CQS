-- Le non est CSP pour (Contact Stored Procedure) un autre nom était acceptable of course --

CREATE PROCEDURE [dbo].[CSP_Register]
	@Email NVARCHAR(384),
	@Passwd BINARY(64)
AS
BEGIN
/*
	Petit test des valeurs
*/
	SELECT Id,Nom,Prenom, @Email AS Email
	FROM Utilisateur
	WHERE Email = @Email AND Passwd = HASHBYTES( 'SHA2_512', CONCAT( dbo.CSF_GetPreSalt(),@Passwd,dbo.CSF_GetPostSalt() ) );
RETURN 0
END
