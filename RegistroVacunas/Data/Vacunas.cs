using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace RegistroVacunas.Data
{
    public class Vacunas
    {

        public string nombre { get; set; }
        public string apellido { get; set; }
        public string cedula { get; set; }
        public string telefono { get; set; }
        public string fecha { get; set; }
        public string provincia { get; set; }
        public string vacuna { get; set; }
        public DateTime first_dosis { get; set; }
        public DateTime sec_dosis { get; set; }
    }
}
