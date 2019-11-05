# the hat zone

[View project](https://the-hat-zone.herokuapp.com)

## Running locally

To run the application locally, ensure that your computer has Ruby version 2.5.3.  Clone the repository by running `git clone https://github.com/devonproudfoot/the-hat-zone`.  Navigate to the folder on your computer and run `bundle install` to install all relevant gems and `rake db:migrate` to create the initial database.  Finally, run `rails server -b 0.0.0.0 -p 3000` and navigate to localhost:3030 in the web browser of your choice!

## Overview

A Ruby on Rails application for displaying my collection of hats, and allowing for user comments, using the Bootstraps framework.

## Using the application

The home page allows users to create an account, or sign in from the navigation bar. The homepage will display the three most recently added hats.

![Homepage](/readme_images/homepage.png)

Clicking on the "View Hats" option in the navigation bar will allow users to browse through all hats, sorting them by clicking the rows at the top of the list of hats.  A search bar can also be found in the top right hand side of the website.

![Index page](/readme_images/index.png)

Selecting a hat will display more information, as well as display all of the comments on the hat.

![Show page](/readme_images/show.png)

To add a new comment, users need to be logged in.  Click the "Add comment button and fill information in the pop-up window."

![Adding a comment](/readme_images/comment.png)