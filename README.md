
# S2.1-Data Structure

# 📄 **Description**

# **Level 1**

For all exercises, a Entity Relation Model should be added with the dessign of Data Base.
Also it has to include an Script.sql that creates an loads the Data Base.

## **Exercise 01 - Optic**

    An optical store called “Cul d’Ampolla” wants to computerize the management of its clients and eyeglass sales.

    SuppliersAn optical store called **“Cul d’Ampolla”** wants to computerize the management of its clients and eyeglass sales.

**Suppliers**
    The store wants to know which supplier provides each pair of glasses. Specifically, for each supplier, they want to know:
    - **Name**
    - **Address** (street, number, floor, door, city, postal code, and country)
    - **Telephone**
    - **Fax**
    - **Tax ID (NIF)**

    The store’s purchasing policy is that glasses of a particular brand will be bought from a single supplier (to obtain better prices), but a supplier can provide glasses from several brands.

**Glasses**
    For each pair of glasses, they want to know:
    - **Brand**
    - **Lens prescription for each eye**
    - **Frame type** (rimless, plastic, or metal)
    - **Frame color**
    - **Lens color** (for each lens)
    - **Price**

**Clients**
    For each client, the store wants to store:
    - **Name**
    - **Postal address**
    - **Telephone number**
    - **Email address**
    - **Registration date**
    - **The client who recommended** the establishment (if any)
    - **The employee who sold** each pair of glasses

### **Exercise 01 - Queries needed for validation**

- List the total number of invoices for a client within a specific period.
- List the different models of glasses sold by an employee during a year.
- List the suppliers who provided successfully sold glasses.

## **Exercise 02- Pizza Shop02**

You have been hired to design a website that allows customers to place online food delivery orders.

### Database Modeling Guidelines

    For each client, we store a unique identifier:
    - **First name**
    - **Last name(s)**
    - **Address**
    - **Postal code**
    - **Town/City**
    - **Province**
    - **Phone number**
    - Town and province data will be stored in separate tables:
        - A town belongs to a single province.
        - A province can have many towns.

    - For each town, we store:
        - **Unique identifier**
        - **Name**

    - For each province, we store:
        - **Unique identifier**
        - **Name**


**A person can place many orders, but each order can be placed by only one person.**

    For each order, we store:
    - **Unique identifier**
    - **Date/time**
    - **Type:** delivery or pickup
    - **Quantity of each product**
    - **Total price**

**An order can contain one or several products.**


Products can be **pizzas**, **burgers**, or **drinks**.

    For each product, we store:
    - **Unique identifier**
    - **Name**
    - **Description**
    - **Image**
    - **Price**

#### Pizza Categories
- Pizzas can belong to various categories, which may change names throughout the year.
- A pizza belongs to only one category.
- A category can contain many pizzas.

    For each category, we store:
    - **Unique identifier**
    - **Name**

### Stores and Employees
An order is managed by a single store, and a store can manage many orders.

    For each store, we store:
    - **Unique identifier**
    - **Address**
    - **Postal code**
    - **Town/City**
    - **Province**

A store can have many employees, but each employee works in only one store.

    For each employee, we store:
    - **Unique identifier**
    - **First name**
    - **Last name(s)**
    - **Tax ID (NIF)**
    - **Phone number**
    - **Role** (cook or delivery person)

    For delivery orders, record:
    - **The delivery person assigned**
    - **Delivery date/time**


### **Exercises 1 to 2 Observation**

As exercise 2 consist in addition of one more condition to the same list of exercise 1 i've done
both exercises in the same package and Application class.

### **Exercise 03**

	Create a list with the names of the months of the year. Print all elements of the list using a lambda expression.

### **Exercise 04**

	Do the same print as in the previous point, but using a method reference.

### **Exercises 3 to 4 Observation**

As exercise 4 consist in printing the same list from exercise 3 using method *references* i've
unified both exercises in the same package.

### **Exercise 05**

	Create aFunctional Interface with a method named getPiValue() that must return a double. From the main() method
	of the main class, instantiate the interface and assign it the value 3.1415. Invoke the getPiValue() method and
	print the result.

### **Exercise 06**

	Create a list with numbers and text strings and sort the list with the strings from shortest to longest.

### **Exercise 07**

	With the list from the previous exercise, now sort it in reverse, from the longest string to the shortest.

### **Exercises 6 to 7 Observation**

As exercise 7 consist in printing the same list but reversed from exercise 6
I've made both in the same package and main.

### **Exercise 08**

	Create a Functional Interface that contains a method named reverse(). This method must take a String as input and
	return a String. In the main() method of the main class, inject into the created interface using a lambda expression
	the body of the method, so that it returns the same string received as a parameter but reversed. Invoke the instance
	of the interface by passing it a string and check if the result is correct.

## **Level 02**

### **Exercise 01**

	Create a list of strings with proper names. Write a method that returns a list of all strings that start with the
	letter 'A' (uppercase) and have exactly 3 letters. Print the result.

### **Exercise 02**

	Write a method that returns a comma-separated string based on a list of Integers. Each element must be preceded
	by the letter “e” if the number is even, or the letter “o” if the number is odd. For example, if the input list
	is (3, 55, 44), the output must be: “o3, o55, e44”. Print the result.

## **Exercise 03**

	Create a Functional Interface that contains a method named operacio(). This method must return a float. Inject into
	the created interface using a lambda the body of the method, so that the operation can be transformed into an
	addition, subtraction, multiplication, and division.

## **Exercise 04**

	Create a list that contains some text strings and numbers.
	Sort them by:

	- Alphabetically by the first character. (Note: charAt(0) returns the numeric code of the first character)
  	- Strings that contain an "e" first, the rest of the strings after. Write the code directly in the lambda.
	- Modify all elements of the list that contain an ‘a’. Replace the ‘a’ with a ‘4’.
	- Show only the elements that are numeric. (Even if they are stored as Strings)

### **Level 03**

**Exercise 01**

	Create a class Student with the attributes: name, age, course, and grade.

	Fill a list with 10 students.

	- Display on screen the name and age of each student.
	- Filter the list for all students whose name starts with the letter 'a'.
	Assign these students to another list and display the new list (all using lambdas).
	- Filter and display the students who have a grade of 5 or higher.
	- Filter and display the students who have a grade of 5 or higher and who are not in the PHP course.
	- Display all students who are taking JAVA and are of legal age (18 or older).

## 💻 **Used technologies**

- Java
- Git

## 📋 **Requirements**

- Oracle OpenJDK 21.0.8

## 🛠️ **Install**

1. Clone this repo: **>  [git clone](https://github.com/mirexan/S1.8-Lambdas)**
2. Access to the directories in: S1.8-Lambdas
3. Execute each program in each main file.
