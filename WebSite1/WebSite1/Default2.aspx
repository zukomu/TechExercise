<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Image ID="Poster" runat="server" />
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
    

</asp:Content>

