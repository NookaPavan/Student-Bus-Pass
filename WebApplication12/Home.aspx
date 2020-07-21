<%@ Page Title="" Language="C#" MasterPageFile="~/Bus-Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication12.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div id="myCarousel" class="carousel slide"  data-ride="carousel">
            <!-- Indicators -->
            
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" >

                <div class="item active"  >
                    <img src="p001.png" class="auto-style3" style="width:1600px; ">
                   
                </div>

                <div class="item">
                    <img src= "p1.png" class="auto-style3"  style="width:100%">
                    
                </div>
    
                <div class="item">
                    <img src="p01.jpg" class="auto-style3"  style="width:100%;">
                    
                </div>
  
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

</asp:Content>
