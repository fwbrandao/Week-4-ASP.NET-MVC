<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<h1> Here are some exemples from the ASP.NET crib sheet</h1>


		<%--STANDARD CONTROLS--%>
		<br />
		<h2> Standard controls</h2>
		<h3>Simple controls</h3>
		<br />
		<asp:Label ID="cbLabel" runat="server" Text="Here is your Check Box:"></asp:Label>
		<br />
		<br />
		<asp:CheckBox ID="CheckBox1" runat="server" Text="Please click in this check box and click the button:"/>
		<br />
		<br />
		<asp:Button ID="BtnCheckBox" runat="server" Text="Check Box " OnClick="BtnCheckBox_Click" />
		<br />
		<br />
		<asp:Label ID="lblCheckBox" runat="server" ></asp:Label>
		<br />
		<br />


		<%--LINK--%>
		<asp:LinkButton ID="webLink" runat="server" PostBackUrl="http://www.justit.co.uk">LinkButton, which is just a link really </asp:LinkButton>
		<br />
		<br />


		<%--HYPERLINK - ANOTHER LINK, BUT THIS TIME OPENS IN ANOTHER TAB--%>
		<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.justit.co.uk" Target="_blank">Here is a link to another website (but the HTML anchor tag works just as well)</asp:HyperLink> 
		<br />
		<br />


		<%--IMAGE LINK--%>
		<p>Click on the image button to follow the link:</p>
		<asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="http://www.starwars.com/" ImageUrl="Content/Star-Wars.jpg" Height="179px" Width="187px" />
		<br />
		<br />


		<%--IMAGE MAP--%>
		<p>This is an Image Map.  Click on the Earth or Moon for a little bit of information about them.  This can also be used for links.</p>
		<br />
		<asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="Content/UKGB-Map.jpg" Height="216px" Width="307px" OnClick="ImageMap1_Click" HotSpotMode="PostBack">
		<asp:CircleHotSpot X="45" Y="60" Radius="35" HotSpotMode="PostBack" PostBackValue="Great Britain" />
		<asp:PolygonHotSpot  Coordinates="80,10,110,10,110,30,80,30,80,10" HotSpotMode="PostBack" PostBackValue="United Kingdon" />
		</asp:ImageMap>
		<asp:Label ID="ImageMapLabel" runat="server" Text=""></asp:Label>
        <br />
		<br />


		<%--rectagular hotspots--%>
		<p>Here is another image map, this time using rectagular hotspots. Click on the right or left tower of the main building (the Petronas Towers in Kuala Lumpur) to see a message.</p>
		<br />
		<asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="Content/29857938266_4f7d0eaece_b.jpg" Height="204px" HotSpotMode="PostBack" Width="345px" OnClick="ImageMap2_Click">
		<asp:CircleHotSpot X="50" Y="50" Radius="60" HotSpotMode="PostBack" PostBackValue="Left side tower" Target="_top" />
		<asp:PolygonHotSpot  Coordinates="80,10,110,10,110,30,80,30,80,10" HotSpotMode="PostBack" PostBackValue="Right side tower" Target="_self" />
		</asp:ImageMap>
		<asp:Label ID="ImageMapLabe2" runat="server" Text=""></asp:Label>
		<br />
		<br />


		<%--RADIO BUTTON--%>
		<p>Here is a radio button:</p>
		<br />
		<br />
		<asp:CheckBox ID="rBtnCheck" runat="server" Text="Click this radiobutton, then the button below:" />
		<br />
		<br />
		<asp:Button ID="radioButton" runat="server" Text="Radio Button" OnClick="radioButton_Click" />
		<br />
		<br />
		<asp:Label ID="lblRadioBox" runat="server" ></asp:Label>
		<br />
		<br />



		<%--MULTILINE--%>
		<p>This is a multiline text box - please type something and click the button below:</p>
		<br />
		<asp:TextBox ID="TextBoxMultiline" CssClass="textBoxFormat"  runat="server" AutoPostBack="true" TextMode="MultiLine"></asp:TextBox>
		<br />
		<asp:Button ID="textBoxButton" runat="server" Text="Text Box Button" OnClick="textBoxButton_Click" />
		<br />
		<asp:Label ID="textBoxLabel" runat="server" Text=""></asp:Label>
		<br />
		<br />



		<%--EMAILbOX--%>
		<p>This is a text box that accepts email addresses - please type an email address and click the button below:</p>
		<br />
		<asp:TextBox ID="emailBox" CssClass="TextBoxFormat"  runat="server" AutoPostBack="false" TextMode="Email" CausesValidation="false"></asp:TextBox>
		<br />
		<asp:Button ID="emailBoxButton" runat="server" Text="Email box Button" OnClick="emailBoxButton_Click" />
		<br />
		<asp:Label ID="emailBoxlabel" runat="server"></asp:Label>
		<br />
		<br />



		<%--CALENDAR CONTROL--%>
		<p>Here is a calendar control.</p>
		<br />
		<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
		<br />
		<asp:Label ID="calendarLabel" runat="server" Text=""></asp:Label>
		<br />
		<br />


		<%--CONTAINER CONTROL--%>
		<h3>Container Control</h3>
		<br />
		<p>Here is a panel control (red dotted border added to show its shape):</p>
		<br />
		<asp:FileUpload ID="FileUpload1" runat="server" />
		<br />
		<asp:Button ID="FileUploadButton" runat="server" Text="Upload" OnClick="FileUploadButton_Click" />
		<br />
		<asp:Label ID="FileUploadLabel" runat="server" Text=""></asp:Label>
        <br />
		<asp:Image ID="ImageUpload" runat="server" />
		<br />
		<br />



		<br />
		<br />
		<%--LIST CONTROL--%>
		 <h3>List controls</h3>
         <p>Choose your favourite programming language:</p>
         <asp:DropDownList ID="FavouriteLanguage" runat="server" AutoPostBack="True">
         <asp:ListItem Value="C#">C#</asp:ListItem>
         <asp:ListItem Value="VB">VB</asp:ListItem>
         </asp:DropDownList>
         <br />
         <br />
         <asp:Button ID="ButtonLanguage" runat="server" Text="Confirm language" OnClick="ButtonLanguage_Click" />
         <br />
         <asp:Label ID="FavouriteLanguageLabel" runat="server"></asp:Label>
         <br />


		<asp:Label ID="Label1" runat="server" Text="Please enter your name:"></asp:Label>
		<asp:TextBox ID="tbName" runat="server"></asp:TextBox>
		<asp:Button ID="BtnName" runat="server" Text="Click me" OnClick="BtnName_Click" />
		<br />
		<br />
		<%--check box exercise--%>
		<asp:Label ID="LblName" runat="server" ></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label2" runat="server" Text="Please check or uncheck the box"></asp:Label>
		<br />
		<br />
		<br />
		<asp:Label ID="LabelDate" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
