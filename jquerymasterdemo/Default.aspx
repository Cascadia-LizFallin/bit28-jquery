<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" 
AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/textboxclone.js" type="text/javascript">
    </script>
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" 
        Runat="Server">
   <div>
        <h2>Enter text in the top textbox to see it cloned in the 
        bottom textbox</h2>
        <br />
        <asp:TextBox ID="tb1" runat="server" /><br />
        <asp:TextBox ID="tb2" runat="server" />
        <br /><br /><br />
        Tip: Entering text in bottom box does not do anything.
    </div>
</asp:Content>


