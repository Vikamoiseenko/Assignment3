<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PersonKey" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PersonKey" HeaderText="PersonKey" InsertVisible="False" ReadOnly="True" SortExpression="PersonKey" />
                <asp:BoundField DataField="PersonLastName" HeaderText="PersonLastName" SortExpression="PersonLastName" />
                <asp:BoundField DataField="PersonFirstName" HeaderText="PersonFirstName" SortExpression="PersonFirstName" />
                <asp:BoundField DataField="PersonUsername" HeaderText="PersonUsername" SortExpression="PersonUsername" />
                <asp:BoundField DataField="PersonPlainPassword" HeaderText="PersonPlainPassword" SortExpression="PersonPlainPassword" />
                <asp:BoundField DataField="Personpasskey" HeaderText="Personpasskey" SortExpression="Personpasskey" />
                <asp:BoundField DataField="PersonEntryDate" HeaderText="PersonEntryDate" SortExpression="PersonEntryDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" SelectCommand="SELECT * FROM [Person]"></asp:SqlDataSource>
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PersonKey" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                PersonKey:
                <asp:Label ID="PersonKeyLabel1" runat="server" Text='<%# Eval("PersonKey") %>' />
                <br />
                PersonLastName:
                <asp:TextBox ID="PersonLastNameTextBox" runat="server" Text='<%# Bind("PersonLastName") %>' />
                <br />
                PersonFirstName:
                <asp:TextBox ID="PersonFirstNameTextBox" runat="server" Text='<%# Bind("PersonFirstName") %>' />
                <br />
                PersonUsername:
                <asp:TextBox ID="PersonUsernameTextBox" runat="server" Text='<%# Bind("PersonUsername") %>' />
                <br />
                PersonPlainPassword:
                <asp:TextBox ID="PersonPlainPasswordTextBox" runat="server" Text='<%# Bind("PersonPlainPassword") %>' />
                <br />
                Personpasskey:
                <asp:TextBox ID="PersonpasskeyTextBox" runat="server" Text='<%# Bind("Personpasskey") %>' />
                <br />
                PersonEntryDate:
                <asp:TextBox ID="PersonEntryDateTextBox" runat="server" Text='<%# Bind("PersonEntryDate") %>' />
                <br />
                PersonUserPassword:
                <asp:TextBox ID="PersonUserPasswordTextBox" runat="server" Text='<%# Bind("PersonUserPassword") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                PersonLastName:
                <asp:TextBox ID="PersonLastNameTextBox" runat="server" Text='<%# Bind("PersonLastName") %>' />
                <br />
                PersonFirstName:
                <asp:TextBox ID="PersonFirstNameTextBox" runat="server" Text='<%# Bind("PersonFirstName") %>' />
                <br />
                PersonUsername:
                <asp:TextBox ID="PersonUsernameTextBox" runat="server" Text='<%# Bind("PersonUsername") %>' />
                <br />
                PersonPlainPassword:
                <asp:TextBox ID="PersonPlainPasswordTextBox" runat="server" Text='<%# Bind("PersonPlainPassword") %>' />
                <br />
                Personpasskey:
                <asp:TextBox ID="PersonpasskeyTextBox" runat="server" Text='<%# Bind("Personpasskey") %>' />
                <br />
                PersonEntryDate:
                <asp:TextBox ID="PersonEntryDateTextBox" runat="server" Text='<%# Bind("PersonEntryDate") %>' />
                <br />
                PersonUserPassword:
                <asp:TextBox ID="PersonUserPasswordTextBox" runat="server" Text='<%# Bind("PersonUserPassword") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PersonKey:
                <asp:Label ID="PersonKeyLabel" runat="server" Text='<%# Eval("PersonKey") %>' />
                <br />
                PersonLastName:
                <asp:Label ID="PersonLastNameLabel" runat="server" Text='<%# Bind("PersonLastName") %>' />
                <br />
                PersonFirstName:
                <asp:Label ID="PersonFirstNameLabel" runat="server" Text='<%# Bind("PersonFirstName") %>' />
                <br />
                PersonUsername:
                <asp:Label ID="PersonUsernameLabel" runat="server" Text='<%# Bind("PersonUsername") %>' />
                <br />
                PersonPlainPassword:
                <asp:Label ID="PersonPlainPasswordLabel" runat="server" Text='<%# Bind("PersonPlainPassword") %>' />
                <br />
                Personpasskey:
                <asp:Label ID="PersonpasskeyLabel" runat="server" Text='<%# Bind("Personpasskey") %>' />
                <br />
                PersonEntryDate:
                <asp:Label ID="PersonEntryDateLabel" runat="server" Text='<%# Bind("PersonEntryDate") %>' />
                <br />
                PersonUserPassword:
                <asp:Label ID="PersonUserPasswordLabel" runat="server" Text='<%# Bind("PersonUserPassword") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:Button ID="Next" runat="server" OnClick="Button1_Click" Text="Next" />
    </form>
</body>
</html>
