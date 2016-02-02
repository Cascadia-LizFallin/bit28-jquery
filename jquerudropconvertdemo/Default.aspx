<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert DropDownList to MultiSelect Box by DotNetCurry.com</title>
    <script type="text/javascript"
        src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.4.min.js">
    </script>
    <script type="text/javascript">
        $(function () {
            var $conv = $('input[id$=btnConvert]');
            var $multi = $('input[id$=btnMulti]');
            $multi.hide();

            $conv.click(function (e) {
                e.preventDefault();
                $('select[id$=DDL]').attr("multiple", "multiple");
                $conv.hide();
                $multi.show();
            });

            $multi.click(function (e) {
                e.preventDefault();
                $("#para").empty();
                $('select[id$=DDL] :selected').each(function (sel) {
                    $("#para").append($(this).text() + "<br />");
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Click on the Button to Convert DropDownList to ListBox</h2>
        <asp:DropDownList ID="DDL" runat="server" >
            <asp:ListItem Text="Item3" Value="3"></asp:ListItem>
            <asp:ListItem Text="Item1" Value="1"></asp:ListItem>
            <asp:ListItem Text="Item4" Value="4"></asp:ListItem>
            <asp:ListItem Text="Item5" Value="5"></asp:ListItem>
            <asp:ListItem Text="Item2" Value="2"></asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="btnConvert" runat="server" 
            Text="Convert To MultiSelect List" 
            ToolTip="Click to Convert" />
        <asp:Button ID="btnMulti" runat="server" 
            Text="Press Ctrl to select multiple items & Click Here" 
            ToolTip="Click Here to List Selected Values" />
        <p id="para"></p>
    </div>
    </form>
</body>
</html>
