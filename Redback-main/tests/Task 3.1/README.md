# Test Case for Task 3.1
Introduction: This test case is developed to show whether the whole system works.

Pre Requirements: All other modules of the project work properly.

Test Steps:
- Keep connection with the database
- Start the back-end server 
- Send a PDF file to the back-end port by using Postman
- Use database API to retrieve the information stored in the database and store the output data into six text files
- Check the content of the new generated text files.

Expected result:
- The output files should be six text files named with their page numbers.
- The text contents should be the same as the PBSP pdf document except for some small errors.

Test Status: Successful
