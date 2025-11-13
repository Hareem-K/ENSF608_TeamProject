# ENSF 608 – Team Project
 
To avoid merge conflicts, **each person will use their own branch**.  
Please **do not push directly to `main`** — all merges will be handled by Hareem at the end.

Below are instructions for setting up your branch, contributing to the SQL file, and completing the remaining project tasks.

---

## 🔧 Steps to Set Up Your Branch

### 1. Clone the repo (first time only)

```bash
git clone <repo-link>
code <repo name>

```

### 2. Open a new terminal and move into the project folder

```bash
cd <repo-name>
```

### 3. Create and switch to your branch
(Replace yourname-branch with your name)

```bash
git checkout -b yourname-branch

```
### 4. Confirm that you are on the correct branch

```bash
git branch

```
you should see something like:

```bash
* yourname-branch
  main
```

Make all your changes in your branch only. We are all working in the same file, so pushing to main will create merge conflicts.

### 5. Make your changes (SQL work) in your branch only
do **not** edit code on main - since we will all be working on the same file, we need to avoid merge conflicts

## Saving and Uploading Your Work

### 6. Check what changed
```bash
git status
```

### 7. Add your updates

```bash
git add --all
```

### 8. Commit your changes
```bash
git commit -m "Describe what you worked on"
```

### 9. Push your branch
```bash
git push origin yourname-branch
```

### Creating a Pull Request (PR)

Once your work is ready for review:
- Go to the GitHub repo page.
- Click “Compare & Pull Request” next to your branch.
- Write a brief description of what you added or changed. Check your work and make sure everything you would like to add is accurate.
- Submit the Pull Request.
- Do not merge it yourself — we will review and merge together.

This avoids merge conflicts and ensures everyone knows what changes are coming in.

## Final Notes
- Only push to your own branch.
- Do not push to main.
- We will merge all branches into main as the project goes on/at the end.
- If you’re unsure about anything, just ask — it’s better to check than accidentally overwrite someone’s work.

**Once the project is finished, these branch instructions will be removed.**

---
## Project Tasks & What Everyone Needs to Do

Below is the list of remaining steps for the project.
Everyone should contribute to different sections using their own branch.

### 1. Insert Sample Data

We need realistic sample data for all tables, including:
- Users
- Volunteers / Sponsors
- Venues
- Events
- Categories & Event_Category_Link
- Registrations
- Payments
- Reviews
- Notifications
- Volunteer Availability & Interests

How to contribute:
- Add INSERT INTO statements below the schema in the same SQL file.
- Only insert data for the tables you choose to work on.
- Avoid inserting into the same tables as someone else without discussing first.

  
### 2. Test the Database

Everyone should help test that our database works correctly.

This includes:
- Running the entire file from top to bottom in MySQL Workbench
- Making sure tables are created correctly
- Ensuring foreign keys work
- Making sure sample data inserts without errors
- Testing many-to-many linking tables
- Testing the derived attribute (r_total_amount in Registrations (derived from unit price and quantity)

### 3. Write & Test Queries

Based on our proposal and project description, we need SQL queries such as:
- List all upcoming events
- Show volunteers available on a certain day
- List sponsored events
- Retrieve events by category
- Get all reviews for an event
- Show all events a user is registered for
- Organizer dashboard queries
- Sponsor-related queries
- LLM queries (e.g., “show me free events this weekend”)
- Any required joins (inner, left, right)

These queries will be added at the bottom of the SQL file under:

  ```bash
  -- ==============================
  -- TEST QUERIES
  -- ==============================
  ```

### 4. Verify With Proposal

Before final submission, everyone must verify that:
- Every table in the ERD exists in the SQL file
- Every relationship matches the logical model
- Attributes match exactly
- No constraints are missing
- All requirements from the proposal/project requirements are included

### 5. Final Review

Near the end of the project:
- We review each remaining PR together
- Fix any issues or merge conflicts
- Merge branches into main
- Run the final SQL file in MySQL to confirm everything works

Once complete, we create the final deliverable for submission.

---

## Project Description

This repository contains the SQL database for our group’s ENSF 608 project: a **community event and volunteering platform** designed to connect people with local events, workshops, and volunteer opportunities. The goal of the system is to help users easily discover, register for, and participate in community initiatives, while giving organizers and sponsors tools to manage engagement.

### System Overview
The platform supports multiple user types — community members, event organizers, volunteers, and sponsors. It will be built as a **responsive web application** that works across desktop and mobile. The underlying SQL database stores structured, normalized data, with clearly defined entities and relationships to ensure consistency and allow for meaningful queries.

### LLM Integration
The system incorporates LLM features such as:
- Natural language → SQL translation  
  (e.g., “show me free family events this weekend”)
- Summarizing event details for notifications or newsletters
- Personalized recommendations based on user history and interests
- Suggesting relevant sponsors or volunteers based on skills and categories

### Database Scope
Our relational database includes the following core entities:

- **Users** → profiles, roles (attendee, volunteer, organizer)  
- **Events** → title, date, location, type, organizer  
- **Venues** → physical or virtual event locations  
- **Volunteers** → skills, availability, volunteer profiles  
- **Sponsors** → businesses/organizations supporting events  
- **Registrations** → links users to events they are attending  
- **Event Categories** → tags for classifying events (workshop, fundraiser, festival, etc.)  
- **Reviews/Feedback** → user comments and ratings  
- **Notifications** → reminders or system alerts for users  
- **Payments** → transactions for ticketed or sponsored events  

All entities are normalized and connected through appropriate primary/foreign keys to support efficient querying and a scalable platform design.

This SQL repository will store all table definitions, constraints, sample data, and final queries for the project.
