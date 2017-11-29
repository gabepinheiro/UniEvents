using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UniEvents.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public string Email { get; set; }
        public DateTime DataNascimento { get; set; }
        public String Senha { get; set; }

        public string bla { get; set; }
    }
}