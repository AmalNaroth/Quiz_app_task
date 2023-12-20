1. Framework & Architecture:

Flutter framework used for UI development.
Domain-Driven Design (DDD) architecture applied for clean and modular code organization.

2. API Integration:

Dio package utilized for seamless integration with the server to fetch quiz data.

3. Local Database:

Hive used as the local database to store quiz data efficiently.

4. State Management:

BLoC pattern employed for effective state management.
Get It utilized for dependency injection, ensuring efficient code structure and organization.

5. Application Flow:

Data is fetched from the server upon application launch.
An animation is displayed if there is no internet connection during the data-fetching process.
Exception handling includes both server and client-side errors, with dedicated animation screens to alert users.

6. Quiz Interaction:

Users are presented with a list of questions and corresponding answer options.
The next page button is dynamically displayed upon selecting an answer.
User selections are automatically updated, distinguishing between correct and incorrect answers.

7.Result Presentation:

Marks, percentage, and other relevant statistics are presented to the user upon quiz completion.
Detailed information includes the total number of questions attempted, the number of correct answers, and the overall percentage achieved.

8. Performance Considerations:

Special attention has been given to performance optimization to ensure a smooth user experience.
Asynchronous operations are efficiently handled to prevent UI freezes.
Minimized network requests for improved performance.

I have thoroughly tested the application to ensure its correctness, adherence to UI/UX principles, and efficient business logic implementation. Please find the attached application package for your review.