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
    public partial class ListViewPersonas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // El tipo devuelto puede ser modificado a IEnumerable, sin embargo, para ser compatible con
        //paginación y ordenación // , se deben agregar los siguientes parametros:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<NuevasCaracteristicasAsp.Net45.Models.Persona> lstPersonas_GetData()
        {
            return RepositorioPersona.GetPersonas();
        }

        // El nombre de parámetro del id. debe coincidir con el valor DataKeyNames establecido en el control
        public void lstPersonas_UpdateItem(int id)
        {
            NuevasCaracteristicasAsp.Net45.Models.Persona item = RepositorioPersona.GetPersonas().Find(f => f.Id == id);

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
                // Guarde los cambios aquí, por ejemplo MyDataLayer.SaveChanges();

            }
        }
    }
}