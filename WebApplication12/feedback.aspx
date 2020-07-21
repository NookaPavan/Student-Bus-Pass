<%@ Page Title="" Language="C#" MasterPageFile="~/Bus-Master.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WebApplication12.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br/><br/><br/>

    <form  runat="server">
    <div class="container ">
    <div class="row animate-box">
    <div class="col-lg-4 col-lg-offset-4 ">
        <div class=" input-field">
            <label for="name" style="color:#5a5a5a">Name:</label>
            <asp:TextBox ID="name" class="form-control" runat="server" placeholder="Enter your Name"></asp:TextBox>
<%--            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="!" ControlToValidate="name"></asp:RequiredFieldValidator>--%>
            
        </div>
    <br/>
        <div>
            <div class=" input-field">
                <label for="mail" style="color:#5a5a5a">Email:</label>
                <asp:TextBox ID="mail" TextMode="Email" class="form-control" runat="server" placeholder="your Email"></asp:TextBox>
<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="!" ControlToValidate="mail"></asp:RequiredFieldValidator>--%>

            </div>
        </div><br/>
        <div >
            <div class=" input-field">
                <label for="msg" style="color: #5a5a5a">Your Message:</label>
                <textarea class="form-control" id="msg" placeholder="Give Your Feedback" runat="server"></textarea>
<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="!" ControlToValidate="msg"></asp:RequiredFieldValidator>--%>

            </div>
        </div><br/><br/><br/><br/>
        <div >
            <asp:Button  class="btn btn-danger btn-block" runat="server" Text="Submit" OnClick="Unnamed1_Click" />
            
        </div>
    </div>
   </div>
    </div>
    </form>
</asp:Content>
