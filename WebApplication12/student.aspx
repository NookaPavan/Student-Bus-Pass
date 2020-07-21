<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="WebApplication12.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>

</div>
	<form  runat="server">
	<div class="container" style="margin-top: 72px">
						<div class="row">
							<div class="col-sm-5 col-md-5" style="left: 0px; top: -17px; height: 656px; width:526px;">
								<div class="tabulation animate-box" style=" margin-left:22em; margin-top: 5em">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
										 <li role="presentation" class="active">
										<a href="#passcreate" aria-controls="passcreate" role="tab" data-toggle="tab">Pass Create</a>
										 </li>
										<li role="presentation">
										   <a href="#renew" aria-controls="renew" role="tab" data-toggle="tab">Pass Renew</a>
										</li>
										<li role="presentation">
													 
										   <a href="#password" aria-controls="password" role="tab" data-toggle="tab">Password</a>
										</li>   
										<li role="presentation">
										   <asp:Button runat="server" Text="Logout"   class="btn btn-primary btn-block" OnClick="Unnamed1_Click" Height="52px" />
										</li>
									  </ul>

								 
									<div class="tab-content">
										<!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane active" id="passcreate">
										<div class="row" style="margin-top: 0px">
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="uid">User ID:</label>
													<asp:TextBox runat="server" class="form-control" ID="uid" placeholder="Enter your UserID"></asp:TextBox>

												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="passid">Pass ID:</label>
													<asp:TextBox runat="server" class="form-control" ID="passid" placeholder="Enter your PassID"></asp:TextBox>

												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">From:</label>
													<asp:TextBox runat="server" class="form-control" ID="from" placeholder="Patan, Gujarat"></asp:TextBox>
												
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="to">To:</label>
													<asp:TextBox runat="server" class="form-control" ID="to" placeholder="Chanasma, Gujarat"></asp:TextBox>
										
												</div>
											</div>									
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="distance">Distance :</label>
													<asp:TextBox runat="server" class="form-control" ID="distance" placeholder="Distance in KM"></asp:TextBox>
	
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="amount">Amount :</label>
													<asp:TextBox runat="server" class="form-control" ID="amount" placeholder="Amount in RS"></asp:TextBox>
	
												</div>
											</div>
											<div class="col-sm-12 mt">
												<section >
													<label for="class">Payment Type:</label>
													<asp:DropDownList runat="server" class="cs-select cs-skin-border" ID="D1" AutoPostBack="True">
														<asp:ListItem>Payment</asp:ListItem>
														<asp:ListItem>Online</asp:ListItem>
														<asp:ListItem>Offline</asp:ListItem>
													</asp:DropDownList>
													
												</section>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="crd">Card No.:</label>
													<asp:TextBox runat="server" class="form-control" ID="crd" placeholder="Card Details"></asp:TextBox>
	
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="cvv">Cvv:</label>
													<asp:TextBox runat="server" TextMode="Password" class="form-control"  ID="cvv" placeholder="CVV number"></asp:TextBox>
						
												</div>
											</div>
											<div class="col-xs-12">
												<asp:Button runat="server" Text="Create" class="btn btn-primary btn-block" OnClick="Unnamed3_Click"/>

											</div>
										</div>
									 </div>
								  
										<!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane " id="renew">
										<div class="row" style="margin-top: 0px">
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="uid1">User ID:</label>
													<asp:TextBox runat="server" class="form-control" ID="uid1" placeholder="Enter your UserID"></asp:TextBox>

												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="passid1">Pass ID:</label>
													<asp:TextBox runat="server" class="form-control" ID="passid1" placeholder="Enter your PassID"></asp:TextBox>

												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="frome">From:</label>
													<asp:TextBox runat="server" class="form-control" ID="frome" placeholder="Patan, Gujarat"></asp:TextBox>
												
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="to0">To:</label>
													<asp:TextBox runat="server" class="form-control" ID="to0" placeholder="Chanasma, Gujarat"></asp:TextBox>
										
												</div>
											</div>											
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="distance1">Distance :</label>
													<asp:TextBox runat="server" class="form-control" ID="distance1" placeholder="Distance in KM"></asp:TextBox>
	
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="amount1">Amount :</label>
													<asp:TextBox runat="server" class="form-control" ID="amount1" placeholder="Amount in RS"></asp:TextBox>
	
												</div>
											</div>
											<div class="col-sm-12 mt">
												<section>
													<label for="class">Payment Type:</label>
													<asp:DropDownList runat="server" class="cs-select cs-skin-border" ID="D2" AutoPostBack="True">
														<asp:ListItem>Payment</asp:ListItem>
														<asp:ListItem>Online</asp:ListItem>
														<asp:ListItem>Offline</asp:ListItem>
													</asp:DropDownList>
													
												</section>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="card">Card No.:</label>
													<asp:TextBox runat="server" class="form-control" ID="card" placeholder="Card Details"></asp:TextBox>
	
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="cvv1">Cvv:</label>
													<asp:TextBox runat="server" TextMode="Password" class="form-control"  ID="cvv1" placeholder="CVV number"></asp:TextBox>
						
												</div>
											</div>
											<div class="col-xs-12">
												<asp:Button runat="server" Text="Renew" class="btn btn-primary btn-block" OnClick="Unnamed3_Click1"/>

											</div>    
										 </div>
									 </div>
										<!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane" id="password">
										<div class="row">
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="uid2">User ID:</label>
													<input type="text" class="form-control" id="uid2" placeholder="Enter your UserID"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="oldpwd">Old Password:</label>
													<asp:TextBox runat="server" TextMode="Password" class="form-control" ID ="oldpwd"  placeholder="Your old Password"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="newpwd">New Password:</label>
													<asp:TextBox runat="server" TextMode="Password" class="form-control" ID ="newpwd" placeholder="Set Your Password"></asp:TextBox>
													
												</div>
											   
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="confirmpwd">Confirm Password:</label>
													<asp:TextBox runat="server" TextMode="Password" class="form-control" ID ="confirmpwd" placeholder="Confirm your password"></asp:TextBox>
													
												</div>
											</div>
											<%--<asp:CompareValidator ID="CompareValidator1" ControlToValidate="confirmpwd" ControlToCompare="newpwd" Operator="Equal" Type="String" runat="server" ErrorMessage="Password doesn't match!!">
											</asp:CompareValidator>--%>
<%--                                            <asp:ChangePassword ID="ChangePassword1" class="form-control" runat="server"></asp:ChangePassword>--%>
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="Change">
											</div>
										</div>
									 </div>
									

								
							
							</div>
						  </div>
						</div>
	</div>
	</div>
	</form>	
</asp:Content>
