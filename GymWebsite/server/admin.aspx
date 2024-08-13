<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="GymWebsite.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #div1{
            padding-top:20px;
            padding-left:37px;
            padding-right:20px;
            padding-bottom:20px;
            display:flex;
            gap: 4rem;
        }
        #GridView1{
            width:40vw;
            /*float:left;*/

        }
         #GridView2{
            width:40vw;
            /*float:right*/
        }
    </style>
    <title></title>
</head>
<body>

        <iframe src="../components/header.html" width="100%" frameborder="0" scrolling="no" height="75px" width="1000px"></iframe>


    <form id="form1" runat="server">
    <div id="div1">
        <div class="grid">
            <div class="h1">
            <h1>Subscriptions</h1>
                </div>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LinqDataSource1">
           <Columns>
               <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
               <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
               <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no" />
               <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
               <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
           </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="GymWebsite.DataClasses1DataContext" EntityTypeName="" TableName="subscriptions">
        </asp:LinqDataSource>
            </div>

              <div class="grid">
                              <div class="h1">

                  <h1>Messages</h1>
                                  </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LinqDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                <asp:BoundField DataField="cemail" HeaderText="cemail" SortExpression="cemail" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="GymWebsite.DataClasses1DataContext" EntityTypeName="" TableName="contacts">
        </asp:LinqDataSource>
                  </div>
    </div>
    </form>
</body>
</html>
