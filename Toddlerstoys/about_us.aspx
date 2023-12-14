<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Toddlerstoys/MasterPage.master" CodeFile="about_us.aspx.cs" Inherits="Kid_s_Garment_about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" />
    <form id="form1" runat="server">
        <center>
<div>
	<div>
        <div>
       
       <div>
           <asp:Label ID="name" Font-Bold="true" Font-Size="XX-Large" runat="server" Text=""></asp:Label>
       </div>
            <br /><br />
        <div>
           <asp:Image ID="img" runat="server" Width="500px" ImageUrl="../Pictures/Saved%20Pictures/istockphoto-157648447-612x612.jpg"  />
       </div>
            <br />
        <div>
           <asp:Label ID="detail" runat="server" style="font-family:'Arabic Typesetting';font-size:30px;" Text=""></asp:Label>
       </div>

</div>	
</div>
</div>
</center>
    </form>
</asp:Content>
