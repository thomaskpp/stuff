using System;
using System.Configuration;
using System.Data.Common;
using System.Text;
using System.Xml;

namespace $rootnamespace$.Data
{
    public class ItauDataTest
    {
        
        public string ExecuteSample()
        {
            var sb = new StringBuilder();


            using (var xmlWriter = XmlWriter.Create(sb, new XmlWriterSettings() { Indent = true }))
            {

                xmlWriter.WriteStartElement("data");

                var SqlConnStringName = "Sql-ConnString-Token"; // Nome da string de conexão existente no .config
                using (DbConnection conn = DbConnectionManager.CreateDbConnection(SqlConnStringName))
                {
                    using (DbCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = System.Data.CommandType.Text;
                        cmd.CommandText = @"SELECT top 5 [CategoryID],[CategoryName],[Description] FROM dbo.Categories";

                        conn.Open();

                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                xmlWriter.WriteStartElement("row");


                                for (int i = 0; i < reader.FieldCount; i++)
                                {
                                    xmlWriter.WriteStartElement("field");
                                    xmlWriter.WriteAttributeString("name", reader.GetName(i).ToString());
                                    xmlWriter.WriteString(reader[i].ToString());
                                    xmlWriter.WriteEndElement();
                                }

                                xmlWriter.WriteEndElement();
                            }

                            reader.Close();
                        }
                        conn.Close();
                    }
                }

                xmlWriter.WriteEndElement(); 
            }
            

            return sb.ToString();
        }
        

        
    }
}
