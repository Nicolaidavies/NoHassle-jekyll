#No hassle jekyll
A jekyll plugin that simplifies the process of publishing a post.

#Basic usage
Instead of naming files with dates: 
	
	2013-09-02-Blog-post.md

Just give it the title of the post with spaces:
	
	Blog post.md

Place all posts in the _nohassle directory or any other folder. This can be specified in the nohassle.rb file.

#What No hassle does

No hassle takes your file, adds the date in front, prints yaml in the header of the file and moves it to _posts. To save even more typing it also copies the file name and uses it as the title.