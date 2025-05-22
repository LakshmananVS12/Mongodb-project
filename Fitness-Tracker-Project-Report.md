# Fitness Tracker Project Report

## 1. Project Overview
The Fitness Tracker is a comprehensive web application designed to help users monitor and manage their fitness journey. It provides tools for tracking workouts, nutrition, and overall health metrics.

## 2. Technical Stack

### Frontend
- **Framework**: React with TypeScript
- **UI Libraries**: 
  - Material-UI
  - shadcn/ui
  - Tailwind CSS
- **State Management**: React Query
- **Routing**: React Router
- **Development Tools**: Vite

### Backend
- **Runtime**: Node.js
- **Framework**: Express.js
- **Database**: MongoDB
- **ORM**: Mongoose
- **Authentication**: JWT (JSON Web Tokens)

## 3. Key Features

### 3.1 User Authentication
- Secure user registration and login
- JWT-based authentication
- Protected routes
- Session management

### 3.2 Workout Tracking
- Exercise logging
- Workout history
- Progress tracking
- Calorie burn calculations
- Exercise library

### 3.3 Nutrition Management
- Food diary
- Calorie tracking
- Macronutrient monitoring (protein, carbs, fat)
- Meal planning
- Nutrition history

### 3.4 Health Metrics
- BMI calculation
- BMR calculation
- Daily calorie goals
- Progress visualization
- Health statistics

### 3.5 Profile Management
- User profile settings
- Health metrics tracking
- Goal setting
- Activity level configuration

## 4. Database Schema

### Users Collection
```javascript
{
  username: String,
  email: String,
  password: String,
  profile: {
    height: Number,
    weight: Number,
    age: Number,
    gender: String,
    activityLevel: String
  },
  settings: Object,
  createdAt: Date
}
```

### Workouts Collection
```javascript
{
  userId: ObjectId,
  date: Date,
  exercises: [{
    name: String,
    sets: Number,
    reps: Number,
    weight: Number,
    duration: Number
  }],
  totalCalories: Number
}
```

### Nutrition Collection
```javascript
{
  userId: ObjectId,
  date: Date,
  meals: [{
    name: String,
    calories: Number,
    protein: Number,
    carbs: Number,
    fat: Number
  }],
  totalCalories: Number
}
```

## 5. API Endpoints

### Authentication
- POST /api/auth/register
- POST /api/auth/login
- GET /api/auth/me

### Workouts
- GET /api/workouts
- POST /api/workouts
- PUT /api/workouts/:id
- DELETE /api/workouts/:id

### Nutrition
- GET /api/nutrition
- POST /api/nutrition
- PUT /api/nutrition/:id
- DELETE /api/nutrition/:id

### Profile
- GET /api/profile
- PUT /api/profile
- GET /api/profile/stats

## 6. Security Features
- Password hashing with bcrypt
- JWT token authentication
- Protected API routes
- Input validation
- CORS configuration
- Environment variable management

## 7. User Interface

### 7.1 Pages
1. **Login/Register**
   - User authentication
   - Form validation
   - Error handling

2. **Dashboard**
   - Overview of daily activities
   - Quick stats
   - Recent workouts and meals

3. **Workouts**
   - Exercise logging
   - Workout history
   - Progress tracking

4. **Nutrition**
   - Food diary
   - Meal tracking
   - Nutrition goals

5. **Profile**
   - User settings
   - Health metrics
   - Goal configuration

6. **Statistics**
   - Progress charts
   - Health metrics
   - Activity analysis

## 8. Development Setup

### Requirements
- Node.js (v14 or higher)
- MongoDB
- npm or yarn

### Installation
1. Clone the repository
2. Install dependencies:
   ```bash
   # Backend
   cd backend
   npm install

   # Frontend
   cd ../obsidian-purple-gains-tracker-main
   npm install
   ```

### Running the Application
1. Start MongoDB
2. Start the backend server:
   ```bash
   cd backend
   npm run dev
   ```
3. Start the frontend server:
   ```bash
   cd obsidian-purple-gains-tracker-main
   npm run dev
   ```

## 9. Future Enhancements
1. Mobile application development
2. Social features (friends, challenges)
3. Integration with fitness devices
4. Advanced analytics and reporting
5. Meal planning and recipes
6. Workout video tutorials
7. Progress photos tracking
8. Community features

## 10. Project Challenges and Solutions

### Challenges
1. Real-time data synchronization
2. Complex state management
3. Secure authentication
4. Performance optimization
5. Data validation

### Solutions
1. Implemented React Query for data management
2. Used JWT for secure authentication
3. Optimized database queries
4. Implemented proper error handling
5. Added input validation

## 11. Conclusion
The Fitness Tracker application provides a comprehensive solution for users to monitor and manage their fitness journey. With its user-friendly interface, robust backend, and secure authentication system, it offers a complete platform for tracking workouts, nutrition, and health metrics.

## 12. Acknowledgements
- React and Node.js communities
- MongoDB for database support
- Open-source libraries and tools
- Project contributors and maintainers 