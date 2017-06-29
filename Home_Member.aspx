<%@ Page Title="" Language="C#" MasterPageFile="~/Member_MasterPage.master" AutoEventWireup="true" CodeFile="Home_Member.aspx.cs" Inherits="Home_Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 24px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <!-- Page Content -->
    
    <div class="container">

        <!-- Heading Row -->
        <div class="row" >
            <div class="col-md-12">
               <div class="row carousel-holder" >

                    <div class="col-md-12" >
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="Image/train1.jpg" style="height:500px; width=:400px;"  alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Image/train2.jpg"  style="height:500px; width=:400px;" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Image/train3.jpg"  style="height:500px; width=:400px;"" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                   </div>
            </div>
            <!-- /.col-md-8 -->
          <!--  <div class="col-md-4">

                
            </div>!-->
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->

        <hr/>

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well text-center">
                   <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">News</td>
                    </tr>
                    <tr>
                        <td>29/6/17 : Train T01 is under maintenance. Sorry for any inconvenience.</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>30/6/17 : Train T01 is working now. Thanks for travel with us. Have a nice journey.</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>1/7/17 : Train T02 is under maintenance. Sorry for any inconvenience.</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>

                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <!-- Content Row -->
       
        <!-- /.row -->
        </div>
</asp:Content>

