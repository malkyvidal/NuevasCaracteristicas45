<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewPersonas.aspx.cs" Inherits="NuevasCaracteristicasAsp.Net45.ListViewPersonas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="lstPersonas"
            ItemType="NuevasCaracteristicasAsp.Net45.Models.Persona"
            SelectMethod="lstPersonas_GetData"
            UpdateMethod="lstPersonas_UpdateItem"
            DataKeyNames="Id"
            runat="server">
            <LayoutTemplate>

                <table>
                    <thead>
                        <tr>
                            <td>
                                Nombre
                            </td>
                            <td>
                                Apellido
                            </td>
                            <td>
                                Pais
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        
                           <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                        
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                     <td>
                    <%#: Item.Nombre %> <%--los dos puntos son para html encode--%>
                </td>
                <td>
                    <%#: Item.Apellido %>
                </td>
                <td>
                    <%#: Item.Pais.Nombre %>
                </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Edit" CommandName="Update" />
                    </td>
                </tr>
                
               
            </ItemTemplate>
            <EditItemTemplate>
                 <tr>
                     <td>
                    <%# Item.Nombre %>
                </td>
                <td>
                    <%# Item.Apellido %>
                </td>
                <td>
                    <asp:DropDownList ID="ddlPais" runat="server"></asp:DropDownList>
                </td>
                </tr>
            </EditItemTemplate>

        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
