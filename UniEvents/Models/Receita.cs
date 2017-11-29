using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UniEvents.Models
{
    public class Receita
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public double Valor { get; set; }
        public DateTime Data { get; set; }
        public bool Situacao { get; set; } 
    }
}