<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Sum of All Checkboxes In A GridView</title>
<script type='text/javascript'
src='https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js'></script>
<script type="text/javascript">
    $(function () {
        $('input:checkbox').click(function (e) {
            calculateSum(4); // sum of 4th column
        });

        function calculateSum(colidx) {
            total = 0.0;
            $("tr:has(:checkbox:checked) td:nth-child(" + colidx + ")").each(function () {
                total += parseFloat($(this).text());
            });

            $('#tot').text("Your Total Amount Is: $" + total.toFixed(2));
        }
    });
</script>
</head>
<body>
<form id="form1" runat="server">
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
    DataKeyNames="ID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
    <Columns>  
        <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="chkSel" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ID" HeaderText="Selection"
            SortExpression="Selection" />
        <asp:BoundField DataField="AddOnType" HeaderText="Add-On Type"
            SortExpression="AddOnType" />
         <asp:BoundField DataField="AddOnCost" HeaderText="Add-On Cost"
            SortExpression="AddOnCost" HtmlEncode="False" HtmlEncodeFormatString="False" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <p id="tot" />
</div>
</form>
</body>
</html>