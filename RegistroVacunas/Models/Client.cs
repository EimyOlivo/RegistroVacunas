using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace RegistroVacunas.Models
{
    public partial class Client
    {
        public Client()
        {
            Vacunas = new HashSet<Vacunas>();
        }

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cedula { get; set; }
        public string Telefono { get; set; }
        public string FechaNacimiento { get; set; }
        public string Provincia { get; set; }

        public string Longitud { get; set; }

        public string latitud { get; set; }

        public virtual ICollection<Vacunas> Vacunas { get; set; }
    }
}
