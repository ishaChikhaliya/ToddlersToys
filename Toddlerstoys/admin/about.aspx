<%@ Page Language="C#" MasterPageFile="~/Toddlerstoys/admin/admin_master.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Kid_s_Garment_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
       <div>
            <div>
			
			<div style="flex-align:center">
				<h2 class="sub-title">About Us</h2>
			</div>
        <div>
            <center>
                
                <asp:TextBox CssClass="contact" ID="name" TabIndex="1" placeholder="Title" runat="server"></asp:TextBox>
                <br />
                <br />
                <textarea class="contact" id="info" runat="server" tabindex="2" placeholder="Detail" rows="5" cols="40" style="line-height: 50px"></textarea>
                <br />
                <br />

                <asp:Button CssClass="btn-submit" ID="submit" TabIndex="3" runat="server" Text="Submit" OnClick="submit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="btn-cancle" ID="clear" TabIndex="4" runat="server" Text="Clear" OnClick="clear_Click" />
                
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" DataKeyNames="id" >
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                        <asp:BoundField DataField="detail" HeaderText="DETAIL" SortExpression="detail" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                        <ControlStyle BackColor="#3333CC" ForeColor="White" />
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
                
                
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KGConnectionString %>" 
                    DeleteCommand="DELETE FROM about WHERE (id = @id)" 
                    SelectCommand="SELECT id, name, detail FROM about" 
                    UpdateCommand="UPDATE about SET name = @name, detail = @detail WHERE (id = @id)">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="detail" />
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
