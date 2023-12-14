<%@ Page Title="" Language="C#" MasterPageFile="~/Toddlerstoys/MasterPage.master" AutoEventWireup="true" CodeFile="show_contact.aspx.cs" Inherits="Kid_s_Garment_show_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" />
    <form id="form1" runat="server">
        
        
            <div>
                <div>
                
                    <center>
                    <div>
                        <asp:Label ID="name" style="font-family:'Century Gothic';font:bold;font-size:xx-large;"  runat="server" Text=""></asp:Label>
                    </div>
                    <div>
                        <p style="font-size:20px;">Email: <asp:Label ID="email" style="font-family:'Arabic Typesetting';font-size:30px;" runat="server" Text=""></asp:Label></p>
                    </div>
                    <div>
                        <p style="font-size:20px;"> Phone No. <asp:Label ID="phone" style="font-family:'Arabic Typesetting';font-size:30px;" runat="server" Text=""></asp:Label></p>
                    </div>
                    <div>
                        <p style="font-size:20px;">Address: <asp:Label ID="address" style="font-family:'Arabic Typesetting';font-size:30px;" runat="server" Text=""></asp:Label></p>
                    </div>
                        </center>
                </div>
            </div>
            
        
    </form>
</asp:Content>

