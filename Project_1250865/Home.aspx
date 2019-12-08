<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_1250865.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.slide img:gt(0)').hide();
            setInterval(function () {
                $('.slide :first-child').fadeOut(2500).next('img').fadeIn(2500).end().appendTo('.slide')
            },2500)
        })
    </script>
<style>
    .slide{
        width:920px;height:360px;
    }
    .slide img{
        position:absolute; width:920px;height:360px;
    }
    
</style>    
    <br />
    <div class="row"> 
        <div class="col-md-1">

        </div>
        <div class="slide" style="border-bottom-style:solid; border-top-style:solid; border-width:thick" >        
    <img src="SlideImg/1.jpg" />
    <img src="SlideImg/2.jpg" />
    <img src="SlideImg/3.jpg" />
    <img src="SlideImg/4.jpg" />
</div>
    </div>                    
<%--<div class="slide" style="border-bottom-style:solid; border-top-style:solid; border-width:thick" >        
    <img src="SlideImg/1.jpg" />
    <img src="SlideImg/2.jpg" />
    <img src="SlideImg/3.jpg" />
    <img src="SlideImg/4.jpg" />
</div>--%>
      
</asp:Content>
