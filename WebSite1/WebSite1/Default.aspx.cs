using System;
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
        // this section controls the search function. It basically says that when the search button is pressed, find the movie on IMDB using the OMDB API and write out 
        // all of it's details in the labels below the search bar.

        String MovieName = MovieSearchTxt.Text;
        // the OMDB API returns information in the form of an XML file which we interpret using Linq to XML.
        XDocument movieDetails = XDocument.Load("http://www.omdbapi.com/?t=" + MovieName + "&plot=full&r=xml&apikey=75327428");
        // everything happens in a try, catch block to account for the possibility that the user's search might not find anything. This means that the system won't
        // crash when it tries to reference files that it couldn't find
        try
        {
            // We need the movies IMDB ID for two reasons, the OMDB poster API doesn't have an option to search using the movie's name so we have to use the ID for that
            // and I wanted there to be a link to the films IMDB page which we need the ID to do
            String MovieID = movieDetails.Element("root").Element("movie").Attribute("imdbID").Value;
            // The reason we generate MovieTitle when we already have the MovieName saved from the search box is because there are cases where the the film is known under
            // two names, for example if you search for "Lord of the Rings" MovieTitle will be set to "Lord of the Rings: Fellowship of the Ring"
            String MovieTitle = movieDetails.Element("root").Element("movie").Attribute("title").Value;
            String MovieGenre = movieDetails.Element("root").Element("movie").Attribute("genre").Value;
            String MovieDescription = movieDetails.Element("root").Element("movie").Attribute("plot").Value;
            // OMDB uses a seperate API to handle image requests. Once we have all of the data we need we can simply set the hyperlinks' and labels' various attributes
            // to what they need to be. 
            Poster.ImageUrl = "http://img.omdbapi.com/?i=" + MovieID + "&apikey=75327428";
            Poster.NavigateUrl = "~/movie.aspx?moviename=" + MovieTitle;
            movieName.Text = MovieTitle;
            movieGenre.Text = MovieGenre;
            movieDescription.Text = MovieDescription;
            movieIMDB.Text = "Link to IMDB";
            movieIMDB.NavigateUrl = "https://www.imdb.com/title/" + MovieID;
        }
        // in the event that a match couldn't be found the following code is run
        catch
        {
            // if the search doesn't return a film this message is displayed
            movieName.Text = "movie not found, please try again";
        }
    }


    
}