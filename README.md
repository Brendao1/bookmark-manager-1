# User stories

As an internet user,
<br>So that I can easily return to the pages that are important to me,
<br>I want to be able to see the list of the pages that I've bookmarked.

As an internet user,
<br>So that I can easily find it later,
<br>I want to be able to bookmark the page that I'm reading.

## Domain Model
![Bookmark Manager Domain Model](snapp.jpg)
# Bookmark_manager

## How to use
clone this repository and then run
$ bundle


## Set up the DEV and TEST databases
Connect to psql and create the bookmark_manager and bookmark_manager_test databases:

$ psql postgres
$ CREATE DATABASE bookmark_manager;
$ CREATE DATABASE bookmark_manager_test;

To set up the appropriate tables, connect to each database and run each of the scripts in db/migrations folder in the given order.

To connect to the databases, run the following for each database:
$ \c bookmark_manager;
$ \c bookmark_manager_test;

## To run the Bookmark Manager app:
$ rackup

## To view bookmarks, navigate to localhost:9292

## To run tests:
$ RSpec

## To run linting:
$ Rubocop
