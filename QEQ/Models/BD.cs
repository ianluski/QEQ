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
        private static string connectionstring = "Server=10.128.8.16;Database=QEQC06;Uid=QEQC06; Pwd=QEQC06";
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
        public static bool Login(string Mail, string Pwd)
        {
            bool perfil = false;
            SqlConnection Conn = conectar();
            SqlCommand Consulta = Conn.CreateCommand();
            Consulta.CommandText = "sp_Login";
            Consulta.CommandType = System.Data.CommandType.StoredProcedure;
            Consulta.Parameters.AddWithValue("@mail", Mail);
            Consulta.Parameters.AddWithValue("@pass", Pwd);
            SqlDataReader Lector = Consulta.ExecuteReader();

            if(Lector.Read() == true)
            {
                perfil = true;
            }
            
            return perfil;
           
        }
    }
}