# Employee Management System
<a href="https://www.codetriage.com/wolfpackgaming-savsin/employee_management_system">
    <img src="https://www.codetriage.com/wolfpackgaming-savsin/employee_management_system/badges/users.svg" alt="CodeTriage badge" />
</a>

> In today's world there are so many different departments that manage employee information. With that level of complexity comes an interesting problem. Who is responsible for keeping track of these changes?

> In step Rails Employee Management System or EMS for short. It aims to solve the problem by allowing employers to manage all of their information in one place. This was not intended to replace your basic Time and Attendance system but to allow for various access rights to be stored in an easily manageable system for all departments to remain on the same page.

## Running Locally

Make sure you have set up an environment to run a Ruby On Rails application. Follow the instructions below to install locally and modify/run the application.
```sh
git clone https://github.com/WolfpackGaming-SavSin/EmployeeManagementSystem.git # or clone your own fork
cd EmployeeManagementSystem
bundle install --without production # Allows for SQLite in development and testing and uses PG for production
rails db:migrate
rails s
```
Your app should now be running on your local host. Rember that if you are using a cloud IDE such as C9.io or AWS Cloud9 you follow their instructions to start the server.

## ToDo List
    1. Implement Authorization via pundit gem
    2. Implement PDF System for various needs (reports, new hire docs, etc.) via Prawn
    3. Implement Search Features via Scopes
    4. Implement Scopes based on Authorization
    5. I'll think of something I'm sure!

## Dependancies
Ruby Version - 2.5.3
Rails Version - 5.2.2

## Contributing
You are more than welcome to fork this project and contribute. This was orignally started to learn Rails development and test how far I can go into this type of system. Feel free to do with this as you wish.