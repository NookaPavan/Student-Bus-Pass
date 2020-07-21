<%@ Page Title="" Language="C#" MasterPageFile="~/Bus-Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication12.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<p  class="h1" style="font-size: 50px; text-align: center; color: springgreen"></p>
	<p  class="h1" style="font-size: 50px; text-align: center; color: springgreen">&nbsp;</p>
	<br/><br/><br/><br/>
	<form  runat="server">
	<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
									  <li role="presentation" class="active" style="left: 0px; top: -2px; width: 94px">
										<a href="#step1" aria-controls="flights" role="tab" data-toggle="tab">SetUp</a>
									  </li>
									  <li role="presentation">
										   <a href="#step2" aria-controls="hotels" role="tab" data-toggle="tab">Personal</a>
									  </li>
									  <li role="presentation">
										   <a href="#step3" aria-controls="packages" role="tab" data-toggle="tab">Contact</a>
									  </li>
								   </ul>

								   
									<div class="tab-content">
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane active" id="step1">
										<div class="row">
											
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field center-block">
													<label for="registerid">UserID:</label>
													<asp:TextBox  runat="server" class="form-control" ID ="registerid" placeholder="Enter your User ID"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="registerpwd">Password:</label>
													<asp:TextBox ID="registerpwd" class="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
													
												</div>
											</div>
											
											
										</div>
									 </div>
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane " id="step2">
										<div class="row">
											<div class="col-xxs-12 col-xs-12 mt">
												<div class="input-field">
													<label for="registername">Name:</label>
													<asp:TextBox class="form-control"  runat="server" id="registername" placeholder="Enter your Name"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="registerdate">DOB:</label>
													<asp:TextBox TextMode="Date" class="form-control" runat="server" id="registerdate" ></asp:TextBox>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="currentsem">Current Semester:</label>
													<%--<select class="cs-select cs-skin-border">
														<option value="" disabled selected>1</option>
														<option value="">2</option>
														<option value="">3</option>
														<option value="">4</option>
														<option value="">5</option>
														<option value="">6</option>
														<option value="">7</option>
														<option value="">8</option>
													</select>--%>	
													<asp:DropDownList class="cs-select cs-skin-border" ID="currentsem" runat="server">
														<asp:ListItem>1</asp:ListItem>
														<asp:ListItem>2</asp:ListItem>
														<asp:ListItem>3</asp:ListItem>
														<asp:ListItem>4</asp:ListItem>
														<asp:ListItem>5</asp:ListItem>
														<asp:ListItem>6</asp:ListItem>
														<asp:ListItem>7</asp:ListItem>
														<asp:ListItem>8</asp:ListItem>

													</asp:DropDownList>											
											</div>
											</div>
											<div class="col-sm-12 mt">
												<div class="input-field">
													<label for="registerage">Age:</label>
													<asp:TextBox id="registerage"  runat="server" class="form-control"  placeholder="Your Age"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="gender">Gender:</label>                                                    
												
												
													<asp:RadioButtonList class="form-check-input" ID="gender" runat="server">
														<asp:ListItem>&nbsp;&nbsp;Male</asp:ListItem>
														<asp:ListItem>&nbsp;&nbsp;Female</asp:ListItem>
													 </asp:RadioButtonList>
													
												</div>
											</div>
											
											
										</div>
									 </div>
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane " id="step3">
										<div class="row">
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="registreaddress">Address:</label>
													<asp:TextBox class="form-control" runat="server" ID="registreaddress" placeholder="your Address" TextMode="MultiLine"></asp:TextBox>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="email">E-Mail:</label>
													<asp:TextBox runat="server" class="form-control" ID ="email" placeholder="your Email" TextMode="Email"></asp:TextBox>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="no">Mobile No:</label>
													<asp:TextBox runat="server" TextMode="Phone" class="form-control" ID ="no" placeholder="your Number"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-xs-12">
												<asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Text="Register" OnClick="Button1_Click1" ></asp:Button>
												
											</div>
										</div>
									 </div>
									</div>

								</div>
   
	</form>
	
</asp:Content>
