# Analyzing trending tweets and where they came from.
## Report.
###### Distributed Computing project.

Brian Kalid García Olivo and Fernando Nateras Bautista.<br/>
Contact info: briankalid2000@gmail.com and fnaterasb1@gmail.com<br/>
Professor: Víctor De la Luz.

## Project definition.
As our project of distributed computing we are going to work with Twitter to obtain data from the daily trends.<br/>
We want to study the type of tweets that the users are obtaining the news/infomation from, also if the number of followers is a determinant factor for a tweet to go viral. As well we want to study not only the news but the trends in general. Principally we want to study the tweets themselves and see if there is a predominant characteristic of the tweet to go viral.
<br/><br/>
Given the most popular trends we are going to identify the top ones and from them we will locate the most popular tweet or tweets based on the impressions (retweets and likes), so we can know the amount of impressions are nedeed for a tweet to go viral or ve catalogued as popular, we want to know if there is a pattern in the number of impressions and the type of account the has the most popular tweet. Appart from the impressions we also want to know the amount of followers that the account of the tweet has, and see if there is a pattern in the number of followers or if it does not matter at all. Aditionally we want to know the differnt sources of the tweets where they have been tweeted from and from it see if the most popular tweets are coming from desktop computers or mobile devices.<br/>

## General goals
  - Get the daily data from Twitter.
  - Locate the most popular trends of the day.
  - Get the most popular tweet or tweets, based mainly in the amount of impressions.
  - Get information from the top tweets.
  - Make the graphs based on the characteristics of the top tweets. 
  - Make this process automatically, and show it in the web.
  
## Software tools
  - Python 3.
  - Twitter API.
  - http server.
  - Text editor.
  - Libraries: tweepy and from this library we also use OAuthHandler and Stream. From tweepy.streaming we used StreamListener the other libraries are twitter, json, datetime, pandas, flask, mysql connectors and matplotlib.
  
## General system architecture.
- Data source : Twitter API.
- Main processing: Pyhton, Tweepy, Json, Pandas, Numpy, Matplotlib.
- Visualization: Matplotlib, HTML5, Flask, Jinja2.
- Web

## Data source.
Our data source is the Twitter API, from there we are going to obtain the necessary data form the daily trends and tweets.

## Instructions, use and tests.
### Install requirements
#### Requires python 3(tested on python 3.8)
- Open a terminal.
  -  Write: sudo apt-get install python-dev default-libmysqlclient-dev libssl-dev or pacman -S base-devel(if you use arch).
  -  Write: pip3 install twitter.
  -  Write: pip3 install tweepy.
  -  Write: pip3 install flask.
  -  Write: pip3 install flask_mysqldb.
  -  Write: pip3 install numpy
  -  Write: pip3 install pandas.
  -  Write: pip3 install matplotlib
  -  Write: sudo apt-get install nano.
- Download this [project](trend_tweet.py).
### Use
- Open a terminal into folder project.
  -  Write: nano secret.py.
  -  Insert your keys inside.
  -  Write: nano db.json.
  -  Insert your database keys inside.
  -  Save and close.
  #### To update data and create graphics:
    - 1. Run: python main.py.
  #### To deploy web service in localhost:
    - 1. Run: python web.py
