### Takeaway Challenge

[![Build Status](https://travis-ci.org/MrJons/takeaway-challenge.svg?branch=master)](https://travis-ci.org/MrJons/takeaway-challenge.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/MrJons/takeaway-challenge/badge.svg?branch=master)](https://coveralls.io/github/MrJons/takeaway-challenge?branch=master)

##### How to run this code in the terminal:

* Clone this repo
* Run the command 'bundle' in the project directory to ensure you have all the gems
* Enter IRB
* Require the program using "require './lib/main.rb' "
* Create a new order session with "order = Menu.new"
* Use the following commands to navigate:
  * order.show_menu
  * order.select_dish(dish)
  * order.view_basket
  * order.place_order

##### User stories
```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices
# Built and tests passing

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes
#Built and tests passing

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order
#View basket functionality added and checked.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```
