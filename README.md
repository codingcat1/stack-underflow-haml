#STACK UNDERFLOW (for testing purposes only)
------------
####Created by [Catherine Tran] (https://github.com/tranc489)

#####Description:
Continuation of my Stack Overflow clone site.  Used for practicing HAML language by converting the html.erb files.  Also used to begin work with Tumblr API.


#####Instructions:
In terminal, clone by:
```console
$ git clone https://github.com/tranc489/stack-underflow-haml.git
```
Install gems by running:
```console
$ bundle install
```
Create databases on current machine by running:
```console
$ rake db:create
$ rake db:migrate db:test:prepare
```
Start rails server by running:
```console
$ rails s
```
Enter `localhost:3000` in browser address bar.

Have fun!



#####Known Bugs/Functionalities not yet created, plus additional Notes:
- User must be signed up and logged in in order to be able to see the button to create a new question.(will work on fixing so that user can see the button but gets an error message when after clicking it if they are not logged in).
- Creator of question cannot yet vote best answer to the question.
- Users cannot yet upvote on answers.
- Polymorphism not yet implemented.(Comments cannot have multiple comments)




####License:
MIT
