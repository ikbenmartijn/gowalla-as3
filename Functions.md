## Spot functions ##

|`SpotInfo(spotID:String)`|Returns all the 'Spot' variables|
|:------------------------|:-------------------------------|
|`SpotPhotos(spotID:String)`|Returns an array of photos from the spot|
|`SpotEvents(spotID:String)`|Returns an array of recents check-ins at the spot|
|`SpotItems(spotID:String)`|Returns an array of items you can pick up at the spot.Random assigned items are impossible to detect!|

## User functions ##

|`UserActivity(username:String)`|Returns an array of the user's recent check-ins|
|:------------------------------|:----------------------------------------------|
|`UserInfo(username:String)`|Returns all the user info, Twitter/Facebook accounts, bio, username, friendrequest url, ...|
|`UserItems(username:String)`|Returns an array items carried by the user, NOT vaulted items!|
|`UserPhotos(username:String)`|Returns an array of all the photos posted by the user|
|`UserPins(username:String)`|Returns an array with all the pins a users owns|
|`UserStamps(username:String)`|Returns an array of stamps earned by the user|
|`UserTopSpots(username:String)`|Returns an array most visited spots by the user|
|`UserTrips(username:String)`|Returns an array of trips created by the user|

## Item functions ##

|`ItemInfo(itemID:String)`|Returns all the info about an item|
|:------------------------|:---------------------------------|

## Trip functions ##

|`TripInfo(itemID:String)`|Returns all the info about a trip and an array with all the spots contained in the trip|
|:------------------------|:--------------------------------------------------------------------------------------|

## Category functions ##

|`CategoryInfo(itemID:String)`|Returns all the info about a spot category|
|:----------------------------|:-----------------------------------------|