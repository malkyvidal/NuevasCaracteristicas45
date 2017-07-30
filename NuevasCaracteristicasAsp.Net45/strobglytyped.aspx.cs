using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using NuevasCaracteristicasAsp.Net45.Models;
namespace NuevasCaracteristicasAsp.Net45
{
    public partial class strobglytyped : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public List<Persona> GetPersonas()
        {
            List<Persona> personas = new List<Persona>() { 
                new Persona{Id=1,Nombre="pepe" ,Apellido="pepa",FechaNacimiento=DateTime.Now,Dni="258963",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
                new Persona{Id=2,Nombre="eaea" ,Apellido="pig",FechaNacimiento=DateTime.Now,Dni="55855",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
                new Persona{Id=3,Nombre="chan" ,Apellido="pum",FechaNacimiento=DateTime.Now,Dni="2554568963",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
                new Persona{Id=4,Nombre="gat" ,Apellido="osa",FechaNacimiento=DateTime.Now,Dni="25898563",Pais= new Pais(){IdPais=1,Nombre="Argentina"}},
            };
            return personas;
        }

        public List<Pais> GetPaises()
        {
            List<Pais> paises = new List<Pais>(){
                new  Pais {IdPais=1,Nombre="Argentina"},
                new Pais{IdPais=2,Nombre="Brasil"}
            };
            return paises;
           
        }

        // El nombre de parámetro del id. debe coincidir con el valor DataKeyNames establecido en el control
        public void GvdPersonas_UpdateItem(int id)
        {
            NuevasCaracteristicasAsp.Net45.Models.Persona item = RepositorioPersona.GetPersonas().Find(h=>h.Id==id);
           
            // Cargar el elemento aquí, por ejemplo item = MyDataLayer.Find(id);
            if (item == null)
            {
                // No se encontró el elemento
                ModelState.AddModelError("", String.Format("No se encontró el elemento con id. {0}", id));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {

                var data = item.Nombre;
                // Guarde los cambios aquí, por ejemplo MyDataLayer.SaveChanges();

            }
        }


        public void GvdPersonas_UpdateItem2(Persona p)
        {

            TryUpdateModel(p);

            
            int f = 0;
            int g = 3;
            

        }


        protected void GvdPersonas_RowEditing(object sender, GridViewEditEventArgs e)
        {



            GvdPersonas.EditIndex = e.NewEditIndex;
            //GvdPersonas.DataBind();

            //DropDownList combo = GvdPersonas.Rows[e.NewEditIndex].FindControl("ddlPais") as DropDownList;
            //combo.DataBind();

          
        }

       

        

       

       
    }
}