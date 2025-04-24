# Capstone-Project-iOS

### DUA COUNTER

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

A spiritual productivity app that allows users to count and track their daily duas (supplications), set goals, and build habits around consistent recitation. Users can select from a list of common duas or add their own custom ones. Users can select from a list of common duas or add their own custom ones. The app keeps a history of recitations and allows for reminders and streak tracking.

### App Evaluation

- **Category:** Lifestyle
- **Mobile:** Mobile is essential for quick and convenient access, especially for on-the-go use during daily prayers or commutes. Push notifications help remind users to complete their daily goals, and widgets can show current counts or streaks on the home screen
- **Story:** Helps Muslims strengthen their spiritual discipline by consistently remembering Allah through supplications. Whether someone wants to develop a stronger habit of dhikr (remembrance) or track specific duas after prayer, this app becomes a personalized spiritual assistant.
- **Market:** Practicing Muslims around the world, especially those interested in spiritual development and habit tracking. The app can support multiple languages and regional preferences, making it adaptable for global use.
- **Habit:** Highly habit-forming for users who are building daily spiritual routines. Features like streak tracking, daily reminders, and goal-setting encourage consistent use. The ability to mark off duas in real-time after salah (prayer) makes it a part of the user’s daily rhythm.
- **Scope:**
  - V1: Users can select and count duas, set a daily goal, and track progress.
  - V2: Introduce customizable duas, streak tracking, and reminders.
  - V3: Add social features like sharing achievements with friends, joining group challenges, or requesting duas from others.
  - V4: Add a learning mode with transliterations, translations, and audio recitations for memorization.

## Product Spec

### 1. User Stories (Required and Optional)

**✅ Required Must-have Stories**

* As a user, I want to select from a list of common duas, so that I can start counting them right away.  
* As a user, I want to manually increment my dua counter, so I can keep track of my recitations.  
* As a user, I want to set daily goals for my dua recitations, so I can build a consistent habit.  
* As a user, I want to receive reminders throughout the day, so I don’t forget to complete my duas.  
* As a user, I want to track my daily and weekly streaks, so I can stay motivated and accountable.

**✨ Optional Nice-to-have Stories**

* As a user, I want to hear audio recitations of each dua, so I can learn correct pronunciation.  
* As a user, I want to share my streak or progress with friends, so I can inspire others and stay encouraged.

---

### 2. Screen Archetypes

- [ ] **Home Screen**
  * Displays user's dua progress, tasbih counter, recent accessed dua, historical dua
  * Associated with: view dua list, increment counter, can speak

- [ ] **Goals**
  * Set daily goals and manage goals
  * Associated with: set daily goals, configure notifications
     
- [ ] **Settings** 
  * General settings like: settings about the account, translation, history. Also, contact us and dontes options
  * Associated with: listen to dua recitation

- [ ] **Share Progress Screen** (Optional)
  * Allows users to share progress on social media or with friends
  * Associated with: share streaks and goals

---

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Goals
* Settings

**Flow Navigation** (Screen to Screen)

- [ ] Home Screen
  * ➝ Tap tasbih counter ➝ Increment count, timer
  * ➝ Tap Recent Dua ➝ Continue where left off in the the tasbih counter or 
  * ➝ Browse Historical Dua ➝ Browse to Online For Different Catagories Type Dua
    
- [ ] Goals Screen
  * ➝ Set goal ➝ Save

- [ ] Setting Screen
  * ➝ Tap any settings will go to that specific settings only.
  * ➝ Tap to Recent will go to any recent dua or goals that was left off unfinished. 
  * ➝ Extra Steps like donation and contact can be made. 

---

## Wireframes

<img src="https://github.com/saf1Hckr/Capstone-Project-iOS/blob/main/Wireframing.jpg" width=1000>

---

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

---

## Schema 

[This section will be completed in Unit 9]

### Models

| Model        | Properties                          |
|--------------|-------------------------------------|
| User         | email, password, streakCount, goals |
| Dua          | text, translation, audioURL         |
| CounterEntry | duaId, userId, date, count          |

### Networking

- [Home Screen]
  - (GET) Fetch user streaks
  - (GET) Fetch dua counter data

- [Library Screen]
  - (GET) Load list of duas
  - (POST) Add dua to user favorites/counter

- [Goal Screen]
  - (POST) Save user goal
  - (POST) Set/update notification preferences

- [Audio Player Screen]
  - (GET) Stream audio from URL

- [Share Progress Screen]
  - (POST) Share content to social API (optional)


