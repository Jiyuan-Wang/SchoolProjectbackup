CREATE SCHEMA `new_schema` ;
USE new_schema;

CREATE TABLE Participants(
id int NOT NULL AUTO_INCREMENT,
participants_description VARCHAR(10000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE Practitioner(
id int NOT NULL AUTO_INCREMENT,
PRIMARY KEY(id)
);

CREATE TABLE Assessment_Approach(
id int NOT NULL AUTO_INCREMENT,
behavioural_assessment_approaches VARCHAR(500),
non_behavioural_assessment_approaches VARCHAR(2000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE Goals(
id int NOT NULL AUTO_INCREMENT,
enhancing_the_quality_of_life VARCHAR(2000),
specific_to_behaviors VARCHAR(2000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE Reinforcement(
id int NOT NULL AUTO_INCREMENT,
identification_method VARCHAR(4000),
reinforcer VARCHAR(50),
reinforcement_schedule VARCHAR(4000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE Strategy(
id int NOT NULL AUTO_INCREMENT,
teaching VARCHAR(4000),
other_strategy VARCHAR(4000),
environmental VARCHAR(4000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE De_escalation(
id int NOT NULL AUTO_INCREMENT,
method_to_promote_alternative_behavior VARCHAR(2000),
strtegies_for_ensuring_safety VARCHAR(2000),
post_incident VARCHAR(2000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE PBS_Interventions(
id int NOT NULL AUTO_INCREMENT,
goal_id int,
reinforcement_id int,
strategy_id int,
de_escalation_id int,
PRIMARY KEY(id),
FOREIGN KEY(goal_id) REFERENCES Goals(id),
FOREIGN KEY(reinforcement_id) REFERENCES Reinforcement(id),
FOREIGN KEY(strategy_id) REFERENCES Strategy(id),
FOREIGN KEY(de_escalation_id) REFERENCES De_escalation(id)
);

CREATE TABLE Restrictive_Intervention(
id int NOT NULL AUTO_INCREMENT,
whether CHAR(3),
intervention_type VARCHAR(100),
PRIMARY KEY(id)
);

CREATE TABLE Implementation(
id int NOT NULL AUTO_INCREMENT,
people VARCHAR(2000),
timeframe VARCHAR(2000),
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE BSP(
id int NOT NULL AUTO_INCREMENT,
participants_id int,
practitioner_id int,
Implementation_id int,
intervention_id int, 
PBS_Intervention_id int,
Assessment_approach_id int,
score INT,
feedback VARCHAR(2000),
PRIMARY KEY(id,participants_id, practitioner_id),
FOREIGN KEY(participants_id) REFERENCES Participants(id),
FOREIGN KEY(practitioner_id) REFERENCES Practitioner(id),
FOREIGN KEY(Implementation_id) REFERENCES Implementation(id),
FOREIGN KEY(intervention_id) REFERENCES Restrictive_Intervention(id),
FOREIGN KEY(PBS_Intervention_id) REFERENCES PBS_interventions(id),
FOREIGN KEY(Assessment_approach_id) REFERENCES Assessment_approach(id)
);

CREATE TABLE Function_of_Behavior(
id int NOT NULL AUTO_INCREMENT,
FOB_Name VARCHAR(50),
summary VARCHAR(2000),
FOB_description VARCHAR(2000),
FOB_triggers VARCHAR(2000),
setting_events VARCHAR(2000),
alternative_behavior VARCHAR(2000),
consequences VARCHAR(2000),
BSP_id int,
score INT,
feedback VARCHAR(500),
FOREIGN KEY(BSP_id) REFERENCES BSP(id),
PRIMARY KEY(id)
);

CREATE TABLE Stakeholders(
id int NOT NULL AUTO_INCREMENT,
BSP_id int, 
contact_method VARCHAR(50),
stakeholder_name VARCHAR(50),
PRIMARY KEY(id),
FOREIGN KEY(BSP_id) REFERENCES BSP(id)
);

CREATE TABLE Social_Validity(
id int NOT NULL AUTO_INCREMENT,
how VARCHAR(500),
who VARCHAR(500),
PRIMARY KEY(id)
);

CREATE TABLE Authorisation(
id INT NOT NULL AUTO_INCREMENT,
body VARCHAR(50),
period VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE Chemical(
id int NOT NULL AUTO_INCREMENT,
how_to_reduce VARCHAR(2000),
why VARCHAR(2000),
PBS_strategies VARCHAR(2000),
circumstances VARCHAR(2000),
chemical_procedure VARCHAR(2000),
social_validity_id int,
authorisation_id int,
intervention_id int,
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id),
FOREIGN KEY(intervention_id) REFERENCES Restrictive_Intervention(id),
FOREIGN KEY(authorisation_id) REFERENCES Authorisation(id),
FOREIGN KEY(social_validity_id) REFERENCES Social_Validity(id)
);

CREATE TABLE Physical(
id int NOT NULL AUTO_INCREMENT,
physical_description VARCHAR(2000),
prodcedure VARCHAR(2000),
why VARCHAR(2000),
circumstances VARCHAR(2000),
how_to_reduce VARCHAR(2000),
PBS_strategies VARCHAR(2000),
social_validity_id int,
authorisation_id int,
intervention_id int,
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id),
FOREIGN KEY(intervention_id) REFERENCES Restrictive_Intervention(id),
FOREIGN KEY(authorisation_id) REFERENCES Authorisation(id),
FOREIGN KEY(social_validity_id) REFERENCES Social_Validity(id)
);

CREATE TABLE Mechanical(
id int NOT NULL AUTO_INCREMENT,
mechanical_description VARCHAR(2000),
how_to_check_safety VARCHAR(2000),
prodcedure VARCHAR(2000),
why VARCHAR(2000),
circumstances VARCHAR(1000),
how_to_reduce VARCHAR(2000),
frequency VARCHAR(2000),
PBS_strategies VARCHAR(2000),
social_validity_id int,
authorisation_id int,
intervention_id int,
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id),
FOREIGN KEY(intervention_id) REFERENCES Restrictive_Intervention(id),
FOREIGN KEY(authorisation_id) REFERENCES Authorisation(id),
FOREIGN KEY(social_validity_id) REFERENCES Social_Validity(id)
);

CREATE TABLE Environmental(
id int NOT NULL AUTO_INCREMENT,
PBS_strategies VARCHAR(2000),
environmental_description VARCHAR(2000),
how_to_check_safety VARCHAR(2000),
prevented_from VARCHAR(300),
circumstances VARCHAR(1000),
why VARCHAR(2000),
environmental_procedure VARCHAR(2000),
how_to_reduce VARCHAR(2000),
frequency VARCHAR(200),
impact_to_other_people VARCHAR(500),
social_validity_id int,
authorisation_id int,
intervention_id int,
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id),
FOREIGN KEY(intervention_id) REFERENCES Restrictive_Intervention(id),
FOREIGN KEY(authorisation_id) REFERENCES Authorisation(id),
FOREIGN KEY(social_validity_id) REFERENCES Social_Validity(id)
);

CREATE TABLE Seclusion(
id int NOT NULL AUTO_INCREMENT,
seclusion_procedure VARCHAR(3000),
why VARCHAR(2000),
circumstances VARCHAR(2000),
how_to_reduce VARCHAR(2000),
maximum_frequency VARCHAR(2000),
frequency VARCHAR(2000),
PBS_strategies VARCHAR(2000),
social_validity_id int,
authorisation_id int,
intervention_id int,
score INT,
feedback VARCHAR(500),
PRIMARY KEY(id),
FOREIGN KEY(intervention_id) REFERENCES Restrictive_Intervention(id),
FOREIGN KEY(authorisation_id) REFERENCES Authorisation(id),
FOREIGN KEY(social_validity_id) REFERENCES Social_Validity(id)
);

CREATE TABLE Medications(
medication_id int NOT NULL AUTO_INCREMENT, 
medication_name VARCHAR(50) NOT NULL,
route VARCHAR(50),
dosage VARCHAR(50),
frequency VARCHAR(50),
prescriber VARCHAR(50),
administration VARCHAR(50),
chemical_id int,
PRIMARY KEY(medication_id),
FOREIGN KEY(chemical_id) REFERENCES Chemical(id)
);

CREATE TABLE Social_Validity_Implementation(
id int NOT NULL AUTO_INCREMENT,
how VARCHAR(1000),
who VARCHAR(1000),
implementation_id int,
PRIMARY KEY(id),
FOREIGN KEY(implementation_id) REFERENCES Implementation(id)
);

CREATE TABLE Trained(
id int NOT NULL AUTO_INCREMENT,
people VARCHAR(2000),
strategy VARCHAR(2000),
implementation_id int,
PRIMARY KEY(id),
FOREIGN KEY(implementation_id) REFERENCES Implementation(id)
);

CREATE TABLE Monitor_and_Review(
id int NOT NULL AUTO_INCREMENT,
people VARCHAR(2000),
strategy VARCHAR(2000),
implementation_id int,
PRIMARY KEY(id),
FOREIGN KEY(implementation_id) REFERENCES Implementation(id)
);

CREATE TABLE Communicate(
id int NOT NULL AUTO_INCREMENT,
people VARCHAR(2000),
strategy VARCHAR(2000),
implementation_id int,
PRIMARY KEY(id),
FOREIGN KEY(implementation_id) REFERENCES Implementation(id)
);

CREATE TABLE Plan(
id int NOT NULL AUTO_INCREMENT,
people VARCHAR(2000),
strategy VARCHAR(2000),
implementation_id int,
PRIMARY KEY(id),
FOREIGN KEY(implementation_id) REFERENCES  Implementation(id)
);
