# SQL Exercise: Working with PostgreSQL

## Introduction

This exercise is designed to introduce you to basic and intermediate SQL operations within a PostgreSQL environment. You will practice creating and manipulating a database and its tables through a series of tasks outlined in the provided SQL file.

## Prerequisites

- PostgreSQL installed on your local machine or access to a PostgreSQL server
- Basic knowledge of SQL commands
- Familiarity with GitHub, including forking, cloning, and creating pull requests

## Setup Instructions

1. **Fork the Repository**: Begin by forking this repository to create a copy under your own GitHub account.

2. **Clone Your Forked Repository**: Clone the forked repository to your local machine. This provides you with a local workspace to complete the exercise.

    ```
    git clone <URL_OF_YOUR_FORKED_REPOSITORY>
    ```

3. **Create the `students` Database**: Before starting the exercise, you need to create the initial database. A `setup.sql` file is provided for this purpose. To create the database, run the following command in your terminal:

    ```
    psql -f setup.sql
    ```

    This command assumes you have PostgreSQL installed and configured on your local machine.

4. **Connect to the `students` Database**: After creating the database, connect to it using the `psql` command line interface:

    ```
    psql -d students
    ```

    You're now ready to begin the exercise.

### Completing the Exercise

The main exercise file is a SQL file filled with commented instructions and hints. Follow these steps to complete the exercise:

1. **Read Each Task**: Open the exercise SQL file. Each task is described in a comment.

2. **Execute Commands**: For each task, write the SQL command that accomplishes the task described in the comment directly in the `psql` terminal. Use the hints provided if you need guidance.

3. **Verify Your Work**: After executing a command, verify its effect by running the suggested verification command (also in the `psql` terminal). This step is crucial to ensure that your command has achieved the desired result.

4. **Copy Verified Commands**: Once you have verified that a command works as intended, copy the command from the `psql` terminal into the exercise SQL file beneath the corresponding comment. This file will be your submission.

5. **Repeat**: Continue this process for each task in the exercise file.

## Submission Instructions

Once you've completed the exercise:

1. Commit your changes to the `.sql` file containing your SQL queries. 

    ```
    git add .
    git commit -m "Completed SQL exercises"
    ```

2. Push your commits to your forked repository on GitHub.

    ```
    git push origin main
    ```

3. Create a pull request to the original repository you forked from. This pull request will serve as your submission.

    - Navigate to the original repository on GitHub.
    - Click on the "Pull requests" tab and then the "New pull request" button.
    - Choose your forked repository as the "compare" branch and the original repository as the "base" branch.
    - Follow the instructions to create the pull request.

## Assistance

If you encounter any difficulties or have questions about the exercise, please refer to the PostgreSQL documentation or reach out for assistance through the repository's Issues section.

Good luck, and enjoy the exercise!
