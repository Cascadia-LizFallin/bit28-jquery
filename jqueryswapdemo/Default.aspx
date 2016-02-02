<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASP.net How to use Jquery</title>
    <!-- You need to include Jquery library -->
    <script src="jquery-1.8.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        //This will run once the page is loaded on client
        $(document).ready(function () {
            BindButtonClickEvent();
        });

        function BindButtonClickEvent() {
            $("#<%= btnSubmit.ClientID %>").click(function () {
                //In order to access server control you need to use # with the control id
                var content = $("#<%= pnlContent1.ClientID %>").html();

                //Swap the panel 1 content to panel 2
                $("#<%= pnlContent2.ClientID %>").html(content);

                return false;
            });
        }
    </script>
    <style type="text/css">
        #divContent div
        {
            margin:10px; 
            padding:10px;
            border:solid 1px green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
            <div id="divContent">
                <h3>How to Use Jquery with Server Control</h3>
                <asp:Panel ID="pnlContent1" runat="server">
                    This is some groovy content for Panel 1. When you will click the button below it will be show in Panel 2.
                </asp:Panel>

                <asp:Panel ID="pnlContent2" runat="server">
                    Panel 2 is lonely...
                </asp:Panel>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Click to Swap Panel 2 Content Using Jquery" 
                OnClientClick="return false;" />               
        </fieldset>
    </div>
    </form>
</body>
</html>
