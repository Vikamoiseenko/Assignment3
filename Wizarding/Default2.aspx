<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ServiceKey" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="ServiceKeyLabel" runat="server" Text='<%# Eval("ServiceKey") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceDescriptionLabel" runat="server" Text='<%# Eval("ServiceDescription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceMaximumLabel" runat="server" Text='<%# Eval("ServiceMaximum") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceLifetimeMaximumLabel" runat="server" Text='<%# Eval("ServiceLifetimeMaximum") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="ServiceKeyLabel1" runat="server" Text='<%# Eval("ServiceKey") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceNameTextBox" runat="server" Text='<%# Bind("ServiceName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceDescriptionTextBox" runat="server" Text='<%# Bind("ServiceDescription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceMaximumTextBox" runat="server" Text='<%# Bind("ServiceMaximum") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceLifetimeMaximumTextBox" runat="server" Text='<%# Bind("ServiceLifetimeMaximum") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="ServiceNameTextBox" runat="server" Text='<%# Bind("ServiceName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceDescriptionTextBox" runat="server" Text='<%# Bind("ServiceDescription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceMaximumTextBox" runat="server" Text='<%# Bind("ServiceMaximum") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ServiceLifetimeMaximumTextBox" runat="server" Text='<%# Bind("ServiceLifetimeMaximum") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="ServiceKeyLabel" runat="server" Text='<%# Eval("ServiceKey") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceDescriptionLabel" runat="server" Text='<%# Eval("ServiceDescription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceMaximumLabel" runat="server" Text='<%# Eval("ServiceMaximum") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceLifetimeMaximumLabel" runat="server" Text='<%# Eval("ServiceLifetimeMaximum") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">ServiceKey</th>
                                    <th runat="server">ServiceName</th>
                                    <th runat="server">ServiceDescription</th>
                                    <th runat="server">ServiceMaximum</th>
                                    <th runat="server">ServiceLifetimeMaximum</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="ServiceKeyLabel" runat="server" Text='<%# Eval("ServiceKey") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceDescriptionLabel" runat="server" Text='<%# Eval("ServiceDescription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceMaximumLabel" runat="server" Text='<%# Eval("ServiceMaximum") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ServiceLifetimeMaximumLabel" runat="server" Text='<%# Eval("ServiceLifetimeMaximum") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" SelectCommand="SELECT * FROM [CommunityService] ORDER BY [ServiceKey]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
