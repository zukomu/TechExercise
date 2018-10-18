<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%-- This is a project that I was asked to complete as an exercise for a company that was interested in hiring me. They asked for a site that would host information about 
    some movies. This is the opening page of that site. This site requires an OMDB API License to function which costs 5 US Dollars per month to maintain so if nothing
    work that's probably because I stopped paying for it, although it should function up until at least 31st of November, 2018. --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left:30%; margin-right:auto;">
        <%-- I started off by putting in 4 hyperlinks that display as the posters for 4 different movies. Clicking on any of them will lead to a page that displays
            some information about the film. The films were chosen basically off of the top of my head. --%>
        <div>     
            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0120338&apikey=75327428" NavigateUrl="movie.aspx?moviename=titanic"></asp:HyperLink>
            <asp:HyperLink ID="ToyStoryLink" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0114709&apikey=75327428" NavigateUrl="movie.aspx?moviename=toy+story" ></asp:HyperLink>
        </div>
        <br />
        <div>
            <asp:HyperLink ID="IronManLink" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0371746&apikey=75327428" NavigateUrl="movie.aspx?moviename=Iron+man" ></asp:HyperLink>
            <asp:HyperLink ID="SuperbadLink" runat="server" ImageUrl="http://img.omdbapi.com/?i=tt0829482&apikey=75327428" NavigateUrl="movie.aspx?moviename=Superbad" ></asp:HyperLink>
        
        </div>
        <div >
            
            <br />
            <%-- I wanted to go above and beyond what was asked for in the brief so I set up a search system which would find information about any film that the user
                wanted to know about. I was able to do this by using an OMDB API call meaning that in theory the system would work with any film that exists. I am aware
                of a problem with the search function where it requires the user to match the exact spelling of the film which can cause issues. An example of this problem
                is that if you search for "Lilo and Stitch" you won't get a result but if you search "Lilo & Stitch" you will. Ideally I would implement a system to prevent
                this issue but this was made on a tight deadline so I wasn't able to.--%>
            <asp:Panel ID="Panel1" runat="server" DefaultButton="MovieSearchBtn">
                <asp:Label ID="FindMovieLBL" runat="server" Text="find a movie: "></asp:Label>
                <asp:TextBox ID="MovieSearchTxt" runat="server" ></asp:TextBox>
                <asp:Button ID="MovieSearchBtn" runat="server" Text="Search" OnClick="Button1_Click"   />
            </asp:Panel>
            <br />
            <%-- after the search is completed the movies information is displayed below the search box. The image of the film's poster is displayed and serves as a 
                hyperlink to a page that focusses on just the searched for film instead of having the information be displayed alongside the other posters. --%>
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
