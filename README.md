# Apollo 14

This Rails application is intended to be used as an opportunity for students to measure their own learning from week 2 of module 2 of the back-end program of the Turing School of Software & Design.

Fork this repository and clone your newly created repository. 

## Be sure to read all user stories BEFORE beginning your work

## Setup

- Fork this repository
- Clone down **your** forked repository
- Perform the usual setup steps after cloning a Rails application:
     - `bundle install`, 
     - `rake db:{drop,create,migrate,seed}`
     
## Requirements

- TDD all new work; you may postpone model tests for attribute validations ONLY; any model METHODS you write must be fully tested.

## Not Required

- No form input is required or expected
- No visual styling is required or expected

## Before Starting User Stories

- This challenge uses a many-to-many table (your migrations are already built!), be sure to check your setup carefully.
- You will have 4 failing model tests. (Let your instructor know if you are not seeing 4 failing tests)
- Get these 4 tests to pass **before** moving on to the user stories.

## User Stories

```
User Story 1 of 4

As a visitor,
When I visit '/astronauts'
I see a list of astronauts with the following info:
- Name
- Age
- Job

(e.g. "Name: Neil Armstrong, Age: 37, Job: Commander")
```

```
User Story 2 of 4

As a visitor,
When I visit '/astronauts'
I see the average age of all astronauts.

(e.g. "Average Age: 34")
```

```
User Story 3 of 4

As a visitor,
When I visit '/astronauts'
I see a list of the space missions' in alphabetical order for each astronaut.

(e.g "Apollo 13"
     "Capricorn 4"
     "Gemini 7")
```

```
User Story 4 of 4

As a visitor,
When I visit '/astronauts'
I see the total time in space for each astronaut.
(e.g. "Name: Neil Armstrong, Age: 37, Job: Commander, Total Time in Space: 760 days")
```
