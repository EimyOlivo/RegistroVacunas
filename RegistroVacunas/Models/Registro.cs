using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace RegistroVacunas.Models
{
    public partial class Registro
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cedula { get; set; }
        public string Telefono { get; set; }
        public TimeSpan FechaNacimiento { get; set; }
        public string Provincia { get; set; }
        public bool Vacuna { get; set; }
        public TimeSpan _1eraDosis { get; set; }
        public TimeSpan? _2daDosis { get; set; }
    }
}
