<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="movie.aspx.cs" Inherits="movie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="margin-left: 30%; margin-top:10%">
        <div style="float:left; margin-right:15px">
            <asp:Image ID="Poster" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0120338&apikey=75327428" />
        </div>
        <div>
            <asp:Label ID="movieName" runat="server" Text=" ">Lorem ipsum</asp:Label>
        </div>
        <div>
            <asp:Label ID="movieGenre" runat="server" Text=" ">Lorem ipsum dolor sit amet</asp:Label>
        </div>
        <div >
            <asp:Label ID="movieDescription" runat="server" Text=" ">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel libero sem. Mauris nec dui orci. Ut porttitor eros vitae nunc facilisis rhoncus. Sed facilisis turpis tempor, venenatis nunc et, luctus augue. Vivamus eget pellentesque sapien. Vivamus tristique nisi mollis risus molestie cursus. Etiam in venenatis sapien. Sed sed odio lectus. Donec metus ipsum, porttitor a imperdiet vel, cursus sed quam.

</asp:Label>
        </div>
        <div>
            <asp:HyperLink ID="movieIMDB" runat="server" NavigateUrl="">Link to IMDB</asp:HyperLink>
        </div>
    </div>

</asp:Content>

