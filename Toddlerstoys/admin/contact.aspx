<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Toddlerstoys/admin/admin_master.master" CodeFile="contact.aspx.cs" Inherits="Kid_s_Garment_admin_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
       <div>
            <div>
			
			<div style="flex-align:center">
				<h2 class="sub-title">Contact</h2>
			</div>
        <div>
            <center>
                
                <asp:TextBox CssClass="contact" ID="name" TabIndex="1" placeholder="Title" runat="server"></asp:TextBox>
                <br />
                <br />
                
                <asp:TextBox CssClass="contact" ID="email" TabIndex="2" placeholder="Email" runat="server"></asp:TextBox>
                <br />
                <br />
                
                <asp:TextBox CssClass="contact" ID="phone" TabIndex="3" placeholder="Phone No" runat="server"></asp:TextBox>
                <br />
                <br />

                <textarea class="contact" id="address" runat="server" tabindex="4" placeholder="Address" rows="5" cols="40" style="line-height: 50px"></textarea>
                <br />
                <br />

                <asp:Button CssClass="btn-submit" ID="submit" TabIndex="5" runat="server" Text="Submit" OnClick="submit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="btn-cancle" ID="clear" TabIndex="6" runat="server" Text="Clear" OnClick="clear_Click" />
                
                <br />
                <br />
                
                <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" DataSourceID="SqlDataSource1" DataKeyNames="id">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="EMAIL" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="PHONE" SortExpression="phone" />
                        <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                        <ControlStyle BackColor="#3333CC" ForeColor="White" />
                        <ItemStyle ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KGConnectionString %>" 
                    SelectCommand="SELECT [id],[name], [email], [phone], [address] FROM [contact_us]" 
                    DeleteCommand="DELETE FROM contact_us WHERE (id = @id)" 
                    UpdateCommand="UPDATE contact_us SET name = @name, email = @email, phone = @phone, address = @address WHERE (id = @id)">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="email" />
                        <asp:Parameter Name="phone" />
                        <asp:Parameter Name="address" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                
            </center>
        </div>
       </div>
    </div>
    </div>
    </form>
</asp:Content>    
