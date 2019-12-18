# wk5-ruby_project-santas_workshop
Practising using SQL, Ruby, Sinatra - Week 5 project

Project - Web Programming with Ruby

Over the next week you will build an app to consolidate and expand on everything you have learned:

Object oriented programming with Ruby
Test Driven Development
Web Programming (REST, MVC)
Interacting with a PostgreSQL database (CRUD)
Rules

The project must be built using only:

HTML / CSS
Ruby
Sinatra
PostgreSQL and the PG gem
It must NOT use:

Any Object Relational Mapper (e.g. ActiveRecord)
JavaScript. At all. Don't even think about it.
Any pre-built CSS libraries, such as Bootstrap.
Authentication. Assume that the user already has secure access to the app.


Shop Inventory

Build an app which allows a shopkeeper to track their shop's inventory. This is not an app which the customer will see, it is an admin/management app for the shop workers.

MVP

The inventory should track individual products, including a name, description, stock quantity, buying cost, and selling price.
The inventory should track manufacturers, including a name and any other appropriate details.
The shop can sell anything you like, but you should be able to create and edit manufacturers and products separately.
This might mean that it makes more sense for a car shop to track makes and models of cars. Or a bookstore might sell books by author, or by publisher, and not by manufacturer. You are free to name classes and tables as appropriate to your project.
Show an inventory page, listing all the details for all the products in stock in a single view.
As well as showing stock quantity as a number, the app should visually highlight "low stock" and "out of stock" items to the user.
Inspired by

eBay, Amazon (back end only), Magento


Created:

- Santa's Workshop - an inventory system to allow Santa to keep track of the kinds of toys that are being produced and the departments making toys
- can view, update, add and delete toys and departments
