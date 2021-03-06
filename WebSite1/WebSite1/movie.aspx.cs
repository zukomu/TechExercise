﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
// this page contains the code necessary to populate the movie.aspx page with information. the code is almost identical to the search code from default.aspx with 
// a couple minor changes to account for different needs. for example the poster doesn't need to be a hyperlink so the code to make that happen isn't needed here.
public partial class movie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String MovieName = Request.QueryString["moviename"];
        XDocument movieDetails = XDocument.Load("http://www.omdbapi.com/?t=" +MovieName+ "&plot=full&r=xml&apikey=75327428");
        try
        {
            String MovieID = movieDetails.Element("root").Element("movie").Attribute("imdbID").Value;
            String MovieTitle = movieDetails.Element("root").Element("movie").Attribute("title").Value;
            String MovieGenre = movieDetails.Element("root").Element("movie").Attribute("genre").Value;
            String MovieDescription = movieDetails.Element("root").Element("movie").Attribute("plot").Value;
            Poster.ImageUrl = "http://img.omdbapi.com/?i=" + MovieID + "&apikey=75327428";
            movieName.Text = MovieTitle;
            movieGenre.Text = MovieGenre;
            movieDescription.Text = MovieDescription;
            movieIMDB.NavigateUrl = "https://www.imdb.com/title/" + MovieID;
        }
        catch
        {
            movieName.Text = "movie not found, please return to home screen and try again";
            movieIMDB.Text = " ";
        }
    }
}