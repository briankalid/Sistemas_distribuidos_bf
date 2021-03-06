# Analyzing trending tweets and where they came from.

###### Distributed Computing project.

Brian Kalid García Olivo and Fernando Nateras Bautista.<br/>
Contact info: briankalid2000@gmail.com and fnaterasb1@gmail.com<br/>
Professor: Víctor De la Luz.

## Project definition.
As our project of distributed computing we are going to work with Twitter to obtain data from the daily trends.<br/>
We want to study the type of tweets that the users are obtaining the news/infomation from, also if the number of followers is a determinant factor for a tweet to go viral. As well we want to study not only the news but the trends in general. Principally we want to study the tweets themselves and see if there is a predominant characteristic of the tweet to go viral.
<br/><br/>
Given the most popular trends we are going to identify the top ones and from them we will locate the most popular tweet or tweets based on the impressions (retweets and likes), so we can know the amount of impressions are nedeed for a tweet to go viral or ve catalogued as popular, we want to know if there is a pattern in the number of impressions and the type of account the has the most popular tweet. Appart from the impressions we also want to know the amount of followers that the account of the tweet has, and see if there is a pattern in the number of followers or if it does not matter at all. Aditionally we want to know the differnt sources of the tweets where they have been tweeted from and from it see if the most popular tweets are coming from desktop computers or mobile devices.<br/>

## General goals.
  - Get the daily data from Twitter.
  - Locate the most popular trends of the day.
  - Get the most popular tweet or tweets, based mainly in the amount of impressions.
  - Get information from the top tweets.
  - Make the graphs based on the characteristics of the top tweets. 
  - Make this process automatically, and show it in the web.
  
## Requirements.
  - Python3.
  - Twitter API.
  - PHPMyAdmin for the MySQL database (we use remote mysql but you could use local database).
  - Flask for web service.
  - Libraries: tweepy and from this library we also use OAuthHandler and Cursor. From tweepy.cursor we used api.search the other libraries are twitter, json, pickle, datetime, pandas, flask, mysql connectors and matplotlib.
  
## General system architecture.
- **Data source:** Twitter API.
- **Main processing:** Pyhton, Tweepy, Json, Pandas, Numpy, Matplotlib.
- **Visualization:** Matplotlib.
- **Web:** Flask, HTML5, Jinja2.

## Data source.
Our data source is the Twitter API, from there we are going to obtain the necessary data form the daily trends and tweets.

## Instructions.
### Install requirements.
#### Requires python3 (tested on python 3.8)
- **Libraries**
  -  `sudo apt-get install python-dev default-libmysqlclient-dev libssl-dev`
  -  `pip3 install progress`
  -  `pip3 install twitter`
  -  `pip3 install tweepy`
  -  `pip3 install flask`
  -  `pip3 install numpy`
  -  `pip3 install pandas`
  -  `pip3 install matplotlib`
  -  `sudo apt-get install nano`
  -  `pip3 install flask_mysqldb`
  -  `pip3 install mysql-connector`
### Setup.
- Open a terminal into folder project.
  -  `nano secret.py`<br/>
    Insert your keys inside.
  -  `nano db.json.`<br/>
    Insert your database keys inside.
  -  Save and close.
- Database
  - Import [database](Proyecto1.0/database/)(this is in Proyecto1.0/database/), we are going to work with the table "publications".<br/><br>
  - To import database:<br><br>
  You need have a database created<br>
  `mysql -u username -p mydatabase < RouzZmPKSN.sql`<br><br>
  **Table structure**<br/>
  ![databasestructure](Resources/db.JPG)
  #### Use.
  Once you are in the correct directory ("Proyecto1.0") you just have to run it.
  - `/.run.sh -a` to run all modules.<br/>

  Or you can run the 3 modules by separate.
  - `/.run.sh -o` this module gets the data.
  - `/.run.sh -u` this module update the database.
  - `/.run.sh -p` this module processes the data and makes the graphics.


  ![running](Resources/time.png)
  
  #### To deploy web service in localhost:
  Once all processes are finished.
    -  Run `python3 web.py`
    -  Then in your browser you just need to type *localhost:5000* to access to the web page.
## Graphics.
When everything its done in the web page you will se these graphics.<br/>
 - **Favorites and Retweets**<br/>
![favs](Resources/favsbueno.png)<br/>
![rts](Resources/rtsbueno.png)<br/>
These two graphics show how the favorites and retweets are distributed.

 - **Source**<br/>
 ![source](Resources/source.JPG)<br/>
 This graphic shows where the tweets are being tweeted from. It show the name of the source and how many tweets have been tweeted from them.
 - **Interactions**<br/>
![interactions](Resources/favsrtsss.png)<br/>
This graphic shows a comparative of the number of retweets and favorites that the most popular tweet has. Here we can see how theese two interactions behave.
 - **Followers**<br/>
![followers](Resources/follow.JPG)<br/>
This graphic show the number of followers that the account that tweeted the most popular tweet has.

## Conclusions.
We view this project as a little seed, to this moment we think that the information we are getting from it is very useful and it tell us the different metrics form wich we can study the tweets and the most popular ones. We believe that there is plenty of opportunity in this project to grow to make a bigger appliction and a more sofisticated one that provides more useful and valuable information about the tweets, the trending tweets, the trends themselves and the accounts where these tweets are being tweeted from.

## Bibliography.
  - Data source [Twitter API](https://developer.twitter.com/en/products/twitter-api)
  - To get the data [Tweepy Documentation](https://tweepy.readthedocs.io/en/v3.5.0/index.html#)
  - Visualize Web [Flask Documentation](https://flask.palletsprojects.com/en/1.1.x/)
