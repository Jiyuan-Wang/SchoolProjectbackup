-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assessment_approach`
--

DROP TABLE IF EXISTS `assessment_approach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_approach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `behavioural_assessment_approaches` varchar(500) DEFAULT NULL,
  `non_behavioural_assessment_approaches` varchar(2000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_approach`
--

LOCK TABLES `assessment_approach` WRITE;
/*!40000 ALTER TABLE `assessment_approach` DISABLE KEYS */;
INSERT INTO `assessment_approach` VALUES (1,'A functional behaviour assessment that included the use of the Contextual Assessment Inventory, the Functional \nAssessment Interview, scatterplots and ABC note cards, and semi-structured interviews.','Comprehensive Health Assessment Program (CHAP) by GP, Communication assessment by speech and language \npathologist, mental health assessment by neuropsychiatrist, and occupational therapy assessment by \noccupational therapist.',NULL,NULL);
/*!40000 ALTER TABLE `assessment_approach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorisation`
--

DROP TABLE IF EXISTS `authorisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorisation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` varchar(50) DEFAULT NULL,
  `period` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorisation`
--

LOCK TABLES `authorisation` WRITE;
/*!40000 ALTER TABLE `authorisation` DISABLE KEYS */;
INSERT INTO `authorisation` VALUES (1,'Authorised Program Officer, MV Services','12 months from June 1, 2022'),(2,'',''),(3,'Authorised Program Officer, MV Services','12 months from June 1, 2022'),(4,'',''),(5,'Authorised Program Officer, MV Services','12 months from June 1, 2022');
/*!40000 ALTER TABLE `authorisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bsp`
--

DROP TABLE IF EXISTS `bsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bsp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `participants_id` int NOT NULL,
  `practitioner_id` int NOT NULL,
  `Implementation_id` int DEFAULT NULL,
  `intervention_id` int DEFAULT NULL,
  `PBS_Intervention_id` int DEFAULT NULL,
  `Assessment_approach_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`,`participants_id`,`practitioner_id`),
  KEY `participants_id` (`participants_id`),
  KEY `practitioner_id` (`practitioner_id`),
  KEY `Implementation_id` (`Implementation_id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `PBS_Intervention_id` (`PBS_Intervention_id`),
  KEY `Assessment_approach_id` (`Assessment_approach_id`),
  CONSTRAINT `bsp_ibfk_1` FOREIGN KEY (`participants_id`) REFERENCES `participants` (`id`),
  CONSTRAINT `bsp_ibfk_2` FOREIGN KEY (`practitioner_id`) REFERENCES `practitioner` (`id`),
  CONSTRAINT `bsp_ibfk_3` FOREIGN KEY (`Implementation_id`) REFERENCES `implementation` (`id`),
  CONSTRAINT `bsp_ibfk_4` FOREIGN KEY (`intervention_id`) REFERENCES `restrictive_intervention` (`id`),
  CONSTRAINT `bsp_ibfk_5` FOREIGN KEY (`PBS_Intervention_id`) REFERENCES `pbs_interventions` (`id`),
  CONSTRAINT `bsp_ibfk_6` FOREIGN KEY (`Assessment_approach_id`) REFERENCES `assessment_approach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsp`
--

LOCK TABLES `bsp` WRITE;
/*!40000 ALTER TABLE `bsp` DISABLE KEYS */;
INSERT INTO `bsp` VALUES (1,1,1,1,1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `bsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chemical`
--

DROP TABLE IF EXISTS `chemical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chemical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `how_to_reduce` varchar(2000) DEFAULT NULL,
  `why` varchar(2000) DEFAULT NULL,
  `PBS_strategies` varchar(2000) DEFAULT NULL,
  `circumstances` varchar(2000) DEFAULT NULL,
  `chemical_procedure` varchar(2000) DEFAULT NULL,
  `social_validity_id` int DEFAULT NULL,
  `authorisation_id` int DEFAULT NULL,
  `intervention_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `authorisation_id` (`authorisation_id`),
  KEY `social_validity_id` (`social_validity_id`),
  CONSTRAINT `chemical_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `restrictive_intervention` (`id`),
  CONSTRAINT `chemical_ibfk_2` FOREIGN KEY (`authorisation_id`) REFERENCES `authorisation` (`id`),
  CONSTRAINT `chemical_ibfk_3` FOREIGN KEY (`social_validity_id`) REFERENCES `social_validity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chemical`
--

LOCK TABLES `chemical` WRITE;
/*!40000 ALTER TABLE `chemical` DISABLE KEYS */;
INSERT INTO `chemical` VALUES (1,'It is anticipated that once Taylor is able to independently use the replacement behaviour (ie sign ‘next’) that \nreduction in chemical restraint will be clinically indicated.','The routine use of Risperidone is being undertaken to reduce the intensity of Taylor’s incidents of behaviour that \ncauses harm to self or others, during the implementation of the behavioural strategies listed in this plan.  By \nreducing the intensity of Taylor’s behaviour it also aids in avoiding the use of highly intrusive forms of restriction \nsuch as physical restraint. In combination with the strategies outlined in this plan, the use of chemical restraint \nRisperidone is the least restrictive alternative to support Taylor.','Not required as this medication is to be used on a routine basis','Taylor is prescribed fixed dose Risperidone 6mg [3mg b.d.] by his Neuropsychiatrist Dr Kelp.  Taylor’s Risperidone \naids in reducing the intensity of serious incidents, whilst the proactive measures in this plan are being \nimplemented.','The Risperidone is pre-packed by the pharmacist in a Webster Pack and is checked and signed for by staff when \ncollected.  The administration of Risperidone is immediately recorded on Taylor’s medication chart, signed by staff \nmember administering and countersigned by next staff member on shift [confirming medication has been \nremoved from the Webster Pack].T\n  T\n  T\n  T\nAny issues arising regarding side effects or missed medication will necessitate the following immediate actions:  \n• \nContact the General Practitioner; or Poisons Information Centre 13 11 26; then  \n• \nContact the House Coordinator or On-call Coordinator; then   \n• \nComplete and fax an Error in Medication form to the Service Manager. \naylor will be safeguarded from abuse, neglect and exploitation by accurate and efficient monitoring and \nevaluation, followed by rigorous and timely information sharing and feedback.   \naylor’s medication will be monitored and evaluated as follows:  \n• \nDaily monitoring by Support Staff; monthly monitoring by Dr Smythe; quarterly evaluation by Dr Kelp; \nquarterly information provision to family [Tim and Jason], Service Manager and Dee Yarrs by the House \nCoordinator. \naylor is monitored closely for any side effects by his support staff and is provided with a nutritious and varied diet \nand drinks plenty of water.  No other medications are introduced to Taylor without prior approval from his \nNeuropsychiatrist Dr Kelp and General Practitioner Dr Smythe. \naylor has monthly general health checks with his General Practitioner Dr Smythe as additional monitoring for side \neffects.',1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `chemical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communicate`
--

DROP TABLE IF EXISTS `communicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communicate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people` varchar(2000) DEFAULT NULL,
  `strategy` varchar(2000) DEFAULT NULL,
  `implementation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `implementation_id` (`implementation_id`),
  CONSTRAINT `communicate_ibfk_1` FOREIGN KEY (`implementation_id`) REFERENCES `implementation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communicate`
--

LOCK TABLES `communicate` WRITE;
/*!40000 ALTER TABLE `communicate` DISABLE KEYS */;
INSERT INTO `communicate` VALUES (1,'House coordinator, service manager, behaviour support \npractitioner, neuropsychiatrist','Prepare weekly cumulative graphs on Taylor’s progress \nin learning the replacement behaviour within his home.  \nThe graphs will summarise data contained in the Task \nRecord Sheets. The graphs will be emailed to Taylor’s \nfamily [Tim and Jason], the Service Manager, Dee Yarrs \nand Dr Kelp at least monthly.  Recipients of this \ninformation will report back to each other via email.',1),(2,'House coordinator','The graphs will also be presented at monthly team \nmeetings to Support Staff.',1),(3,'House coordinator','Summary of Task Record Sheets forwarded to plan \nauthor',1),(4,'House coordinator','Monthly contact with family to discuss positive \nbehaviour support strategies and goal achievement',1),(5,'Support staff','Contact House/On Call Coordinator immediately \nfollowing incidents of behaviour that causes harm to \nself or others',1),(6,'Support staff','Record and report each use of seclusion to House \nCoordinator',1),(7,'Support staff','Record and report any observed side effects of \nRisperidone to House Coordinator',1),(8,'House coordinator','Report any observed side effects of Risperidone to Dr \nSmythe and Dr Kelp',1),(9,'House coordinator','Monthly information provision to family, Dr Kelp, \nService manager and Dee Yarrs on use of seclusion',1),(10,'House coordinator','Quarterly information provision to family, Service \nmanager and Dee Yarrs on chemical restraintQuarterly information provision to family, Dr Kelp, \nService manager and Dee Yarrs on mechanical restraint',1),(11,'Support staff','Attend monthly team meetings to discuss Taylor’s \nachievements facilitated by the House Coordinator',1);
/*!40000 ALTER TABLE `communicate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `de_escalation`
--

DROP TABLE IF EXISTS `de_escalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `de_escalation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method_to_promote_alternative_behavior` varchar(2000) DEFAULT NULL,
  `strtegies_for_ensuring_safety` varchar(2000) DEFAULT NULL,
  `post_incident` varchar(2000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `de_escalation`
--

LOCK TABLES `de_escalation` WRITE;
/*!40000 ALTER TABLE `de_escalation` DISABLE KEYS */;
INSERT INTO `de_escalation` VALUES (1,'When Taylor is unsure of what is happening next he may show signs that indicate he is about to engage in the \nbehaviour that causes harm to himself or others. These early behaviours are:  a. deep, low vocalisations [humming \nprogresses to grunting] and pacing [3 fast steps back and forth] b. runs towards staff, wide eyes and hands fisted \nat sides, stiff body.   If Taylor begins to engage in this behaviour immediately speak and sign to him what is \nhappening next and encourage Taylor to use his ‘next’ sign.','If Taylor continues to escalate, ensure the safety of all by telling other people in the room to leave immediately, \nkeeping Taylor in your line of sight, position your back to the door and continue to speak and sign what is \nhappening next and that staff are there to help him. If Taylor begins to attempt to hit staff with his head, \ncommence seclusion protocol.','W\nFollowing the use of behaviour that causes harm to self or others, Taylor is often disorientated and may not \nremember why he is on the floor, against a wall or secluded.  It is very important that staff let Taylor know they \nare there to help him. \n• \nAsk Taylor if he is okay using speech and sign. \n• \nOffer Taylor a drink of water. \nhen Taylor is de-escalated [relaxed posture and body language], let him know that when he is unsure of what is \nhappening next, he can use his “next” sign to let staff know he needs help and they can help him.  Staff to model \nusing the “next” sign and invite Taylor to practice using his “next” sign with them.',NULL,NULL);
/*!40000 ALTER TABLE `de_escalation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environmental`
--

DROP TABLE IF EXISTS `environmental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environmental` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PBS_strategies` varchar(2000) DEFAULT NULL,
  `environmental_description` varchar(2000) DEFAULT NULL,
  `how_to_check_safety` varchar(2000) DEFAULT NULL,
  `prevented_from` varchar(300) DEFAULT NULL,
  `circumstances` varchar(1000) DEFAULT NULL,
  `why` varchar(2000) DEFAULT NULL,
  `environmental_procedure` varchar(2000) DEFAULT NULL,
  `how_to_reduce` varchar(2000) DEFAULT NULL,
  `frequency` varchar(200) DEFAULT NULL,
  `impact_to_other_people` varchar(500) DEFAULT NULL,
  `social_validity_id` int DEFAULT NULL,
  `authorisation_id` int DEFAULT NULL,
  `intervention_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `authorisation_id` (`authorisation_id`),
  KEY `social_validity_id` (`social_validity_id`),
  CONSTRAINT `environmental_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `restrictive_intervention` (`id`),
  CONSTRAINT `environmental_ibfk_2` FOREIGN KEY (`authorisation_id`) REFERENCES `authorisation` (`id`),
  CONSTRAINT `environmental_ibfk_3` FOREIGN KEY (`social_validity_id`) REFERENCES `social_validity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environmental`
--

LOCK TABLES `environmental` WRITE;
/*!40000 ALTER TABLE `environmental` DISABLE KEYS */;
INSERT INTO `environmental` VALUES (1,'','','','','','','','','Routine use','Yes',4,4,1,NULL,NULL);
/*!40000 ALTER TABLE `environmental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_of_behavior`
--

DROP TABLE IF EXISTS `function_of_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `function_of_behavior` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FOB_Name` varchar(50) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `FOB_description` varchar(2000) DEFAULT NULL,
  `FOB_triggers` varchar(2000) DEFAULT NULL,
  `setting_events` varchar(2000) DEFAULT NULL,
  `alternative_behavior` varchar(2000) DEFAULT NULL,
  `consequences` varchar(2000) DEFAULT NULL,
  `BSP_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BSP_id` (`BSP_id`),
  CONSTRAINT `function_of_behavior_ibfk_1` FOREIGN KEY (`BSP_id`) REFERENCES `bsp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_of_behavior`
--

LOCK TABLES `function_of_behavior` WRITE;
/*!40000 ALTER TABLE `function_of_behavior` DISABLE KEYS */;
INSERT INTO `function_of_behavior` VALUES (1,'Access – \nperson/object/activity','Taylor will make a deep humming/grunting noise and pace when he is unsure of what is happening next.  Taylor \ndoes this to access staff support [the provision of information].  If staff do not respond to Taylor’s deep \nhumming/grunting and pacing within two minutes and provide information on what is happening next, Taylor’s \nbehaviour that causes harm to self or others will escalate and he will run towards and full body slam the closest \nlarge solid object and commence hitting head on that object.  If staff do not respond to Taylor hitting his head and \nfull body slam into solid objects within 30 seconds and provide information on what is happening next, Taylor will \nrun towards staff, eyes wide, hands fisted at sides, stiff body and will hit staff in the head or shoulder area with his \nown head.  This behaviour is more likely to occur if Taylor has had negative interaction with his cotenant/s, and/or \nthere are changes to his schedule earlier in the day, and/or he is tired.','Full body slam [running into walls and other solid objects, forcefully connecting with head, torso and limbs \ntogether] and hitting head on solid objects [walls] and hitting staff with head [forward head-butt to staff head or \nshoulder area]. Before these behaviours occur, deep, he will show low vocalisations [humming progresses to \ngrunting] and pacing [3 fast steps back and forth] and runs towards staff, wide eyes and hands fisted at sides, stiff \nbody.','[\'Unsure of what is happening next\', \'\', \'\']','[\'When Taylor has had a negative \ninteraction with co-tenant/s earlier \nin day\', \'When Taylor has had schedule \nchanges earlier in day\', \'When Taylor is tired\']','','[\'Access to support staff\', \'\', \'\']',1,NULL,NULL);
/*!40000 ALTER TABLE `function_of_behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enhancing_the_quality_of_life` varchar(2000) DEFAULT NULL,
  `specific_to_behaviors` varchar(2000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (1,'Goal By 15th August 2014 when Taylor is unsure of what is happening next; Taylor will use the sign for ‘next’.  \nTaylor will use this replacement behaviour instead of full body slams and hitting head on large solid objects and \nstaff. Taylor will use his new skill with 100% independence, on every occasion, when he wants to know what is \nhappening next.','None required.',NULL,NULL);
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementation`
--

DROP TABLE IF EXISTS `implementation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implementation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people` varchar(2000) DEFAULT NULL,
  `timeframe` varchar(2000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementation`
--

LOCK TABLES `implementation` WRITE;
/*!40000 ALTER TABLE `implementation` DISABLE KEYS */;
INSERT INTO `implementation` VALUES (1,'[\'Behaviour support \npractitioner\', \'Support staff\', \'House coordinator\', \'\']','This plan is scheduled for review on the following dates. Initial review one month from the date of this plan.  \nComprehensive reviews, at 3 months and 9 months from the date of this plan.',NULL,NULL);
/*!40000 ALTER TABLE `implementation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanical`
--

DROP TABLE IF EXISTS `mechanical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mechanical_description` varchar(2000) DEFAULT NULL,
  `how_to_check_safety` varchar(2000) DEFAULT NULL,
  `prodcedure` varchar(2000) DEFAULT NULL,
  `why` varchar(2000) DEFAULT NULL,
  `circumstances` varchar(1000) DEFAULT NULL,
  `how_to_reduce` varchar(2000) DEFAULT NULL,
  `frequency` varchar(2000) DEFAULT NULL,
  `PBS_strategies` varchar(2000) DEFAULT NULL,
  `social_validity_id` int DEFAULT NULL,
  `authorisation_id` int DEFAULT NULL,
  `intervention_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `authorisation_id` (`authorisation_id`),
  KEY `social_validity_id` (`social_validity_id`),
  CONSTRAINT `mechanical_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `restrictive_intervention` (`id`),
  CONSTRAINT `mechanical_ibfk_2` FOREIGN KEY (`authorisation_id`) REFERENCES `authorisation` (`id`),
  CONSTRAINT `mechanical_ibfk_3` FOREIGN KEY (`social_validity_id`) REFERENCES `social_validity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanical`
--

LOCK TABLES `mechanical` WRITE;
/*!40000 ALTER TABLE `mechanical` DISABLE KEYS */;
INSERT INTO `mechanical` VALUES (1,'Headgear','A safety assessment was undertaken by Taylor’s occupational therapist, who confirmed that the headgear was \nsafe to use for 18 hours continuous wear.','U\n  F\n  T\n  T\nHe will wear the headgear for 18 hours continuous with removal for showering and retiring to bed. \npon rising, Taylor is to be invited to assist staff to put his headgear on, staff are to ensure it is securely fitted with \nno hair caught in the back laces and both chin straps secured without pinching any skin.  Upon retiring or having a \nshower, staff are to invite Taylor to help them take his headgear off.  \nollowing hitting head behaviour, when safe to do so and Taylor is happy for you to approach, staff to inspect \nTaylor’s headgear to ensure it is securely fitted and not pulling any hair or pinching any skin.  \naylor’s protective headgear is to be cleaned with sanitising wipes and inspected nightly after Taylor goes to bed \nfor any signs of wear and tear to the padding, internal and external soft surfaces, back laces and double chin strap.  \nAny identified concerns are to be recorded on Taylor’s headgear maintenance form and the House Coordinator or \nOn-call Coordinator to be contacted immediately. \naylor will be safeguarded from abuse, neglect and exploitation by accurate and efficient monitoring and \nevaluation, followed by rigorous and timely information sharing and feedback.  Taylor’s Restrictive Practices will \nbe monitored and evaluated as follows: \n• \nReported per incident, daily monitoring by Support Staff; monthly monitoring by the House Coordinator; \nmonthly information provision to family [Tim and Jason], the Service Manager and the Behaviour Support \nSpecialist by the House Coordinator, annual reviews by his Neuropsychiatrist.','Taylors’ hitting head behaviour to solid objects and or staff is of such intensity that he has suffered diffuse \nTraumatic Brain Injury [TBI] with ongoing contusions, hematomas, lacerations and nerve damage resulting in \ncommunication and cognitive impairment.    Due to the significant frequency, intensity and duration of Taylors \nbehaviour that causes harm to self or others, and following professional advice from Dr Kelp, Neuropsychiatrist, \nTaylor wears protective headgear during waking hours.  This is an interim measure which is vital to keep Taylor \nsafe and reduce possible injury whilst he learns the replacement behaviour.','Consistent with the recommendation of Dr Kelp, Neuropsychiatrist, Taylor is to wear his protective headgear \nduring waking hours','The continued use and need for the mechanical restraint will be impacted directly by the strategies listed in this \nplan.  It is anticipated that once Taylor is able to independently use the replacement behaviour (ie sign ‘next’) \nthere will be a reduction in his head hitting behaviours and that the use of the mechanical restraint can be \nreviewed for reduction in use.','Routine use','Taylor routinely wears his headgear for 18 hours per day.  As such, there are no positive strategies which precede \neach episode of him placing it on each morning.',3,3,1,NULL,NULL);
/*!40000 ALTER TABLE `mechanical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `medication_id` int NOT NULL AUTO_INCREMENT,
  `medication_name` varchar(50) NOT NULL,
  `route` varchar(50) DEFAULT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `prescriber` varchar(50) DEFAULT NULL,
  `administration` varchar(50) DEFAULT NULL,
  `chemical_id` int DEFAULT NULL,
  PRIMARY KEY (`medication_id`),
  KEY `chemical_id` (`chemical_id`),
  CONSTRAINT `medications_ibfk_1` FOREIGN KEY (`chemical_id`) REFERENCES `chemical` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES (1,'Risperidone','Orally','3mg morning \nand evening','Routine','Neuropsychiatrist','Tablet',1);
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor_and_review`
--

DROP TABLE IF EXISTS `monitor_and_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor_and_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people` varchar(2000) DEFAULT NULL,
  `strategy` varchar(2000) DEFAULT NULL,
  `implementation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `implementation_id` (`implementation_id`),
  CONSTRAINT `monitor_and_review_ibfk_1` FOREIGN KEY (`implementation_id`) REFERENCES `implementation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor_and_review`
--

LOCK TABLES `monitor_and_review` WRITE;
/*!40000 ALTER TABLE `monitor_and_review` DISABLE KEYS */;
INSERT INTO `monitor_and_review` VALUES (1,'Behaviour support practitioner, service manager, house \ncoordinator, support staff','Attend review meetings facilitated by the plan author \nat 1, 3 and 9 months post implementation',1),(2,'Behaviour support practitioner','Modify aspects of the teaching program, based on both \nthe analysed data and observations of Taylor’s Support \nStaff.',1);
/*!40000 ALTER TABLE `monitor_and_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `participants_description` varchar(10000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,'Taylor is an energetic and outdoor loving 23 year old.  He is very proud of his back yard and once he gets to know \na person, will invite them over to see his lawn and garden.  Taylor has lived in supported accommodation since he \nwas 21 years old. Taylor likes to get to know people before they come to his home. Taylor likes spending time with \nothers that can keep up with him and like spending time outside. Taylor enjoys having a big glass of cold water \nwith ice after his outside activities.  Taylor lives with two other gentlemen who are significantly older than Taylor \nand who prefer to be inside rather than outside. Taylor does not seem to think being inside is much fun.  Taylor’s \nmother passed away when he was 21 and his father suffered a stroke shortly after the passing of his mother, at \nwhich time Taylor entered supported accommodation. Taylor has two older brothers [Tim and Jason] who take \nturns visiting Taylor once a month on a Saturday morning, sometimes taking Taylor [with staff support] to see his \ndad who is in a nursing home approximately two hours’ drive away.  It is uncertain if Taylor understands what has \nhappened to his parents, but he stopped signing for them after living in his home for a few months. Taylor looks \nforward to seeing his brothers each month and will spend extra time in the back yard to make sure it is very tidy \nfor their visit.  Taylor enjoys going out, some of his favourite places to visit is the local park which has a gym \ncircuit, as well as basketball courts, soccer fields, the beach and bushwalking tracks.    Taylor responds with \nsupport from his staff to members of the community with gestures, facial expressions and signs such as “good”, \n“ok”, “hello” and “bye”. Taylor has relaxed body language and posture when out with small groups.  Taylor is \ngenerally healthy, only experiencing minor colds once or twice a year.  Taylor is not fussy when it comes to food \nand enjoys eating the healthy foods that staff prepare for him. Taylor also drinks plenty of water which further \nsupports his health. As Taylor is constantly on the go, he has sufficient exercise daily to support his health and \nwellbeing. Taylor has damage to his frontal lobe that causes him to have short-term memory deficits.',NULL,NULL);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbs_interventions`
--

DROP TABLE IF EXISTS `pbs_interventions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pbs_interventions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goal_id` int DEFAULT NULL,
  `reinforcement_id` int DEFAULT NULL,
  `strategy_id` int DEFAULT NULL,
  `de_escalation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goal_id` (`goal_id`),
  KEY `reinforcement_id` (`reinforcement_id`),
  KEY `strategy_id` (`strategy_id`),
  KEY `de_escalation_id` (`de_escalation_id`),
  CONSTRAINT `pbs_interventions_ibfk_1` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`),
  CONSTRAINT `pbs_interventions_ibfk_2` FOREIGN KEY (`reinforcement_id`) REFERENCES `reinforcement` (`id`),
  CONSTRAINT `pbs_interventions_ibfk_3` FOREIGN KEY (`strategy_id`) REFERENCES `strategy` (`id`),
  CONSTRAINT `pbs_interventions_ibfk_4` FOREIGN KEY (`de_escalation_id`) REFERENCES `de_escalation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbs_interventions`
--

LOCK TABLES `pbs_interventions` WRITE;
/*!40000 ALTER TABLE `pbs_interventions` DISABLE KEYS */;
INSERT INTO `pbs_interventions` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `pbs_interventions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physical`
--

DROP TABLE IF EXISTS `physical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `physical_description` varchar(2000) DEFAULT NULL,
  `prodcedure` varchar(2000) DEFAULT NULL,
  `why` varchar(2000) DEFAULT NULL,
  `circumstances` varchar(2000) DEFAULT NULL,
  `how_to_reduce` varchar(2000) DEFAULT NULL,
  `PBS_strategies` varchar(2000) DEFAULT NULL,
  `social_validity_id` int DEFAULT NULL,
  `authorisation_id` int DEFAULT NULL,
  `intervention_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `authorisation_id` (`authorisation_id`),
  KEY `social_validity_id` (`social_validity_id`),
  CONSTRAINT `physical_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `restrictive_intervention` (`id`),
  CONSTRAINT `physical_ibfk_2` FOREIGN KEY (`authorisation_id`) REFERENCES `authorisation` (`id`),
  CONSTRAINT `physical_ibfk_3` FOREIGN KEY (`social_validity_id`) REFERENCES `social_validity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical`
--

LOCK TABLES `physical` WRITE;
/*!40000 ALTER TABLE `physical` DISABLE KEYS */;
INSERT INTO `physical` VALUES (1,'','','','','','',2,2,1,NULL,NULL);
/*!40000 ALTER TABLE `physical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people` varchar(2000) DEFAULT NULL,
  `strategy` varchar(2000) DEFAULT NULL,
  `implementation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `implementation_id` (`implementation_id`),
  CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`implementation_id`) REFERENCES `implementation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'Behaviour support practitioner','Deliver the skills teaching program use “next” sign',1),(2,'House coordinator','Record progress of goal achievements on weekly graphs',1),(3,'Support staff','Task Record Sheets completed daily and forwarded to \nHouse Coordinator each Monday',1),(4,'Support staff','Complete Behaviour Incident Report forms and ABC \nNote cards following incidents of behaviour that causes \nharm to self or others',1),(5,'Support staff','Record any use of behaviour that causes harm to self or \nothers on Scatterplot',1),(6,'Support staff','Daily inspection of protective headgear, recording and \nreporting any identified concerns to House Coordinator',1),(7,'All staff','All staff to read and ‘sign-off’ that they have read the \nplan.',1);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practitioner`
--

DROP TABLE IF EXISTS `practitioner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practitioner` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practitioner`
--

LOCK TABLES `practitioner` WRITE;
/*!40000 ALTER TABLE `practitioner` DISABLE KEYS */;
INSERT INTO `practitioner` VALUES (1);
/*!40000 ALTER TABLE `practitioner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reinforcement`
--

DROP TABLE IF EXISTS `reinforcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reinforcement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identification_method` varchar(4000) DEFAULT NULL,
  `reinforcer` varchar(50) DEFAULT NULL,
  `reinforcement_schedule` varchar(4000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reinforcement`
--

LOCK TABLES `reinforcement` WRITE;
/*!40000 ALTER TABLE `reinforcement` DISABLE KEYS */;
INSERT INTO `reinforcement` VALUES (1,'His parents, guardian and support staff indicated that praise works well with Taylor – he likes being told that he \nhas ‘done a good job’.','Praise','Every time Taylor uses the “next” sign, staff will immediately praise him for letting them know he needs help using \nspeech and sign, and wants to know what is happening next. Staff to then immediately provide information using \nspeech and sign - and wherever possible choices - on what is happening next to Taylor. Staff are to check if Taylor \nunderstands, using speech and sign, what is happening next.',NULL,NULL);
/*!40000 ALTER TABLE `reinforcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restrictive_intervention`
--

DROP TABLE IF EXISTS `restrictive_intervention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restrictive_intervention` (
  `id` int NOT NULL AUTO_INCREMENT,
  `whether` char(3) DEFAULT NULL,
  `intervention_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restrictive_intervention`
--

LOCK TABLES `restrictive_intervention` WRITE;
/*!40000 ALTER TABLE `restrictive_intervention` DISABLE KEYS */;
INSERT INTO `restrictive_intervention` VALUES (1,'Yes','[\'Chemical\', \'Mechanical\', \'Seclusion\']');
/*!40000 ALTER TABLE `restrictive_intervention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seclusion`
--

DROP TABLE IF EXISTS `seclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seclusion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seclusion_procedure` varchar(3000) DEFAULT NULL,
  `why` varchar(2000) DEFAULT NULL,
  `circumstances` varchar(2000) DEFAULT NULL,
  `how_to_reduce` varchar(2000) DEFAULT NULL,
  `maximum_frequency` varchar(2000) DEFAULT NULL,
  `frequency` varchar(2000) DEFAULT NULL,
  `PBS_strategies` varchar(2000) DEFAULT NULL,
  `social_validity_id` int DEFAULT NULL,
  `authorisation_id` int DEFAULT NULL,
  `intervention_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `authorisation_id` (`authorisation_id`),
  KEY `social_validity_id` (`social_validity_id`),
  CONSTRAINT `seclusion_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `restrictive_intervention` (`id`),
  CONSTRAINT `seclusion_ibfk_2` FOREIGN KEY (`authorisation_id`) REFERENCES `authorisation` (`id`),
  CONSTRAINT `seclusion_ibfk_3` FOREIGN KEY (`social_validity_id`) REFERENCES `social_validity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seclusion`
--

LOCK TABLES `seclusion` WRITE;
/*!40000 ALTER TABLE `seclusion` DISABLE KEYS */;
INSERT INTO `seclusion` VALUES (1,'1. \nRedirect Taylor to the rear of the building;T\na. \nLock the hallway door maintaining Taylor’s access to the toilet and bathroom, but limiting access \nto the front of the house  b. Taylor is to be the only person in the rear of the building;  \n2. \nIf unable to redirect Taylor to the rear of the property: a. all staff, co-tenants and others in the home are \nto proceed directly to the staff room and lock the door;  \n3. \nStaff are to ensure they remain in the closest position possible to the locked door, either the hall door or \nthe staffroom door, and listening for cessation of banging sounds.  \n4. \nAfter nil banging sounds can be heard by staff for a period of 60 seconds:  \na. \nStaff to speak to Taylor through the locked door, asking if he is OK;  \nb.  When Taylor responds with his “yes” sound, staff are to ask Taylor “can I come in”;  \nc.  When Taylor responds with his “yes” sound staff to unlock and slowly open the door, identifying \nwhere Taylor is in the room;  \nd. \nStaff are to stand close to the door way with a relaxed posture and body language and provide \nverbal support to Taylor, asking again if he is OK and if he would like a drink of water;  \ne.  When Taylor responds with his “yes” sound, a nod or sign for “good” staff to let Taylor know they \nwill get him a glass of water and do so;  \nf.  When staff return to Taylor, they are to let Taylor know that everything is OK, that they are there \nto help him;  \ng.  When Taylor is exhibiting nil precursor or behaviour that causes harm to self or others, has a \nrelaxed posture and body language offer to help Taylor. Check his headgear to make sure it is \nsecurely fitted and not pinching any skin or pulling any hair.   \nReporting:   \n• \nEach use of seclusion is reported as soon as practical [verbally within 3 hours, formally within 24 hours] to \nthe House Coordinator or On-call Coordinator.  \n• \nRecord all use of seclusion on Taylor’s Restrictive Practice Reporting Form; and  \n• \nComplete a Behaviour Incident Report Form. \naylor will be safeguarded from abuse, neglect and exploitation by accurate and efficient monitoring and \nevaluation, followed by rigorous and timely information sharing and feedback.  The use of seclusion will be \nmonitored and evaluated as follows:  \n• \n• Reported per use by Support Staff; weekly monitoring and monthly evaluation by the House \nCoordinator; monthly information provision to family [Tim and Jason], his Neuropsychiatrist, the Service \nManager and the Behaviour Support Specialist by the House Coordinator.','The episodic use of seclusion will be used to reduce harm to staff from Taylor.  The ongoing use of seclusion will \nnot improve Taylor’s quality of life or assist in the reduction of the overall impact of his behaviour that causes \nharm to self or others.  However, its episodic use is necessary to prevent harm to staff while they implement the \nstrategies in this plan and Taylor is learning the skill of signing “next” to ask staff what is happening next.  The use \nof seclusion is the least restrictive alternative for Taylor at present whilst he learns his replacement behaviour.','Seclusion is only to be used when the safety of staff or others is at risk due to Taylor attempting to hit them with \nhis head.  \n1. \nTaylor is only to be secluded within his own residential property, by removing all other persons from his \nspace and restricting his free exit from the rear section of the building or \n2. \nPreventing access to staff, co-tenants and others locked in the staff room. A demonstration of why use of \nseclusion is the least restrictive way of ensuring the safety','It is anticipated that once Taylor is able to independently use the replacement behaviour (ie sign ‘next’) that \nreduction in seclusion will be clinically indicated.','Taylor usually settles within 10 minutes of any incident of behaviour that causes harm to self or others.  Seclusion \nmay be used for a maximum of 15 minutes at the discretion of support staff.   Seclusion will not occur more than \ntwice per day, or 60 times per month.','Routine use','I\nThe continued use and need for the use of seclusion will be impacted directly by the application of strategies listed \nin this plan.  It is anticipated that once Taylor is able to independently use the replacement behaviour (ie sign \n‘next’) that reduction in seclusion will be clinically indicated.   \nIn the interim;  \n1.  When Taylor is unsure of what is happening next he may show signs that indicate that he is about to \nengage in the behaviours that cause harm to himself or others.  These early behaviours are;   \na. \nDeep, low vocalisations [humming progresses to grunting] and pacing [3 fast steps back and forth];  \nb. \nRuns towards staff, wide eyes and hands fisted at sides, stiff body;   \nf Taylor begins to engage in this behaviour immediately use speech and sign to him what is happening next and \nencourage Taylor to use his “next” sign;   \n \n2. \nIf Taylor’s behaviour escalates and he begins to use the behaviours that cause harm to self or others (Full \nbody slam and hitting head on staff)  \no \nEnsure the safety of Taylor by using speech and signing what is happening next and that staff are \nthere to help him, whilst moving any items on the floor out of Taylor’s direct path;  \no \nIf Taylor continues to escalate, ensure the safety of all by telling other people in the room to leave \nimmediately, keeping Taylor in your line of sight, position your back to the door and continue to \nuse speech and sign what is happening next and that staff are there to help him;',5,5,1,NULL,NULL);
/*!40000 ALTER TABLE `seclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_validity`
--

DROP TABLE IF EXISTS `social_validity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_validity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `how` varchar(500) DEFAULT NULL,
  `who` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_validity`
--

LOCK TABLES `social_validity` WRITE;
/*!40000 ALTER TABLE `social_validity` DISABLE KEYS */;
INSERT INTO `social_validity` VALUES (1,'Going through the plan with relevant stakeholders, \nallowing them to ask questions and taking into account \nall feedback provided in the final version of this plan.','Parents, guardians and support staff'),(2,'',''),(3,'Going through the plan with relevant stakeholders, \nallowing them to ask questions and taking into account \nall feedback provided in the final version of this plan.','Parents, guardians and support staff'),(4,'',''),(5,'Going through the plan with relevant stakeholders, \nallowing them to ask questions and taking into account \nall feedback provided in the final version of this plan.','Parents, guardians and support staff');
/*!40000 ALTER TABLE `social_validity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_validity_implementation`
--

DROP TABLE IF EXISTS `social_validity_implementation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_validity_implementation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `how` varchar(1000) DEFAULT NULL,
  `who` varchar(1000) DEFAULT NULL,
  `implementation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `implementation_id` (`implementation_id`),
  CONSTRAINT `social_validity_implementation_ibfk_1` FOREIGN KEY (`implementation_id`) REFERENCES `implementation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_validity_implementation`
--

LOCK TABLES `social_validity_implementation` WRITE;
/*!40000 ALTER TABLE `social_validity_implementation` DISABLE KEYS */;
INSERT INTO `social_validity_implementation` VALUES (1,'Going through the plan with relevant stakeholders, allowing them to ask questions and taking into account all \nfeedback provided in the final version of this plan.','Parents, guardians and support staff',1);
/*!40000 ALTER TABLE `social_validity_implementation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stakeholders`
--

DROP TABLE IF EXISTS `stakeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stakeholders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BSP_id` int DEFAULT NULL,
  `contact_method` varchar(50) DEFAULT NULL,
  `stakeholder_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BSP_id` (`BSP_id`),
  CONSTRAINT `stakeholders_ibfk_1` FOREIGN KEY (`BSP_id`) REFERENCES `bsp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stakeholders`
--

LOCK TABLES `stakeholders` WRITE;
/*!40000 ALTER TABLE `stakeholders` DISABLE KEYS */;
INSERT INTO `stakeholders` VALUES (1,1,'Direct observation','Adult with disability'),(2,1,'Interview – face to face','Family of adult'),(3,1,'Interview – face to face','Guardian'),(4,1,'Interview – telephone','Neuropsychiatrist'),(5,1,'Interview – telephone','Speech and language pathologist'),(6,1,'Interview – telephone','Graduate occupational therapist'),(7,1,'Interview – telephone','General practitioner'),(8,1,'Interview – telephone','Service manager'),(9,1,'Interview – telephone','House coordinator'),(10,1,'Interview – telephone','Direct support staff');
/*!40000 ALTER TABLE `stakeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strategy`
--

DROP TABLE IF EXISTS `strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strategy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teaching` varchar(4000) DEFAULT NULL,
  `other_strategy` varchar(4000) DEFAULT NULL,
  `environmental` varchar(4000) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strategy`
--

LOCK TABLES `strategy` WRITE;
/*!40000 ALTER TABLE `strategy` DISABLE KEYS */;
INSERT INTO `strategy` VALUES (1,'Staff are to teach Taylor to use the sign for “next” when he is unsure of what is happening next. It is important that \nstaff speak while they sign with Taylor, following his communication profile and “All About Me” book. Remember \nto keep communication with Taylor short and clear, using speech whilst signing, maximum five word sentences.T\nTaylor’s short-term memory is supported well by regular speech and sign.  Taylor has used sign language in the \npast, staff are to recommence using signs uniformly across all areas of Taylors life, speaking whilst signing. \naylor’s support staff will provide teaching sessions where Taylor is given the opportunity to learn and practice his \nnew skill [using “next” sign] \n• \nAfter breakfast each day, staff are to discuss [speech and sign] the new skill with Taylor, reminding him \nthey will practice during the day \n• \nStaff will also run through with Taylor what will be happening just prior to each teaching session, and \ncheck that he is okay to begin each training session [speech and sign] \n• \nTeaching sessions are to take place after preferred activity, when Taylor is in a positive mood [smiling, \nrelaxed posture, nil escalation for at least one hour before] \n• \nTeaching sessions are to take place at least three times a day for three minutes \n• \nThese sessions will begin on 15th May 2014 in Taylor’s home where he will be prompted [speech and sign] \nto use his “next” sign at the end of each activity \n• \nTaylor’s progress will be recorded on the Task Record Sheet.','T\n  T\n  M\nOther supports to improve Taylor’s quality of life include:  \n1. \nScheduling visits to Taylor’s brother’s houses and liaising with his brothers to organise times when they \nwill come and visit him or take him out. \n2. \nA personal shopping program which is teaching Taylor to purchase small items from the local store, \nindependently. \n3. \nStaff supporting Taylor to be involved with the local soccer club. \n4. \nVisiting the local park which has a gym circuit, as well as basketball courts, soccer fields, the beach and \nbushwalking tracks.  \n5. \nEnsuring that Taylor has access to several of the following activities daily: Playing ball games, catch and \nthrow with a large ball, running on sand or grass with bare feet, push-ups and sit-ups, climbing \nropes/playground equipment, caring for the lawn and garden, taking out the rubbish and car washing. \nhe community access arrangements in place for the adult \nVisiting the local park which has a gym circuit, as well as basketball courts, soccer fields, the \nbeach and bushwalking tracks. Taylor is to attend at least one of these outings of his choice \nevery second day, for a minimum of two hours. \naylor is supported by staff to attend to household tasks in the community such as going \nshopping on a weekly basis. \neeting new staff in a park or sports field. This occurs once per month on average, depending on \nthe staff turnover at Taylor’s home.','I\nTaylor is more likely to respond using behaviour that causes harm to self or others when he is unsure of what is \nhappening next, following negative interactions with co-tenant/s and or schedule changes earlier in the day and or \nis tired. Strategies that proactively support Taylor in these situations may reduce the likelihood of his use of \nbehaviour that causes harm to self or others: \n• \nFollowing negative interactions with co-tenants, staff are to ensure Taylor receives extra information \n[speech and sign] and additional reminders about activities for the day [once de-escalated and open to \ncommunication]. \n• \nStaff are to be well versed in Taylorʼs daily schedule and ensure they provide stability in line with this \nschedule. \no \nStaff are to confirm well in advance that Taylor is able to engage in his daily activities as listed on \nhis daily schedule, if staff identify any potential changes they are to have alternatives available for \nTaylor to choose from and communicate such to any staff coming on shift. \n• \nTaylor would benefit from further investigation and possible clinical review into causes for any sleep \ndisturbances when presenting as tired for more than two days in a row. \n• \nInclude all staff considerations and preparation of other options as topics for discussion, information \nsharing and updating at each staff meeting. To be signed off by the House Coordinator. \nt has been identified that Taylor will engage in behaviour that causes harm to self or others if he is unsure what is \nhappening next. Strategies that proactively support Taylor in these situations will reduce his need to use behaviour \nthat causes harm to self or others. \n• \nTaylor benefits from clear, concise and frequent communication [speech and sign] on what is happening \nnext: \no \nStaff are to ensure that prior [5 minutes] to completing a current activity with Taylor, they let \nTaylor know [speech and sign] what is happening next in his day. \no \nStaff are to ensure that Taylor has opportunity to have some level of choice in relation to his next \nactivity. \no \nStaff are to continue to provide information to Taylor on what is happening next [speech and sign] \nwhilst he transitions from one activity to another. \n• \nStaff are to use speech and sign with Taylor about his daily schedule throughout the day: \no \nUpon waking, immediately after breakfast and morning tea, half hour before and after lunch and \nafternoon tea, then hourly until dinner, half hour after dinner then hourly until Taylor chooses to \nprepare for bed.',NULL,NULL);
/*!40000 ALTER TABLE `strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trained`
--

DROP TABLE IF EXISTS `trained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trained` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people` varchar(2000) DEFAULT NULL,
  `strategy` varchar(2000) DEFAULT NULL,
  `implementation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `implementation_id` (`implementation_id`),
  CONSTRAINT `trained_ibfk_1` FOREIGN KEY (`implementation_id`) REFERENCES `implementation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trained`
--

LOCK TABLES `trained` WRITE;
/*!40000 ALTER TABLE `trained` DISABLE KEYS */;
INSERT INTO `trained` VALUES (1,'Behaviour support practitioner','Face to face training to inform how staff can be best \nsupported to implement skills teaching [replacement \nbehaviour]',1),(2,'Behaviour support practitioner','Face to face training to provide opportunities for staff \nto practice delivering the skills teaching program',1),(3,'Behaviour support practitioner','Face to face training to provide feedback on \nperformance',1),(4,'Behaviour support practitioner','Face to face training for staff to provide feedback to \nDee Yarrs regarding any likely issues in teaching Taylor \nthis skill',1);
/*!40000 ALTER TABLE `trained` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 20:17:24
