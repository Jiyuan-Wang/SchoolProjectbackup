# Redback
├── docs/                    # Documentation files (organize requirements)

└── docs/ COMP900822022SM2NDRedBack-201022-2346-3278.pdf   # Confluence document for sprint 3

├── src/                       # src code

└── src/PBSPNew.py #Current version, set path and run the PBSPextract function, the file will extract the information and stored it in dictionary format.                                   #Note: This is for Positive Behaviour Support Plan (PBSP) Summary Document only. The code still need further enhancement. 

└── src/DataSaving.py # Current version, Store the extracted data into mysql database.
                      #Note: This is for the database of Positive Behaviour Support Plan (PBSP) Summary Document only.

└── src/Database_Create.sql # Current version, create mysql database tables.
                          #Note: This is for Positive Behaviour Support Plan (PBSP) Summary Document only.  
└── src/DB_API # Current version, contains functions for extracting data from the database.
                          #Note: This is for Positive Behaviour Support Plan (PBSP) Summary Document only.

└── src/Physical_model.mwb # Physical model generated based on the database

└── src/Final_Product # Contains the python files to run the whole system  

├── tests/                    # Contains test cases for each task

├── prototypes/                 # Thie directionary contains the target PBSP document and the project programming files.

├── ui/                        # All the images created for the prototypes (icons, fonts, backgrounds... should be here. This is different from the prototypes' folders.  These are the graphical elements that goes into the prototypes)

├── data samples/      # Documents you need to generate with all the data (inputs) necessary to simulate/demonstrate your prototype (whatever can be provided as an input in your prototype) 

└── README.md (explain github structure here and generate changelogs for each sprint)

Suppose: The project should be devloped based on one specific PBSP template
