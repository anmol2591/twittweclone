﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label2" runat="server" Text="Tweets" ForeColor="White" BackColor="Maroon" Height="54px"  Font-Size="XX-Large"></asp:Label>
    <asp:GridView ID="gdvtweets" runat="server"  BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="17" BorderStyle="None" Height="100px" Width="630px" AutoGenerateColumns="False">
         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" BorderColor="#660033" BorderStyle="None" ForeColor="#FFFFCC" Height="50px" Width="500px" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFF99" ForeColor="#330099" Height="50px" />
        <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
        <Columns>
                <asp:TemplateField HeaderText="Tweets">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label11" Text='<%# Eval("Message") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" Text='<%# Bind("Message") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserName">
                    <ItemTemplate>
                        <asp:Label ID="Label1" Text='<%# Eval("user_id")%>' runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Time Of Creation">
                    <ItemTemplate>
                        <asp:Label ID="Label12" Text='<%# Eval("Created")%>' runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <%--<asp:TemplateField>--%>
                    <%--<ItemTemplate>
                        <asp:Label ID="Label12" Text='<%# Eval("tweet_id")%>' runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                 
            </Columns>
    </asp:GridView>
</asp:Content>

