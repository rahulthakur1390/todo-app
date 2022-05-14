# To-Do List

Ruby on Rails application to manage Family member and tasks.

## Functionality

- As a user, I can add a Family member to the list.
- As a user, I can add a task to the list and assign to any family memeber which was created by me.
- As a user, I can see all the tasks on the list in an overview.
- As a user, I can drill into a task to see more information about the task.
- As a user, I can delete a Family member.
- As a user, I can delete a task.
- As a user, I can mark a task as completed.

## Running the app

Clone this repo:

```
$ git clone https://github.com/rahulthakur1390/todo-app
```

Heroku url
```
URL: https://rails-todo-list-rahul.herokuapp.com/

user login details 
email: testuser1@gmail.com
password: 123456

```
Install all dependancies:

```
$ bundle install
```

Create the database and run migrations:

```
$ rake db:create db:migrate
```

Start the server:

```
$ rails server
```

And open the app in your browser at <http://localhost:3000/>.
