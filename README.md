# Ruby on Rails Tutorial, 4th Edition (2017)

## toy_app

This is the second application for the
[*Ruby on Rails Tutorial*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/). Hello, world!

# My Solutions to Exercises

## Section 2.2.1
1. The CSS id is "notice". When the browser is refreshed, the <p id="notice"></p>
    element is still there, but there is no inner HTML to display.
2. User was successfully created. (Email address validation not required, apparently)
3. User was successfully created. (Same as #2)
4. A dialog box pops up asking "Are you sure?", and if 'yes' is clicked, a _flash_
   appears indicating "User was successfully destroyed."

## Section 2.2.2
1. /users/1/edit MVC process:
    - Browser issues request to get /users/1/edit page
    - Rails routes /users/1/edit to the *edit* action of the users controller
    - The *edit* action doesn't do anything to interact with the model directly, so skip steps 4 and 5
    - The controller requests the edit view
    - The edit view is rendered into HTML
    - The controller passes the HTML back to the browser
2. <td><%= link_to 'Edit', edit_user_path(user) %></td>
3. edit.html.erb

## Section 2.3.1
1. CSS id is "notice". The flash disappears when page is refreshed.
2. Micropost is successfully created due to no data validation yet.
3. Same as #2.
4. Done.

## Section 2.3.2
1. An error now occurs letting the user know that the content is too long (>140 characters).
2. CSS id of the error is "error_explanation".

## Section 2.3.3
1. (in /app/views/users/show.html.erb):
  <p>
  <strong>First Micropost:</strong>
  <%= @user.microposts.first.content %>
  </p>
2. "Content can't be blank" error if no text is entered
3. (in /app/models/user.rb): 
    validates :name, presence: true
    validates :email, presence: true
  "(Name/Email) can't be blank" error if either field is left blank.

## Section 2.3.4
1. class ApplicationController < ActionController::Base
2. Yes, its located in /app/models/application_record.rb
  