using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace QEQ.Models
{
    public class BD
    {
        #region BD
        private static string connectionstring = "server=10.128.8.16;Database=QEQC06;user id=QEQC06; password=QEQC06;Trusted_connection=True";
        private static SqlConnection conectar()
        {
            SqlConnection a = new SqlConnection(connectionstring);
            a.Open();
            return a;
        }
        private static void desconectar(SqlConnection conexion)
        {
            conexion.Close();
        }
        #endregion
        public static 
    }
}