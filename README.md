# Project 02: Ondex

![Ondex Logo](https://trello-attachments.s3.amazonaws.com/56d09325b530bb45beeb8c1d/374x149/b3c4932a47428a98d836f099e30b7060/ondex-logo.png)


<br>
## [Always on deck, with Ondex.](https://polar-sea-72592.herokuapp.com/)

A Marketplace app where users can post their possessions for barter. Users will be able to place bids with any thing of choosing, whether it would be currency, other items, and/or services. Users will be able to post their bid for the item, and the seller can accept or reject the bid. The seller can also choose to immediately cut the aution short when a desired bid has been offered and accepted.

###[Github Repo](https://github.com/oatterzongit/ondex)


<br>

### Planning Process
###[Ondex Trello](https://trello.com/b/BBncBX5o/project-02-1-current)
- User Stories: located in Trello
- Wireframes:
![Wireframes](https://trello-attachments.s3.amazonaws.com/56c8e9f59ceb808ba3f156ae/1024x624/cbed5dc70b452627e158b4339c6a29d5/photo.jpg)
![Wireframes](https://trello-attachments.s3.amazonaws.com/56c8eaced5a268e9b775bc60/1024x430/0f25e8f4ea9edcc060743a6a40c9d79b/photo.jpg)

- Entity Relational Diagrams:
![ERD](https://trello-attachments.s3.amazonaws.com/56d087dff22052e2f228e0e5/2966x1392/29d68062b52e283128ae3170ad5df4fd/Screen_Shot_2016-02-26_at_9.15.45_AM.png)


 
<br>
 
## Installation
 
This is a rails 4 application, which means it must be served on your local machine or deployed your web server/services like Heroku.

* Fork the Repo from [Github Repo](https://github.com/oatterzongit/ondex)
* Install Heroku Toolbelt from [Heroku Toolbelt](https://toolbelt.heroku.com/)
* Prepare for deployment by following the Heroku instructions here:
	* [Heroku Deployment Instructions](https://devcenter.heroku.com/articles/getting-started-with-rails4)

###__WARNING: IF YOU ARE USING PAPERCLIP && Amazon AWS S3 for the File Attachment Function, FOLLOW THESE STEPS BEFORE DEPLOYING TO HEROKU__

###__FAILURE TO FOLLOW PROPER INSTRUCTIONS CAN RESULT IN THEFT OF YOUR AWS KEYS, RESULTING IN POSSIBLE FINANCIAL RAMIFICATIONS__

##__For Paperclip and AWS for File Attachment:__



Install dotenv in your app: [dotenv github](https://github.com/bkeepers/dotenv)

* Place the dotenv gem in your gemfile and MAKE SURE its loadorder is on top of the file.
* ` gem 'dotenv-rails', :groups => [:development, :production]`
* run `bundle install`
* touch a new `.env` file in the ROOT `/` of your app directory
* In your `.env`, add these lines:

``` 
S3_BUCKET=YOURS3BUCKET
AWS_ACCESS_KEY_ID=YOURAWSACCESSKEYGOESHERE
AWS_SECRET_ACCESS_KEY=YOURSECRETKEYGOESHERE
```
__Open your `.gitignore` file in your app's `/` root dir__
__Add `.env` to the file. This is so that git will not track your .env and push it to the public, exposing your access and secret keys.__


## Technologies


The following technologies were used to create this web application:

* Ruby 2.2.3
* Rails 4.2.5
* PRY IRB
* bcrypt (for user authorization)
* Rails-ERD
* Materialize CSS
* Paperclip GEM (For File Attachments)
* Dotenv GEM (Securing AWS Keys)
* SASS
* Amazon Web Services S3 CDN Hosting
* AWS SDK Gem
* Heroku
 
	
## Incomplete Features/Unsolved Issues:
I was not able to complete the USER_ID Reveal feature where only the Auction author can see the Usernames and content of the bids that have been placed. If you arent the author, you will only see the bid author, but not the bid amount. This is only due to time constraints, I already have the methods visualized.
Another unfinished feature was to be able to end the auction when the auctioner has selected the winning bid of their choice.

## Ice Box Features:
The following features are planned for future sprints:
* Sort and Filter features by Users, Item types, tags, date, etc
* Time limit for auctions
* Profile Page for users
* TAGS for auctions
* Categories for types of auctions, [sale, barter, free, etc]
* Trending page, that displays auctions by 'popularity' using page views, how many offers, etc
* Upvote and Downvotes on users

 
 


