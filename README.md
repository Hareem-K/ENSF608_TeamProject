# ENSF 608 – Team Project
 
To avoid merge conflicts, **each person will use their own branch**.  
Please **do not push directly to `main`** — I will merge everything at the end.

Below are the quick steps to create and use your own branch.

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
### 5. Make your changes (SQL work) in your branch only
do **not** edit code on main - since we will all be working on the same files, we need to avoid merge conflicts

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

## Final Notes
- Only push to your own branch.
- Do not push to main.
- I will merge all branches into main at the end.
- If you’re unsure about anything, just ask — it’s better to check than accidentally overwrite someone’s work.

**Once the project is finished, these branch instructions will be removed.**


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


