# 🍽️ Food Ordering Website

A simple and functional **Food Ordering Web Application** built using **PHP**, **MySQL**, **HTML**, and **CSS**. This project allows users to browse, search, and order food items, while also giving administrators control over the management of foods, categories, and orders through an admin dashboard.

---

## 🚀 Features

### 🔐 Admin Panel
- Admin login/logout
- Add, update, delete food items
- Add, update, delete food categories
- Manage orders and track status
- Dashboard with summary metrics (orders, revenue, etc.)

### 🔎 Frontend Functionality
- Browse food by category
- Search for food using keywords
- Place food orders with customer information
- Display food images and descriptions

### 🛡️ Security
- Basic SQL Injection prevention techniques

---

## 📁 Project Structure

```bash
📦 Food-Ordering-Website
├── admin/               # Admin panel interface
├── css/                 # CSS styles
├── images/              # Food and UI images
├── config/              # Configuration files
├── partials-front/      # Frontend UI components
├── index.php            # Main landing page
├── categories.php       # List of food categories
├── category-foods.php   # Foods in a specific category
├── foods.php            # List of all available foods
├── food-search.php      # Food search results
├── order.php            # Food order placement
├── food_order.sql       # SQL file to set up the database
└── README.md
