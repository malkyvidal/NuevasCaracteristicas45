using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NuevasCaracteristicasAsp.Net45.Models
{
    public class RepositorioPersona
    {
       private static  List<Persona> personas = new List<Persona>() { 
                new Persona{Id=1,Nombre="pepe" ,Apellido="pepa",FechaNacimiento=DateTime.Now,Dni="258963",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
                new Persona{Id=2,Nombre="eaea" ,Apellido="pig",FechaNacimiento=DateTime.Now,Dni="55855",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
                new Persona{Id=3,Nombre="chan" ,Apellido="pum",FechaNacimiento=DateTime.Now,Dni="2554568963",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
                new Persona{Id=4,Nombre="gat" ,Apellido="osa",FechaNacimiento=DateTime.Now,Dni="25898563",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
            };

       public static List<Persona> GetPersonas()
       {
            return personas;
        }
    }
}