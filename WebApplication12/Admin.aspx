<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication12.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<form  runat="server">
	<p  class="h1" style="font-size: 50px; text-align: center; color: springgreen"></p>
	<p  class="h1" style="font-size: 50px; text-align: center; color: springgreen">&nbsp;</p>
	<br/><br/><br/><br/>
	<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
									  

									   <li role="presentation" class="active">
										   <a href="#userdetail" aria-controls="userdetail" role="tab" data-toggle="tab">User Detail</a>
		
			
									   </li>
									   <li role="presentation">
										   <a href="#passdetail" aria-controls="passdetail" role="tab" data-toggle="tab">Pass Detail</a>
									   </li>
									   <li role="presentation">
										   <a href="#mail" aria-controls="mail" role="tab" data-toggle="tab">Mail</a>
										  
									   </li>
									   <li role="presentation">
										   <a  href="Login.aspx" role="tab" >Logout</a>
									   </li>
								   </ul>

								   
									<div class="tab-content">
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane active" id="userdetail">
										 <br/>
										 <br/>
										 <div class="center-block">
											 <asp:GridView ID="details" runat="server" AutoGenerateColumns="False" Width="1330px" BorderColor="#FF6600" BorderStyle="Outset" BorderWidth="2px" Caption="User Details :" CellPadding="10" EmptyDataText="-" Height="199px" HorizontalAlign="Center" style="margin-left: 85px" OnSelectedIndexChanged="details_SelectedIndexChanged">
											 <Columns>
												 <asp:BoundField DataField="name" HeaderText="NAME" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:BoundField DataField="dob" HeaderText="DOB" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:BoundField DataField="gender" HeaderText="GENDER" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:BoundField DataField="email" HeaderText="E-MAIL" HeaderStyle-HorizontalAlign="Center"/> 
												 <asp:BoundField DataField="mobile" HeaderText="MOBILE" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:TemplateField>
													 <ItemTemplate>
														 <asp:LinkButton runat="server" OnClick="OnClick"  HeaderText="VIEW DETAILS" Text="Select" ></asp:LinkButton>
													 </ItemTemplate>
												 </asp:TemplateField>
											 </Columns>
												 <EditRowStyle BorderColor="#FF6600" BorderStyle="Dotted" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
												 <HeaderStyle HorizontalAlign="Center" />
												 <SelectedRowStyle BackColor="#FF6600" BorderColor="Black" BorderWidth="5px" />
											 </asp:GridView>
											 

										
										</div>



									 </div>
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane " id="passdetail">
										<div class="row">
											<div class="center-block">
												<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1330px" BorderColor="#FF6600" BorderStyle="Outset" BorderWidth="2px" Caption="User Details :" CellPadding="10" EmptyDataText="-" Height="199px" HorizontalAlign="Center" style="margin-left: 85px" OnSelectedIndexChanged="details_SelectedIndexChanged">
													<Columns>
														<asp:BoundField DataField="" HeaderText="PASSID" HeaderStyle-HorizontalAlign="Center"/>
														<asp:BoundField DataField="" HeaderText="NAME" HeaderStyle-HorizontalAlign="Center"/>
														<asp:BoundField DataField="" HeaderText="FROM" HeaderStyle-HorizontalAlign="Center"/>
														<asp:BoundField DataField="" HeaderText="TO" HeaderStyle-HorizontalAlign="Center"/> 
														<asp:BoundField DataField="" HeaderText="AMOUNT" HeaderStyle-HorizontalAlign="Center"/>
														
													</Columns>
													<EditRowStyle BorderColor="#FF6600" BorderStyle="Dotted" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
													<HeaderStyle HorizontalAlign="Center" />
													<SelectedRowStyle BackColor="#FF6600" BorderColor="Black" BorderWidth="5px" />
												</asp:GridView>

											
										</div>
									 </div>
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane " id="mail">
										<div class="row">
											
										</div>
									 </div>
									</div>
</div>
								</div>
   
	</form>
</asp:Content>
