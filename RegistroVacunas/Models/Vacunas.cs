using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace RegistroVacunas.Models
{
    public partial class Vacunas
    {
        public int Id { get; set; }
        public int IdClient { get; set; }
        public string Type { get; set; }
        public DateTime FirstDosis { get; set; }
        public DateTime? SecondDosis { get; set; }

        public string Lon { get; set; }

        public string Lat { get; set; }

        public virtual Client IdClientNavigation { get; set; }
    }
}
