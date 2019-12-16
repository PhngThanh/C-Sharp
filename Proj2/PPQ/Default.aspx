<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PPQ.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <%--<img align="right" hspace="5" src="images/delivery.gif" vspace="10" />--%>
    <asp:Image ID="Image1" runat="server" align="right" hspace="5" ImageUrl="~/images/delivery.gif" vspace="10" Height="200px" Width="150px" />
   <span style="color: #990000; font-size: 1.1em;"><b>Welcome to the best and fastest Online Pizza Restaurant!</b><br />
      The best ingredients, the best service, and the best colored boxes!</span><br />
   <br />
   <span style="font-size: 1.1em">Fed up with those chewy yet tasteless pizzas from your local pizza shop? Order from
   us instead, and we'll fax your order instantly to your local pizza shop for them
   to deliver. It might not taste any better, but you get a free<span style="font-size: 7pt;
      vertical-align: super">1</span> online experience thrown in.<br />
   <br />
   Still not convinced? Try the new 'rub and smell' facility on our menu page. Just
   rub the screen gently with your thumb and take in the glorious aroma of freshly-baked
   pizza and burning chef<span style="font-size: 0.65em; vertical-align: super">2</span>.
   What other pizza store can offer you service like this?</span><br /><br />
  <%-- <br clear="all" />--%>
   <asp:Image ID="Image2" runat="server" align="left" hspace="10" ImageUrl="~/images/slice.gif" vspace="0" Height="90px" Width="160px" />
   <%--<img align="left" hspace="10" src="images/slice.gif" vspace="0" />--%><span style="font-size: 1.1em">We don't do Greek
   food, but we do Geek food! Try our special 'Computer Programmer's Boxed Value-Type'
   meal. We take a slice from somebody else's pizza, store it in the refrigerator for
   two days until soggy and curled up<span style="font-size: 7pt; vertical-align: super">3</span>,
   then despatch to you in a static-free bubble-wrapped assembly! We even deliver at
   midnight - what could be more ideal?</span><br />
   <br clear="all" />
   <span style="font-size: 0.95em">1: Free except for a $10.00 charge for faxing your
      order<br />
      2: Requires special hardware, may not be available on all client systems<br />
      3: May include unidentifiable extra toppings and cultures<br />
      <br />
   </span>
</asp:Content>
