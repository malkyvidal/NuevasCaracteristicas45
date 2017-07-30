<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="strobglytyped.aspx.cs" Inherits="NuevasCaracteristicasAsp.Net45.strobglytyped" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%--https://msdn.microsoft.com/en-us/library/bb398790.aspx--%>
    <%--https://docs.microsoft.com/en-us/aspnet/web-forms/overview/presenting-and-managing-data/model-binding/retrieving-data--%>
    <%--http://www.reddnet.net/asp-net-4-5-webforms-model-binding-selected-value-for-dropdownlist-and-listbox/--%>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GvdPersonas" AutoGenerateColumns="false"
            DataKeyNames="Id"
            ItemType="NuevasCaracteristicasAsp.Net45.Models.Persona"
            SelectMethod="GetPersonas"
            UpdateMethod="GvdPersonas_UpdateItem2"
            
          
            OnRowEditing="GvdPersonas_RowEditing"
            runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowEditButton="True" ButtonType="Button" ShowHeader="True" HeaderText="Editar"></asp:CommandField>
            </Columns>

            <FooterStyle BackColor="White" ForeColor="#333333"></FooterStyle>

            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#336666" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="White" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#487575"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#275353"></SortedDescendingHeaderStyle>
            <Columns>
                <asp:TemplateField HeaderText="Nombre">
                    
                   <ItemTemplate >
                       
                       <asp:Label runat="server" Text='<%# Item.Nombre %>'></asp:Label>
                   </ItemTemplate>
                    
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                     <ItemTemplate >
                       
                       <asp:Label runat="server" Text='<%# Item.Apellido %>'></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Nacimiento">
                    <ItemTemplate>
                          <asp:Label runat="server" Text='<%# Item.FechaNacimiento.ToString("d") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dni">
                    <ItemTemplate>
                          <asp:Label runat="server" Text='<%# Item.Dni %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pais"> 
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Item.Pais.Nombre %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                


                <asp:TemplateField HeaderText="Nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNombre" Text='<%# BindItem.Nombre %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text="<%#BindItem.Apellido %>"></asp:Label>
                      
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pais" >
                    <EditItemTemplate >
                        <asp:DropDownList   ItemType="NuevasCaracteristicasAsp.Net45.Models.Pais"  ID="ddlPais" 
                             DataValueField="IdPais"  DataTextField="Nombre"
                              SelectMethod="GetPaises"
                             
                              SelectedValue ="<%#BindItem.Pais.IdPais %>"
                              runat="server">

                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
               
                
            </Columns>
           
        </asp:GridView>
    </div>
    </form>
</body>
</html>
