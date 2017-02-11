#load package twitteR
library(twitteR)
library(ROAuth)
#authentication
setup_twitter_oauth("wEhytgcdGp5hVKrBWQls8M9q8","Z2W3mKrAxBQstBGIswS9CpnQ3364ULUe6GKXsxlGRlm2dcfRbz","139085615-FX5BDNkbULkEdR1BH7Bw2WEmyTOPCaXJSZmIeREQ","sNBQ1fnpkwFnVEU9QL3Vr1PfWwwBcrrSGgOdkAvOU6hZ3")

#Searching Twitter:

#Retrieving tweets
tweets<-searchTwitter('#rstats',n=50)
head(tweets,2)

#Retrieve User Info and Followers
user<- getUser("manjuprasadsn")
#user$getDescription()
user$toDataFrame()
friends<-user$getFriends() # who this user follows
followers<-user$getFollowers() # this users followers
followers2<-followers[[1]]$getFollowers # this users followers followers
head(friends,2)
head(followers,2)
# retrieving followers count
user$getFollowersCount()

#Top Retweeted Tweets
tweets.df<-twListToDF(tweets)
table(tweets.df$retweetCount)
sum(tweets.df$retweetCount)
selected<-which(tweets.df$retweetCount >=9)

#Tracking Message propagation
tweets<-userTimeline("RDataMining",n=3200) # retrieving tweets via account information
tweets[[1]]
retweeters(tweets[[1]]$id)
retweets(tweets[[1]]$id)


#retrieving trends
avail_trends=availableTrendLocations()
head(avail_trends,2)

trends=getTrends(2367105)
head(trends,2)

close_trends=closestTrendLocations(-42.8,-71.1)
head(close_trends,2)


#remove retweets
strip_retweets(tweets)
#head(strip_retweets(tweets),2)


#sentiment analysis
install.packages("syuzhet")
library(syuzhet)
get_sentiment(tweets.df$text)
sv<-get_sentiment(tweets.df$text)
#plot a trajectory



