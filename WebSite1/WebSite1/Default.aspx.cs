﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("movie.aspx?moviename=" + MovieSearchTxt.Text);
        String MovieName = MovieSearchTxt.Text;
        XDocument movieDetails = XDocument.Load("http://www.omdbapi.com/?t=" + MovieName + "&plot=full&r=xml&apikey=75327428");
        try
        {
            String MovieID = movieDetails.Element("root").Element("movie").Attribute("imdbID").Value;
            String MovieTitle = movieDetails.Element("root").Element("movie").Attribute("title").Value;
            String MovieGenre = movieDetails.Element("root").Element("movie").Attribute("genre").Value;
            String MovieDescription = movieDetails.Element("root").Element("movie").Attribute("plot").Value;
            Poster.ImageUrl = "http://img.omdbapi.com/?i=" + MovieID + "&apikey=75327428";
            Poster.NavigateUrl = "~/movie.aspx?moviename=" + MovieTitle;
            movieName.Text = MovieTitle;
            movieGenre.Text = MovieGenre;
            movieDescription.Text = MovieDescription;
            movieIMDB.Text = "Link to IMDB";
            movieIMDB.NavigateUrl = "https://www.imdb.com/title/" + MovieID;
        }
        catch
        {
            movieName.Text = "movie not found, please return to home screen and try again";
            movieIMDB.Text = " ";
        }
    }


    
}