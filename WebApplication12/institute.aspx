<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master.Master" AutoEventWireup="true" CodeBehind="institute.aspx.cs" Inherits="WebApplication12.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<form  runat="server">
	<p  class="h1" style="font-size: 50px; text-align: center; color: springgreen"></p>
	<p  class="h1" style="font-size: 50px; text-align: center; color: springgreen">&nbsp;</p>
	<br/><br/><br/><br/>
	<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
									  
									   <li role="presentation" class="active">
										   <a href="#passdetail" aria-controls="passdetail" role="tab" data-toggle="tab">Pass Detail</a>
									   </li>
									   <li role="presentation">
										   <a  href="Login.aspx" role="tab" >Logout</a>
									   </li>
								   </ul>

								   
									<div class="tab-content">
								   <!-- Tab panes -->
									 <div role="tabpanel" class="tab-pane active" id="passdetail">
										 <br/>
										 <br/>
										 <div class="center-block">
											 
											 <asp:GridView ID = "passinfo" runat="server" AutoGenerateColumns="False" Width="1330px" BorderColor="#FF6600" BorderStyle="Outset" BorderWidth="2px" Caption="Pass Details :" CellPadding="10" EmptyDataText="-" Height="199px" HorizontalAlign="Center" style="margin-left: 85px" >
											 <Columns>
												 <asp:BoundField DataField="userid" HeaderText="UserId" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:BoundField DataField="passid" HeaderText="PassId" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:BoundField DataField="from" HeaderText="From" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:BoundField DataField="to" HeaderText="To" HeaderStyle-HorizontalAlign="Center"/> 
												 <asp:BoundField DataField="amount" HeaderText="Amount" HeaderStyle-HorizontalAlign="Center"/>
												 <asp:TemplateField>
													 <ItemTemplate>
														 <asp:LinkButton runat="server"  HeaderText="Review" Text="Approve" ></asp:LinkButton>
													 </ItemTemplate>
												 </asp:TemplateField>
											 </Columns>
												 <EditRowStyle BorderColor="#FF6600" BorderStyle="Dotted" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
												 <HeaderStyle HorizontalAlign="Center" />
												 <SelectedRowStyle BackColor="#FF6600" BorderColor="Black" BorderWidth="5px" />
											 </asp:GridView>
											 

										
										</div>



									 </div>
								  
</div>
								</div>
   
	</form>
	</asp:Content>
