Itau.ST.Data (reademe.txt)

Olá! Você acaba de instalar em seu projeto o pacote do componente Itau.ST.Data.
Abaixo você encontrará um resumo da instalação. Para maiores detalhes consulte
a pagina da Wiki de nome Itau.ST.Data (até o momento o caminho era "http://sscorp1.itau/sites/sass/Wiki/Paginas%20Wiki/Itau.Data.aspx")


A instalação adicionou ao seu projeto as referencias:

-System.Data
-Itau.ST.Data

A instalação adicionou ao arquivo de configuração (.config) do projeto os
provedores de acesso a bancos de dados utilizando token para conexões
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



Também adicionou ao arquivo de configuração strings de conexão de exemplo.
Algo Similar a:


	<connectionStrings>
		<add name="Sql-ConnString-Token" connectionString="server=(local)\SQLEXPRESS;database=Northwind;User Id=;Token=" providerName="Itau.Data.SqlClient" />
		<add name="Odbc-ConnString-Token" connectionString="Driver={SQL Server};Server=.\SQLEXPRESS;Database=Northwind;UID=;Token=" providerName="Itau.Data.Odbc" />
		<add name="OleDb-ConnString-Token" connectionString="Data Source=.\SQLEXPRESS;Provider=SQLOLEDB;Initial Catalog=Northwind;User Id=;Token=" providerName="Itau.Data.OleDb" />
	</connectionStrings>


Preencha a propriedade "User Id=" com o usuário do banco de dados e 
a propriedade "Token=" com o token de acesso do usuário.


Recomendamos também a instalação do pacote Itau.ST.Data.Sample que adiciona ao projeto um exemplo
de utilização do Itau.ST.Data

