<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add ASP.NET CheckBox Values using jQuery (By DotNetCurry.com)</title>
    <script type="text/javascript" 
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(function () {
            var total;
            var checked = $('input:checkbox').click(function (e) {
                calculateSum();
            });

            function calculateSum() {
                var $checked = $(':checkbox:checked');
                total = 0.0;
                $checked.each(function () {
                    total += parseFloat($(this).next().text());
                });
                $('#tot').text("Your Total Amount Is: " + total.toFixed(2));
            }
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>           
        Choose the Add-Ons (in USD): <br /><br />
        <table>
            <tr>
                <td>500 MB Disk Space</td>
                <td><asp:CheckBox ID="cb1" runat="server" Text="5.23" /></td>
            </tr>
            <tr>
                <td>5 GB Bandwidth</td>
                <td><asp:CheckBox ID="cb2" runat="server" Text="2.20" /></td>
            </tr>
            <tr>
                <td>Additional Database</td>
                <td><asp:CheckBox ID="cb3" runat="server" Text="8.54" /></td>
            </tr>
            <tr>
                <td>Domain Registration</td>
                <td><asp:CheckBox ID="cb4" runat="server" Text="15.14" /></td>
            </tr>
        </table>
        <br />
        <p id="tot"></p>        
     </div>
    </form>
</body>
</html>
