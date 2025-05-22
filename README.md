# Fitness and Calorie Tracker

A full-stack application for tracking workouts, nutrition, and fitness goals.

## Features

- User authentication and profile management
- Workout tracking with exercise details
- Nutrition tracking with meal planning
- Progress monitoring and statistics
- Responsive and modern UI

## Tech Stack

### Frontend
- React with TypeScript
- Vite
- Tailwind CSS
- React Router
- React Query
- Shadcn UI Components

### Backend
- Node.js with Express
- MongoDB
- JWT Authentication
- Express Validator

## Prerequisites

- Node.js (v16 or higher)
- MongoDB (local or Atlas)
- npm or yarn

## Setup Instructions

### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Create a `.env` file in the backend directory with the following variables:
   ```
   PORT=5000
   MONGODB_URI=mongodb://localhost:27017/fitness-tracker
   JWT_SECRET=your-secret-key-here
   NODE_ENV=development
   ```

4. Start the backend server:
   ```bash
   npm run dev
   ```

### Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd obsidian-purple-gains-tracker-main
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

## API Endpoints

### Authentication
- POST `/api/auth/register` - Register a new user
- POST `/api/auth/login` - Login user

### Workouts
- GET `/api/workouts` - Get all workouts
- POST `/api/workouts` - Create a new workout
- PUT `/api/workouts/:id` - Update a workout
- DELETE `/api/workouts/:id` - Delete a workout

### Nutrition
- GET `/api/nutrition/:date` - Get nutrition entries for a specific date
- POST `/api/nutrition` - Create or update nutrition entry
- GET `/api/nutrition/summary/:startDate/:endDate` - Get nutrition summary for a date range

### Profile
- GET `/api/profile` - Get user profile
- PUT `/api/profile` - Update user profile
- PUT `/api/profile/settings` - Update user settings
- PUT `/api/profile/password` - Change password

## Database Schema

### User
- username (String)
- email (String)
- password (String)
- profile (Object)
  - height (Number)
  - weight (Number)
  - age (Number)
  - gender (String)
  - activityLevel (String)
  - goals (Array)
  - targetWeight (Number)
  - dailyCalorieGoal (Number)

### Workout
- userId (ObjectId)
- name (String)
- date (Date)
- exercises (Array)
  - name (String)
  - sets (Array)
    - reps (Number)
    - weight (Number)
    - duration (Number)
    - notes (String)
  - restTime (Number)
- duration (Number)
- notes (String)
- tags (Array)
- isCompleted (Boolean)

### Nutrition
- userId (ObjectId)
- date (Date)
- meals (Array)
  - name (String)
  - foods (Array)
    - name (String)
    - quantity (Number)
    - unit (String)
    - calories (Number)
    - protein (Number)
    - carbs (Number)
    - fat (Number)
    - fiber (Number)
    - sugar (Number)
    - sodium (Number)
  - totalCalories (Number)
  - totalProtein (Number)
  - totalCarbs (Number)
  - totalFat (Number)
- waterIntake (Number)
- notes (String)

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License. 