using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace UniEvents.Models
{
    public class UniEventsContext : DbContext
    {
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Tarefa> Tarefas { get; set; }
        public DbSet <Receita> Receitas { get; set; }
        public DbSet <Despesa> Despesas { get; set; }
    }
}