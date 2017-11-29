using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UniEvents.Models
{
    public class Tarefa
    {
        public int Id { get; set; }
        public string Descricao { get; set; }
        public DateTime Prazo { get; set; }
    }
}