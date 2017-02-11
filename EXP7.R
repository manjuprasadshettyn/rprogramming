library("RGoogleAnalytics")
oauth_token<-Auth(client.id ="1076206001597-jhpab5cospa8ind4rg2ul5prksbsibm4.apps.googleusercontent.com",client.secret = "kt0ZdKZubOJl_BcMQSuVrRTW")

save(oauth_token,file="oauth_token")
load("oauth_token")

GetProfiles(oauth_token)

# Get the session and transaction for each Source/medium

query.list<- Init(start.date="2015-03-21",end.date="2016-10-14",
                  metrics="ga:sessions,ga:users,ga:pageviews",
                  dimensions = "ga:sourcemedium", 
                  sort="ga:sessions",
                  table.id="ga:84842313")

#Create the Query Builder object
ga.query<- QueryBuilder(query.list)

#Make a request to get the data from the API
ga.data<- GetReportData(ga.query,oauth_token)

# to display
head(ga.data)

# Getting the Bounce rate, Exit Rate and Conversion Rate

query.list<- Init(start.date="2015-03-21",end.date="2016-10-14",
                  metrics="ga:bounceRate,ga:exitRate,ga:goalConversionRateAll",
                  dimensions = "ga:sourcemedium", 
                  sort="ga:bounceRate",
                  table.id="ga:84842313")

#Create the Query Builder object
ga.query<- QueryBuilder(query.list)

#Make a request to get the data from the API
ga.data<- GetReportData(ga.query,oauth_token)

# to display
head(ga.data)


