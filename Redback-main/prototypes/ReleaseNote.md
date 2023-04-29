# Release Note

The Release Note for the NDIS project.

## Access to the developed resources

The links below show the essential developed resources for running the whole system.

- The files for running the whole project: [Final_Product](https://github.com/COMP90082-2022-SM2/Redback/tree/main/src/Final_Product). 
- Data sample needed to run the whole project: [Data samples](https://github.com/COMP90082-2022-SM2/Redback/tree/main/data%20samples)

- Some test cases of each module and the whole project: [Test Cases](https://github.com/COMP90082-2022-SM2/Redback/tree/main/tests)

## Details for running the project

The steps below show how to set up and run the whole system

- Install relevant python libraries (pandas, camelot, pdfplumber, pymysql, flask).
- Run 'Database_Create.sql' to generate the database.
- Run 'main.py' to start the back-end server
- Send a PDF file (PBSP Summary Document (Draft V3 MV 170822) - QLD Model Plan - No Comments.pdf) to the back-end port. 
- Wait for the completion of the data extraction process and data saving process.
- Import the 'DB_API' library to extract the data from the database.
- An test example for running the whole project. [Test_Case_Of_the_Whole_Project](https://github.com/COMP90082-2022-SM2/Redback/tree/main/tests/Task%203.1)