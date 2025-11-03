# S2.1-Data Structure

# 📄 **Description**

# **Level 1**

For all exercises, a Entity Relation Model should be added with the dessign of Data Base.
Also it has to include an Script.sql that creates an loads the Data Base.

## **Exercise 01 - Optic** 👓:

Design a database for an optical store to manage Providers, Glasses, and Clients.

- Providers: Store name, address, contact details (phone, fax), and NIF.

- Glasses: Store brand, prescription, frame details (type, color), lens color, and price.

- Clients: Store name, contact info (address, phone, email), registration date, and the client who referred them (if any).

  Relationships:

        A single supplier provides all glasses for a specific Brand (1:N Supplier:Brand).

        Must track which Employee sold which pair of glasses to a client.

### **Exercise 01 - Queries needed for validation**

    - List the total number of invoices for a client within a specific period.
    - List the different models of glasses sold by an employee during a year.
    - List the suppliers who provided successfully sold glasses.

## **Exercise 02- Pizza Shop** 🍕

Design a database for a pizza delivery website, managing clients, orders, products, stores, and employees.

- Clients: Store name, contact info, and a normalized address (Town, Province).

- Orders: Store date/time, type (delivery/pickup), and total price. An order belongs to one Client (1:N Client:Order).

- Products: Store name, description, image, and price. Products are typed (Pizza, Burger, Drink).

- Categories: Pizzas belong to Categories (1:N Category:Pizza).

- Stores: Store address and location. A store manages many Orders (1:N Store:Order).

- Employees: Store name, NIF, phone, and role (cook/delivery). An employee works at one Store (1:N Store:Employee).

  Relationships:

        An order contains multiple products with quantities (N:M, requires an Order_Product join table).

        Delivery orders must track the specific Employee (delivery person) and the delivery time.

### **Exercise 02 - Queries needed for validation**

    - List how many products from the “Drinks” category were sold in a specific town.
    - List how many orders a particular employee handled.

---

# Level 2

## Exercise 1 – YouTube 🎥

Design a database for a simplified version of YouTube.

- Users: Store email, password, username, and demographic info (DOB, gender, country).

- Videos: Store title, description, file info (size, name, duration), thumbnail, and counters (views, likes, dislikes). Videos have a status (Public, Unlisted, Private) and an upload date/time.

- Channels: Users can create a Channel (1:N) with a name, description, and creation date.

- Tags: Videos can have multiple Tags (N:M relationship).

- Playlists: Users can create Playlists (public or private) which contain multiple Videos (N:M relationship).

- Subscriptions: Users can subscribe to Channels (N:M relationship).

- Comments: Users can Comment on Videos (1:N Video:Comment).

- Likes/Dislikes: The system must track which user liked/disliked which video and when (N:M join table). It must also track likes/dislikes for Comments.

---

# Level 3

## Exercise 1 – Spotify🎵

We will create a simple model of the database required for **Spotify**.

This document outlines the requirements for a simplified Spotify database model.

Core Entities:

- Users: Can be Free or Premium. Stored data includes ID, email, password, username, date of birth, gender, country, and postal code.

- Subscriptions: For premium users, including start/renewal dates and payment method (Credit Card or PayPal). All payment history (date, order number, amount) is recorded.

- Playlists: Created by users, with a title, song count, ID, and creation date. Deleted playlists are marked as such (not removed) and given a deletion date. Active playlists can be shared, tracking which user added a song and when.

- Music Catalog: Includes Songs (title, duration, plays), Albums (title, release year, cover), and Artists (name, image). A song belongs to one album, and an album belongs to one artist, who can have many albums.

Relationships:

    A user can follow many artists.

    Artists can be related to other artists.

    A user can mark songs and albums as favorites.

Final Note: The database must be populated with test data to verify all relationships.


---

## 💻 **Used technologies**

- MySQL Workbench
- Git

## 📋 **Requirements**

- MySQL 8

## 🛠️ **Install**

1. Clone this repo: **>  [git clone](https://github.com/mirexan/S.2.1-Data-Structure.git)**
2. Start using mysql-workbench and entry a local server
3. Open to the directories in: S2.1-Data Structures
4. Execute the script in exercise directory.
5. Execute insert script.
6. Execute queries script.

![imagen](https://images.unsplash.com/photo-1517584623449-78bf7667d0f6?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGRvbHBoaW58ZW58MHwwfDB8fHwy&auto=format&fit=crop&q=60&w=500)