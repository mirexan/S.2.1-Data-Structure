
# S2.1-Data Structure

# 📄 **Description**

# **Level 1**

For all exercises, a Entity Relation Model should be added with the dessign of Data Base.
Also it has to include an Script.sql that creates an loads the Data Base.

## **Exercise 01 - Optic**

An optical store called “Bottle Bottom” wants to computerize the management of its clients and eyeglass sales.

### **Providers**
    
The store wants to know which supplier provides each pair of glasses. Specifically, for each supplier, they want to know:
- **Name**
- **Address** (street, number, floor, door, city, postal code, and country)
- **Telephone**
- **Fax**
- **Tax ID (NIF)**

The store’s purchasing policy is that glasses of a particular brand will be bought from a single supplier (to obtain better prices), but a supplier can provide glasses from several brands.

### **Glasses**
For each pair of glasses, they want to know:
- **Brand**
- **Lens prescription for each eye**
- **Frame type** (rimless, plastic, or metal)
- **Frame color**
- **Lens color** (for each lens)
- **Price**

### **Clients**
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

### Client

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

### Order

For each order, we store:
- **Unique identifier**
- **Date/time**
- **Type:** delivery or pickup
- **Quantity of each product**
- **Total price**

**An order can contain one or several products.**

### Product 

Products can be **pizzas**, **burgers**, or **drinks**.

For each product, we store:
- **Unique identifier**
- **Name**
- **Description**
- **Image**
- **Price**

### Pizza Categories

Pizzas can belong to various categories, which may change names throughout the year.
- A pizza belongs to only one category.
- A category can contain many pizzas.

For each category, we store:
- **Unique identifier**
- **Name**

An order is managed by a single store, and a store can manage many orders.

### Stores and Employees

For each store, we store:
- **Unique identifier**
- **Address**
- **Postal code**
- **Town/City**
- **Province**

A store can have many employees, but each employee works in only one store.

### Employee

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

### **Exercise 02 - Queries needed for validation**

    - List how many products from the “Drinks” category were sold in a specific town.
    - List how many orders a particular employee handled.

---

# Level 2

## Exercise 1 – YouTube

We will create a simple model of the database for a reduced version of **YouTube**.

### Users
For each user, we store:
- **Unique identifier**
- **Email**
- **Password**
- **Username**
- **Date of birth**
- **Gender**
- **Country**
- **Postal code**

### Videos
A user uploads videos. For each video, we store:
- **Unique identifier**
- **Title**
- **Description**
- **File size**
- **Video file name**
- **Duration**
- **Thumbnail**
- **Number of views**
- **Number of likes**
- **Number of dislikes**

A video can have three different statuses:
- Public
- Unlisted
- Private

A video can have multiple tags.  
Each tag has:
- **Unique identifier**
- **Tag name**

We must also store:
- **The user who uploaded** the video
- **Upload date/time**

### Channels
A user can create a channel.  
For each channel, we store:
- **Unique identifier**
- **Name**
- **Description**
- **Creation date**

### Subscriptions, Likes, and Playlists
- A user can subscribe to other users’ channels.
- A user can like or dislike a video **only once**.
  - We must record **which users** liked/disliked each video and **when**.

#### Playlists
A user can create playlists with videos they like.  
For each playlist, we store:
- **Unique identifier**
- **Name**
- **Creation date**
- **Status** (public or private)

### Comments
A user can comment on a specific video.  
Each comment has:
- **Unique identifier**
- **Text**
- **Date/time posted**

A user can like or dislike a comment.  
We must record:
- **Which users** liked/disliked each comment
- **Date/time** of action

---

# Level 3

## Exercise 1 – Spotify

We will create a simple model of the database required for **Spotify**.

### Users
There are two types of users: **free** and **premium**.

For each user, we store:
- **Unique identifier**
- **Email**
- **Password**
- **Username**
- **Date of birth**
- **Gender**
- **Country**
- **Postal code**

### Subscriptions
Premium users have subscriptions.  
For each subscription, we store:
- **Start date**
- **Renewal date**
- **Payment method** (credit card or PayPal)

#### Credit Card Payments
We store:
- **Card number**
- **Expiration month and year**
- **Security code**

#### PayPal Payments
We store:
- **PayPal username**

We must record all payments made by a premium user during their subscription period.  
For each payment, we store:
- **Date**
- **Order number (unique)**
- **Total amount**

### Playlists
A user can create many playlists.  
For each playlist, we store:
- **Title**
- **Number of songs**
- **Unique identifier**
- **Creation date**

When a playlist is deleted, it is **not** removed from the system — it is **marked as deleted**.  
We store:
- **Date when it was marked as deleted**

There are two types of playlists:
- **Active**
- **Deleted**

An active playlist can be **shared** with other users.  
For shared playlists, we record:
- **Which user** added each song
- **Date/time** added

### Songs, Albums, and Artists
- A song belongs to **one album only**.
- An album can contain **many songs**.
- An album is published by **one artist**.
- An artist can publish **many albums**.

#### Songs
For each song, we store:
- **Unique identifier**
- **Title**
- **Duration**
- **Number of plays**

#### Albums
For each album, we store:
- **Unique identifier**
- **Title**
- **Year of release**
- **Cover image**

#### Artists
For each artist, we store:
- **Unique identifier**
- **Name**
- **Artist image**

### Favorites and Relationships
- A user can follow many artists.
- Artists can be related to other artists (to show “related artists”).
- A user can mark multiple albums and songs as favorites.

> **Note:** Once the databases are created, fill the tables with test data to verify that the relationships are correct.

---

## 💻 **Used technologies**

- Java
- Git

## 📋 **Requirements**

- Oracle OpenJDK 21.0.8

## 🛠️ **Install**

1. Clone this repo: **>  [git clone](https://github.com/mirexan/S1.8-Lambdas)**
2. Access to the directories in: S1.8-Lambdas
3. Execute each program in each main file.
