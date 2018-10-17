<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left:30%; margin-right:auto;">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0120338&apikey=75327428" NavigateUrl="movie.aspx?moviename=titanic" ></asp:HyperLink>
            <asp:HyperLink ID="ToyStoryLink" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0114709&apikey=75327428" NavigateUrl="movie.aspx?moviename=toy+story" ></asp:HyperLink>
        </div>
        <br />
        <div>
            <asp:HyperLink ID="IronManLink" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0371746&apikey=75327428" NavigateUrl="movie.aspx?moviename=Iron+man" ></asp:HyperLink>
            <asp:HyperLink ID="SuperbadLink" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0829482&apikey=75327428" NavigateUrl="movie.aspx?moviename=Superbad" ></asp:HyperLink>
        
        </div>
        <div >
            
            <br />

            <asp:Panel ID="Panel1" runat="server" DefaultButton="MovieSearchBtn">
                <asp:Label ID="FindMovieLBL" runat="server" Text="find a movie: "></asp:Label>
                <asp:TextBox ID="MovieSearchTxt" runat="server" ></asp:TextBox>
                <asp:Button ID="MovieSearchBtn" runat="server" Text="Search" OnClick="Button1_Click"   />
            </asp:Panel>
            <br />
                <div>
                    <asp:HyperLink ID="Poster" runat="server" ImageUrl="" NavigateUrl="" />
                </div>
                <div>
                    <asp:Label ID="movieName" runat="server" Text=" "></asp:Label>
                </div>
                <div>
                    <asp:Label ID="movieGenre" runat="server" Text=" "></asp:Label>
                </div>
                <div >
                    <asp:Label ID="movieDescription" runat="server" Text=" "></asp:Label>
                </div>
                <div>
                    <asp:HyperLink ID="movieIMDB" runat="server" NavigateUrl=""></asp:HyperLink>
                </div>
        </div>
    </div>
</asp:Content>
