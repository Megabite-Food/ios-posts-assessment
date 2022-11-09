# ios-posts-assessment
This is a technical assessment for iOS senior developer for Megabite Food, this project is a demo implementation requested by one of the interviewers.    

**The deadline for do it are 3 hours after attendant starting time confirmation.**

App architecture is based on DDD and one-way data flow (redux like).    
Code follows SOLID principles and should be easily testable.

## Requirements

 -  GitHub account
 -  Three hour available for developing
 -  Fork this project
 -  Comment your code and commits
 -  Finally. send a Pull Request to this project y notify us through email to lespinoza@megabitefood.com with subject: [nombre]_[apellido]-ios_posts_assessment.

Use following URLs with JSON responses as your data sources.  
 
 -   GET http://jsonplaceholder.typicode.com/posts
 -   GET http://jsonplaceholder.typicode.com/users
 -   GET http://jsonplaceholder.typicode.com/comments
    
Create simple app with following screens:

 -   Screen 1: List of post titles; selecting a title takes you to the post details
 -   Screen 2: Post details: title, body, authors username, comments count
 
## TODO

1. Create separate target for View/Controllers.
2. Use nib and custom init in order to inject sources/interactors to ViewControllers.
3. Pull-to-refresh.
4. Fix broken views constraints.
5. Create factory for ViewControllers.
6. Create flow-handling interactors in the Application target.
7. Change persistency to something more suitable than NSUserDefaults.
8. ‼️ TESTS
9. Commit your changes and Pull Request this repo.

¡GOOD LUCK!
 
