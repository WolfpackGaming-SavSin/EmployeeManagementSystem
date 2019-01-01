# Employee Management System

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

## Dependancies
Ruby Version - 2.5.3
Rails Version - 5.2.2

## Contributing
[![Code Triage Badge] (https://www.codetriage.com/wolfpackgaming-savsin/employee_management_system/badges/users.svg)](https://www.codetriage.com/wolfpackgaming-savsin/employee_management_system)