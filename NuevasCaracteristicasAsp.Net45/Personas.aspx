<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personas.aspx.cs" Inherits="NuevasCaracteristicasAsp.Net45.Personas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GvdPersonas"
            ItemType="NuevasCaracteristicasAsp.Net45.Models.Persona"
            SelectMethod="GetPersonas"
            DataKeyNames ="Id"
            UpdateMethod="GvdPersonas_UpdateItem"
            AutoGenerateColumns="false" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

            <Columns>
                <asp:CommandField ShowEditButton="True" ButtonType="Button"></asp:CommandField>
            </Columns>

            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
            
            <Columns>
                

                <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Dni" HeaderText="Dni" />

                <asp:TemplateField HeaderText="Pais" >
                    <ItemTemplate  >
                        <asp:Label ID="Label1" runat="server" Text='<%#Item.Pais.Nombre %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlPais" 
                            ItemType="NuevasCaracteristicasAsp.Net45.Models.Pais"
                            SelectMethod="GetPaises"
                            DataValueField="IdPais"
                            DataTextField="Nombre"
                            SelectedValue='<%#BindItem.Pais.IdPais %>'
                             runat="server"></asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
