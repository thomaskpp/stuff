using System;
using System.Configuration;
using System.Data.Common;

namespace $rootnamespace$.Data
{
    public static class DbConnectionManager
    {
         public static DbConnection CreateDbConnection(string providerName, string connectionString)
        {
            DbProviderFactory factory = DbProviderFactories.GetFactory(providerName);
            DbConnection connection = factory.CreateConnection();
            connection.ConnectionString = connectionString;
            
            return connection;
        }
        public static DbConnection CreateDbConnection(string connStringName)
        {
            var connString = ConfigurationManager.ConnectionStrings[connStringName];
            return CreateDbConnection(connString.ProviderName, connString.ConnectionString);

        }
        public static DbDataAdapter CreateDbDataAdapter(string connStringName)
        {
            var connString = ConfigurationManager.ConnectionStrings[connStringName];

            DbProviderFactory factory = DbProviderFactories.GetFactory(connString.ProviderName);
            
            return factory.CreateDataAdapter();
        }

        
    }
}
