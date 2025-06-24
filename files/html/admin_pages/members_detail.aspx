<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master_page/admin_master_page.Master" AutoEventWireup="true" CodeBehind="members_detail.aspx.cs" Inherits="E_library.files.html.admin_pages.members_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section {
            padding-top: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        
    <div class="container">
        <h2>Members Detail</h2>
        <div class="row">
            <div class="col-12 mt-3  table-responsive" id="table_holder">
                
                <asp:GridView CssClass="table table-striped table-bordered ms-0" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_name" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                        <asp:BoundField DataField="middle_name" HeaderText="Middle Name" SortExpression="middle_name" />
                        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                        <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="ex" HeaderText="EX" SortExpression="ex" />
                        <asp:BoundField DataField="user_name" HeaderText="User Name" ReadOnly="True" SortExpression="user_name" />
                        <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        Hello there is nothing to see, Add users to see there login details.
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:well_serviceConnectionString2 %>" DeleteCommand="DELETE FROM [sign_up] WHERE [user_name] = @original_user_name AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) OR (([middle_name] = @original_middle_name) OR ([middle_name] IS NULL AND @original_middle_name IS NULL)) OR (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) OR (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) OR (([mobile_no] = @original_mobile_no) OR ([mobile_no] IS NULL AND @original_mobile_no IS NULL)) OR (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) OR (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) OR (([ex] = @original_ex) OR ([ex] IS NULL AND @original_ex IS NULL)) OR [password] = @original_password" InsertCommand="INSERT INTO [sign_up] ([first_name], [middle_name], [last_name], [age], [mobile_no], [address], [state], [ex], [user_name], [password]) VALUES (@first_name, @middle_name, @last_name, @age, @mobile_no, @address, @state, @ex, @user_name, @password)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:well_serviceConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [sign_up]" UpdateCommand="UPDATE [sign_up] SET [first_name] = @first_name, [middle_name] = @middle_name, [last_name] = @last_name, [age] = @age, [mobile_no] = @mobile_no, [address] = @address, [state] = @state, [ex] = @ex, [password] = @password WHERE [user_name] = @original_user_name AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) OR (([middle_name] = @original_middle_name) OR ([middle_name] IS NULL AND @original_middle_name IS NULL)) OR (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) OR (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) OR (([mobile_no] = @original_mobile_no) OR ([mobile_no] IS NULL AND @original_mobile_no IS NULL)) OR (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) OR (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) OR (([ex] = @original_ex) OR ([ex] IS NULL AND @original_ex IS NULL)) OR [password] = @original_password">
                    <DeleteParameters>
                        <asp:Parameter Name="original_user_name" Type="String" />
                        <asp:Parameter Name="original_first_name" Type="String" />
                        <asp:Parameter Name="original_middle_name" Type="String" />
                        <asp:Parameter Name="original_last_name" Type="String" />
                        <asp:Parameter Name="original_age" Type="String" />
                        <asp:Parameter Name="original_mobile_no" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_ex" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                    </DeleteParameters>
                    <InsertParameters >
                        <asp:Parameter Name="first_name" Type="String" />
                        <asp:Parameter Name="middle_name" Type="String" />
                        <asp:Parameter Name="last_name" Type="String" />
                        <asp:Parameter Name="age" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="ex" Type="String" />
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="first_name" Type="String" />
                        <asp:Parameter Name="middle_name" Type="String" />
                        <asp:Parameter Name="last_name" Type="String" />
                        <asp:Parameter Name="age" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="ex" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="original_user_name" Type="String" />
                        <asp:Parameter Name="original_first_name" Type="String" />
                        <asp:Parameter Name="original_middle_name" Type="String" />
                        <asp:Parameter Name="original_last_name" Type="String" />
                        <asp:Parameter Name="original_age" Type="String" />
                        <asp:Parameter Name="original_mobile_no" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_ex" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
            </div>
        </div>
    </div>
</section>
</asp:Content>
