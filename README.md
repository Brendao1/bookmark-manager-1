# User stories
# Bookmark Manager

As an internet user,
So that I can easily return to the pages that are important to me,
I want to be able to see the list of the pages that I've bookmarked.

As an internet user,
So that I can easily find it later,
I want to be able to bookmark the page that I'm reading.

## Domain Model
![Bookmark Manager Domain Model](snapp.jpg)
# Bookmark_manager


## How to set up the database
$ psql postgres
$ CREATE DATABASE bookmark_manager;
$ \c bookmark_manager;
$ CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
run the query saved in 01_create_bookmarks_table.sql

## How to set up the test database
$ psql postgres
$ CREATE DATABASE "bookmark_manager_test";
$ \c bookmark_manager;
$ CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
$ ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);
