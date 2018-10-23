using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QEQ.Models
{
    public class Perfil
    {
        private int _IdPerfil;
        private string _Mail;
        private string _Pwd;
        private bool _Admin;

        public int IdPerfil
        {
            get
            {
                return _IdPerfil;
            }
        }

        public string Mail
        {
            get
            {
                return _Mail;
            }
            set
            {
                _Mail = value;
            }
        }

        public string Pwd
        {
            get
            {
                return _Pwd;
            }
            set
            {
                _Pwd = value;
            }
        }
        public bool Admin
        {
            get
            {
                return _Admin;
            }
            set
            {
                _Admin = value;
            }
        }
        public Perfil(int IdPerfil, string Mail, string Pwd, bool Admin)
        {
            _IdPerfil = IdPerfil;
            _Mail = Mail;
            _Pwd = Pwd;
            _Admin = Admin;
        }
        public Perfil()
        {
        }
    }
}