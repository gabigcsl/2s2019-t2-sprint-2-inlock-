using Senai.InLock.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.Repositories
{
    public class EstudiosRepository
    {
        public List<Estudios> Listar ()
        {
            using (InLockContext ctx = new InLockContext())
            {
                return ctx.Estudios.ToList();
            }
        }

        public void Cadastrar (Estudios estudios)
        {
            using (InLockContext ctx = new InLockContext())
            {
                ctx.Estudios.Add(estudios);
            }
        }

        public Estudios BuscarPorId(int id)
        {
            using (InLockContext ctx = new InLockContext())
            {
                return ctx.Estudios.FirstOrDefault(x => x.IdEstudio == id);
            }
        }

        public void Deletar (int id)
        {
            using (InLockContext ctx = new InLockContext())
            {
                Estudios estudios = ctx.Estudios.Find(id);
                ctx.Estudios.Remove(estudios);
                ctx.SaveChanges();
            }
        }

        public void Atualizar (Estudios estudios)
        {
            using (InLockContext ctx = new InLockContext())
            {
                Estudios estudioBuscado = ctx.Estudios.FirstOrDefault(x => x.IdEstudio == estudios.IdEstudio);
                ctx.Estudios.Update(estudios);
                ctx.SaveChanges();
            }
        }
    }
}
