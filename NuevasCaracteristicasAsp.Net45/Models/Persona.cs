﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NuevasCaracteristicasAsp.Net45.Models
{
    public class Persona
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Dni { get; set; }
        public Pais Pais { get; set; }
        public int IdPais { get; set; }
    }
}