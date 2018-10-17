<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <asp:ImageButton ID="TitanicImgBtn" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0120338&apikey=75327428" PostBackUrl="default2.aspx?moviename=titanic" />
            <asp:ImageButton ID="ToyStoryImgBtn" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0114709&apikey=75327428" PostBackUrl="default2.aspx?moviename=toy+story" />
        </div>
        <div>
            <asp:ImageButton ID="IronManImgBtn" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0371746&apikey=75327428" PostBackUrl="default2.aspx?moviename=iron+man" />
            <asp:ImageButton ID="SuperbadImgBtn" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0829482&apikey=75327428" PostBackUrl="default2.aspx?moviename=superbad" />
        
        </div>
        <div>
            


            <asp:Panel ID="Panel1" runat="server" DefaultButton="MovieSearchBtn">
                <asp:Label ID="FindMovieLBL" runat="server" Text="find a movie: "></asp:Label>
                <asp:TextBox ID="MovieSearchTxt" runat="server" ></asp:TextBox>
                <asp:Button ID="MovieSearchBtn" runat="server" Text="Search" OnClick="Button1_Click"   />
            </asp:Panel>
        </div>
    </div>
</asp:Content>
