#NoHassle jekyll
A jekyll plugin that simplifies the process of publishing a post.

#Basic usage
Instead of naming files with dates: 
	
	2013-09-02-Blog-post.md

Just give it the title of the post with spaces:
	
	Blog post.md

Place all posts in the _nohassle directory or any other folder. This can be specified in the nohassle.rb file.

#What No hassle does

No hassle takes your file, adds the date in front, prints yaml in the header of the file and moves it to _posts. To save even more typing it also copies the file name and uses it as the title.

##Before
	
	_nohassle/Blog post.md

	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


##After
	
	_posts/2013-09-29-Blog-post.md

	---
	layout: post
	title: Blog post
	---

	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
