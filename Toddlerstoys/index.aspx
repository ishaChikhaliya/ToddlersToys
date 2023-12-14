<%@ Page Title="" Language="C#" MasterPageFile="~/Toddlerstoys/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Kid_s_Garment_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
    
    </style>
    <center>
    <div class="marquee">
        <marquee behavior="alternate" direction="left" slide scroll="slide scroll">
        <img src="../Pictures/Saved Pictures/look-lights-holiday-tree-wallpaper-preview.jpg" width="200" height="200"/>
        <img src="../Pictures/Saved Pictures/wallpaper2.jpg" width="200" height="200"/>
        <img src="../Pictures/Saved Pictures/wallpaper3.jpg" width="200" height="200"/>
        <img src="../Pictures/Saved Pictures/wallpaper4.jpg" width="200" height="200"/>
    </div>
        </marquee>
    </center>
    <hr />
    <center>
    <div style="border:1px";>
    
    <h1>Toys for Boys</h1>
        <hr />
    <asp:DataList ID="DataList1" runat="server" AlternatingItemStyle-HorizontalAlign="Center" RepeatColumns="5" DataSourceID="SqlDataSource1" DataKeyField="product_id">
    <AlternatingItemStyle HorizontalAlign="Center"></AlternatingItemStyle>
        <ItemTemplate>

            <table border="1" style="padding:10px;margin-left:20px; text-align:center;">
                <tr>
                    <td style="border:none"><asp:Image ID="product_imgLabel" runat="server" Height="250px" Width="200px" ImageUrl='<%# Eval("product_img") %>' /></td></tr>
                <tr>
                    <td style="border:none"><asp:Label ID="product_nameLabel" style="font-size:20px;" runat="server" Text='<%# Eval("product_name") %>' /></td>
                </tr>
                <tr>
                    <td style="border:none">Price: <asp:Label ID="product_priceLabel" Text='<%# Eval("product_price") %>' runat="server" /></td>
                </tr>
                <tr>
                    <td style="border:none;">Quantity: <asp:Label ID="product_quantityLabel" runat="server" Text='<%# Eval("product_quantity") %>' /></td>
                </tr>
                <tr>
                    <td style="border:none;"><button id="btn" onclick="btn_click"><a href="view_detail.aspx?pid=<%# Eval("product_id") %>">View Detail</a></button></td>
                </tr>
            </table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ItemTemplate>
        
        </asp:DataList>
    
    </div>           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KGConnectionString %>" SelectCommand="SELECT [product_id], [product_img], [product_name], [product_price], [product_quantity] FROM [product] WHERE (([product_category] = @product_category) AND ([product_subcat] = @product_subcat))">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="product_category" Type="String" />
                <asp:Parameter DefaultValue="1" Name="product_subcat" Type="String" />
            </SelectParameters>
        
</asp:SqlDataSource>
    </center>

<center>
    <div style="border:1px";>
    
    <h1>Toys For Girls</h1>
        <hr />
    <asp:DataList ID="DataList2" runat="server" AlternatingItemStyle-HorizontalAlign="Center" RepeatColumns="5" DataSourceID="SqlDataSource2" DataKeyField="product_id">
        
    <AlternatingItemStyle HorizontalAlign="Center"></AlternatingItemStyle>
        <ItemTemplate>

            <table border="1" style="padding:10px;margin-left:20px; text-align:center;">
                <tr>
                    <td style="border:none"><asp:Image ID="product_imgLabel" runat="server" Height="250px" Width="200px" ImageUrl='<%# Eval("product_img") %>' /></td></tr>
                <tr>
                    <td style="border:none"><asp:Label ID="product_nameLabel" style="font-size:20px;" runat="server" Text='<%# Eval("product_name") %>' /></td>
                </tr>
                <tr>
                    <td style="border:none">Price: <asp:Label ID="product_priceLabel" Text='<%# Eval("product_price") %>' runat="server" /></td>
                </tr>
                <tr>
                    <td style="border:none;">Quantity: <asp:Label ID="product_quantityLabel" runat="server" Text='<%# Eval("product_quantity") %>' /></td>
                </tr>
                <tr>
                    <td style="border:none;"><button id="btn" onclick="btn_click"><a href="view_detail.aspx?pid=<%# Eval("product_id") %>">View Detail</a></button></td>
                </tr>
            </table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ItemTemplate>
        
        </asp:DataList>
    
    </div>           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KGConnectionString %>" SelectCommand="SELECT [product_id], [product_img], [product_name], [product_price], [product_quantity] FROM [product] WHERE (([product_category] = @product_category) AND ([product_subcat] = @product_subcat))">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="product_category" Type="String" />
                <asp:Parameter DefaultValue="2" Name="product_subcat" Type="String" />
            </SelectParameters>
        
</asp:SqlDataSource>
    </center>
       

    <script type="text/javascript">
        var myindex = 0;
        carousel();

        function carousel()
        {
            var i;
            var x = document.getElementsByClassName("myslide");

            for (i = 0; i < x.length; i++)
            {
                x[i].style.display = "none";
            }
            myindex++;

            if (myindex > x.length)
            {
                myindex = 1;
            }
            x[myindex - 1].style.display = "block";

            setTimeout(carousel, 5000)

        }
    </script>
</asp:Content>

