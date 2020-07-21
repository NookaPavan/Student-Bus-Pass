<%@ Page Title="" Language="C#" MasterPageFile="~/Bus-Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication12.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<form  runat="server">
	<%--<div class="container ">
		<div class="row animate-box">
			<br/><br/><br/><br/>
				<div>
					<div class=" input-field">
						<label for="user" style="color:#5a5a5a">Login Type:</label>&nbsp;&nbsp;&nbsp;
						<select class="cs-select bg-default"  >
							<option value="" disabled selected  >Login </option>
							<option value="1" >Admin Login</option>
							<option value="2">Institute Login</option>
							<option value="3">Student Login</option>
							
						</select>
					 </div>
					 
				</div><br/>
				<div class=" input-field">
					<label for="loginid" style="color:#5a5a5a">User ID:</label>
					<asp:TextBox  ID ="loginid" class="form-control" runat="server" placeholder="Enter your Name"></asp:TextBox>
				  
				</div><br/>
				<div >
					<div class=" input-field">
						<label for="loginpwd" style="color: #5a5a5a">Password:</label>
						<asp:TextBox ID="loginpwd" class="form-control" runat="server" placeholder="Your Password"> </asp:TextBox>
						
					</div>
				</div><br/><br/><br/><br/>
				<div >
					<asp:Button ID="Button1" class="btn btn-danger btn-block" runat="server" Text="Login" OnClick="Button1_Click" />
				
			</div>
		</div>--%>
   

   
	<div class="container" style="margin-top: 72px">
		<div class="row">
			<div class="col-sm-5 col-md-5" style="left: 0px; top: -17px; height: 656px">
				<div class="tabulation animate-box" style=" margin-left:22em; margin-top: 5em">
					   <div style="margin:21px;">
						<div class=" input-field">
							<label for="user" >Login Type:</label>&nbsp;&nbsp;&nbsp;
							
							<asp:DropDownList ID="user" runat="server" class="cs-select cs-skin-border" style="color:#5a5a5a" placeholder="LOGIN">
								
								<asp:ListItem>Admin Login</asp:ListItem>
								<asp:ListItem>Institute Login</asp:ListItem>
								<asp:ListItem>Student Login</asp:ListItem>
							</asp:DropDownList>
						</div>
					 
						<br/>
						<div class=" input-field">
							<label for="loginid" style="color:#5a5a5a">User ID:</label>
							<asp:TextBox  ID ="loginid" class="form-control " runat="server" placeholder="Enter your ID" ></asp:TextBox>
					  
						</div><br/>
						<div >
						<div class=" input-field">
									<label for="loginpwd" style="color: #5a5a5a">Password:</label>
									<asp:TextBox ID="loginpwd" TextMode="Password" class="form-control" runat="server"  placeholder="Your Password"> </asp:TextBox>
							<%--		<input id="" class="form-control" runat="server" type="password" placeholder="Password" />--%>
						</div>
						</div><br/><br/><br/><br/>
						<div >
							<asp:Button ID="Button1" class="btn btn-danger btn-block" runat="server" Text="Login" OnClick="Button1_Click" />
					
						</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</form>
</asp:Content>
