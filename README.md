# Uptime Panda 🐼

A simple website uptime monitoring tool built with **Ruby on Rails**. Tracks website availability, logs uptime history, and performs scheduled health checks.

## Features

- Monitor multiple websites  
- Scheduled background checks with **Sidekiq**, **Redis**, and **Sidekiq Cron**  
- Paginated dashboard using **Kaminari**  
- User authentication and basic dashboard  

## Tech Stack

**Ruby on Rails | PostgreSQL | Sidekiq | Redis | Kaminari**

## Usage

Clone, `bundle install`, `rails db:migrate`, start Redis & Sidekiq, then `rails server`. Visit `http://localhost:3000`.
