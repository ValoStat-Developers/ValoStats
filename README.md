# ValoStats

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
ValoStat will show personal statistics and global statistics for game "Valorant"
### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Gaming
- **Mobile:** This app would be primarily developed for mobile and it matches the existing site, https://tracker.gg/valorant. 
- **Story:** User views their personal statistics as well as map, general, and global statistics from Valorant.
- **Market:** Any individual that plays Valorant can use this app on their mobile device.
- **Habit:** This app can be used on a weekly basis in order to check on their statistics and see what they can improve. 
- **Scope:** This app can become more developed over time with more viewership and it can receive more features and more details about the user's statistics in game.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [X] Allows user to login with Riot account
- [ ] User can view their personal statistics
     * User's current rank
     * User's amount of victories
     * User's amount of losses
     * User's ACS (average combat score)
     * User's KDA (kill/death/assists)
- [ ] User can view global statistics in Valorant
     * Overall agent stats (pick rate, win rate, overall KDA, ACS)
     * Ranked distribution
- [ ] User can search for other players in the game.
    

**Optional Nice-to-have Stories**

* User can view the following:
    * Agent Information
    * Accuracy Statistics 
    * Overall Map Statistics 
    * General account settings
        * Dark mode


### 2. Screen Archetypes

* Login Screen
   * User can login into their Riot account
* Profile Screen
   * Includes personal statistics
* Search Screen
   * User can search for other players 
* Detail Screen
    * User can view global statistics

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Profile screen to search screen
* Profile screen to Detail Screen
* Search Screen to Profile Screen


**Flow Navigation** (Screen to Screen)

* Login Screen to Profile Screen

## Wireframes
* Instead of a hand-drawn wireframe, a digital wireframe is used. Here is the link to the digital wireframe on figma: https://www.figma.com/file/GPLnOQ5aRNwVTwa0LsQXzT/ValoStats?node-id=0%3A1


### [BONUS] Digital Wireframes & Mockups
<img src="http://g.recordit.co/6V9dKqGL8P.gif" height=200>

### [BONUS] Interactive Prototype

## Schema 
### Models
| Property | Type | Description
| --- | --- | --- |
|competitiveTier | int | User’s current rank
|roundsPlayed |int | Shows the number of rounds the user has played.
|characterId |String | Shows the agent of the player
|kills|int|Show the number of kills the user has.
|deaths|int|Show the number of deaths the user has.
|assists|int|Shows the number of assists the user has.
|score|int|Shows user’s overall score
|characterId|String|Shows the user’s character id.
|isActive|Boolean |Shows if user is currently in game
|isRanked|Boolean|Shows if user played ranked game
|ability1Effects|String|Description of agent’s abilities.
|ability2Effects|String|Description of agent’s abilities.
|ultimateEffects|String|Description of agent’s ultimate ability.
|gameName|String|User’s name in game
|playerCard|String|User’s player card
|rankedRating|long|User’s ranked rating
|leaderboardRank|long|Global top players
|map|String|Name of map 

### Networking
#### List of Network Requests by Screen

* Login Screen
  * (Get) Logged in user object
* Profile Screen
  * (Get) user stat 
* Search Screen
  * (Get) players stat
* Detail Screen
  * (Get) global stat

### Progress
#### 4/21/21 

<img src= "http://g.recordit.co/tMEmRIy097.gif" width=250><br>

#### 4/29/21 

* Almost completed the login screen. The issue of calling the api must be resolved as soon as possible.
