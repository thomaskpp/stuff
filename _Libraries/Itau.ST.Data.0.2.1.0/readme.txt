Itau.ST.Data (reademe.txt)

Ol�! Voc� acaba de instalar em seu projeto o pacote do componente Itau.ST.Data.
Abaixo voc� encontrar� um resumo da instala��o. Para maiores detalhes consulte
a pagina da Wiki de nome Itau.ST.Data (at� o momento o caminho era "http://sscorp1.itau/sites/sass/Wiki/Paginas%20Wiki/Itau.Data.aspx")


A instala��o adicionou ao seu projeto as referencias:

-System.Data
-Itau.ST.Data

A instala��o adicionou ao arquivo de configura��o (.config) do projeto os
provedores de acesso a bancos de dados utilizando token para conex�es
do tipo:

-SqlClient
-OleDb
-Odbc. 

Algo similar a:

	<system.data>
		<DbProviderFactories>
			<add name="Itau Odbc Data Provider" invariant="Itau.Data.Odbc" description="Itau .Net Framework Data Provider for Odbc" type="Itau.ST.Data.Odbc.ItauOdbcFactory, Itau.ST.Data, Version=0.2.1.0, Culture=neutral, PublicKeyToken=0394a8e65b3f3f10" />
			<add name="Itau OleDb Data Provider" invariant="Itau.Data.OleDb" description="Itau .Net Framework Data Provider for OleDb" type="Itau.ST.Data.OleDb.ItauOleDbFactory, Itau.ST.Data, Version=0.2.1.0, Culture=neutral, PublicKeyToken=0394a8e65b3f3f10" />
			<add name="Itau SqlClient Data Provider" invariant="Itau.Data.SqlClient" description="Itau .Net Framework Data Provider for SqlServer" type="Itau.ST.Data.SqlClient.ItauSqlClientFactory, Itau.ST.Data, Version=0.2.1.0, Culture=neutral, PublicKeyToken=0394a8e65b3f3f10" />
		</DbProviderFactories>
	</system.data>



Tamb�m adicionou ao arquivo de configura��o strings de conex�o de exemplo.
Algo Similar a:


	<connectionStrings>
		<add name="Sql-ConnString-Token" connectionString="server=(local)\SQLEXPRESS;database=Northwind;User Id=;Token=" providerName="Itau.Data.SqlClient" />
		<add name="Odbc-ConnString-Token" connectionString="Driver={SQL Server};Server=.\SQLEXPRESS;Database=Northwind;UID=;Token=" providerName="Itau.Data.Odbc" />
		<add name="OleDb-ConnString-Token" connectionString="Data Source=.\SQLEXPRESS;Provider=SQLOLEDB;Initial Catalog=Northwind;User Id=;Token=" providerName="Itau.Data.OleDb" />
	</connectionStrings>


Preencha a propriedade "User Id=" com o usu�rio do banco de dados e 
a propriedade "Token=" com o token de acesso do usu�rio.


Recomendamos tamb�m a instala��o do pacote Itau.ST.Data.Sample que adiciona ao projeto um exemplo
de utiliza��o do Itau.ST.Data

