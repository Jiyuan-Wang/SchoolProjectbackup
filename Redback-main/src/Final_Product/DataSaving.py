import pymysql
def SavingData(collection):

    # define name
    t1q1 = 'Provide a short summary about the person with disability who is the focus of the PBSP'

    # ----------------------------------- table 2 ---------------------------

    t2q1 = 'Persons consulted to prepare this PBSP (add/remove rows as required)'
    t2q2 = 'Outline the behavioural assessment approaches implemented to develop this PBSP'
    t2q3 = 'Additional non-behavioural assessments undertaken or reviewed to inform the development of this PBSP'

    # ----------------------------------- table 3 ---------------------------

    # table3
    t3q1 = 'Function'

    # ----------------------------------- table 4 ---------------------------

    # table4
    t4q1 = 'Description of behaviours (include frequency, duration and severity) that align with this function'
    t4q2 = 'Setting events, triggers and consequences related to these behaviours (add/remove rows as necessary)'
    t4q3 = 'A summary statement outlining the functional hypothesis'
    t4q4 = 'Proposed alternative or functionally equivalent replacement behaviour(s)'

    # ----------------------------------- table 5 ---------------------------

    t5q1 = 'Goal(s) specific to the behaviours described'
    t5q2 = 'Goals specific to enhancing the person’s quality of life'

    # ----------------------------------- table 6 ---------------------------

    t6q1 = 'Environmental changes to address setting events and triggers (changes to reduce and/or eliminate their influence)'
    t6q2 = 'Teaching of the alternative or functionally equivalent replacement behaviour(s) (e.g., description of the teaching strategy and materials needed)'
    t6q3 = 'Other strategies (e.g., social, independence, coping, tolerance, etc.)'

    # ----------------------------------- table 7 ---------------------------

    t7q1 = 'Proposed reinforcers'
    t7q2 = 'Schedule of reinforcement'
    t7q3 = 'How were these reinforcers identified?'

    # ----------------------------------- table 8 ---------------------------

    t8q1 = 'How to prompt the alternative or functionally replacement behaviour(s)'
    t8q2 = 'Strategies to ensure the safety of the person and/or others'
    t8q3 = 'Post-incident debriefing with the person with disability and/or parents, support staff, etc.'

    # ----------------------------------- table 9 ---------------------------

    t9q1 = 'Are you proposed to use restrictive interventions?'

    # ----------------------------------- table 10 ---------------------------
    t10q1 = 'Restrictive intervention'

    # ----------------------------------- table 11 ---------------------------
    t11q1 = 'Medication(s) that will be used (e.g., name, dosage, frequency, administration, route, prescriber)'
    t11q2 = 'Positive behavioural support strategies to be used before the PRN use of the medication'
    t11q3 = 'Circumstance(s) in which the medication(s) will be used'
    t11q4 = 'Procedure for administering the medication(s), including observation and monitoring of side-effects'
    t11q5 = 'How will chemical restraint be gradually reduced as behavioural goals are achieved by the person?'
    t11q6 = 'Why is the use of this medication the least restrictive way of ensuring the safety of the person and/or others?'
    t11q7 = 'Social validity of the restrictive practice'
    t11q8 = 'Authorisation for the use of restrictive practices'

    t11q9 = 'Authorising body'

    # ----------------------------------- table 12 ---------------------------
    t12q1 = 'Description of the restraint(s) to be used'
    t12q2 = 'Positive behavioural support strategies to be used before the use of the restraint'
    t12q3 = 'Circumstance(s) in which the restraint will be used'
    t12q4 = 'Procedure for using the restraint, including observation, monitoring and maximum time period'
    t12q5 = 'How will the restraint be gradually reduced as behavioural goals are achieved by the person?'
    t12q6 = 'Why is the use of this restraint the least restrictive way of ensuring the safety of the person and/or others?'
    t12q7 = 'Social validity of the restrictive practice'
    t12q8 = 'Authorisation for the use of restrictive practice'

    t12q9 = 'Authorising body'

    # ----------------------------------- table 13 ---------------------------
    t13q1 = 'Description of the restraint(s) to be used'
    t13q2 = 'Frequency of use'
    t13q3 = 'Positive behavioural support strategies to be used before the as needed use of the restraint'
    t13q4 = 'Circumstance(s) in which the restraint will be used'
    t13q5 = 'Procedure for using the restraint, including observation, monitoring and maximum time period'
    t13q6 = 'How do you know this restraint is safe to use?'
    t13q7 = 'How will the restraint be gradually reduced as behavioural goals are achieved by the person?'
    t13q8 = 'Why is the use of this practice the least restrictive way of ensuring the safety of the person and/or others?'
    t13q9 = 'Social validity of the practice'
    t13q10 = 'Authorisation for the use of restrictive practices'

    t13q11 = 'Authorising body'

    # ----------------------------------- table 14 ---------------------------
    t14q1 = 'Description of the restraint(s) to be used'
    t14q2 = 'Frequency of use'
    t14q3 = 'Positive behavioural support strategies to be used before the as needed use of the restraint'
    t14q4 = 'Circumstance(s) in which the restraint will be used'
    t14q5 = 'What is the person with disability prevented from accessing?'
    t14q6 = 'Procedure for using the restraint, including observation and monitoring'
    t14q7 = 'Will other people be impacted by the use of this restraint?'
    t14q8 = 'If YES, how will impact on others be minimised?'
    t14q9 = 'H\now will the restraint be gradually reduced as behavioural goals are achieved by the person?'  # 这种带\n会影响程序的判断，是潜在威胁需要复查
    t14q10 = 'Why is the use of this practice the least restrictive way of ensuring the safety of the person and/or others?'
    t14q11 = 'Social validity of the practice'
    t14q12 = 'Authorisation for the use of the practices'

    t14q13 = 'Authorising body'

    # ----------------------------------- table 15 ---------------------------
    t15q1 = 'Frequency of use'
    t15q2 = 'Positive behavioural support strategies to be used before the as needed use of seclusion'
    t15q3 = 'Circumstance(s) in which seclusion will be used'
    t15q4 = 'The maximum frequency of seclusion per day, week and/or month; and for how long (minutes/hours)'
    t15q5 = 'Procedure for using seclusion, including observation and monitoring'
    t15q6 = 'How will seclusion be gradually reduced as behavioural goals are achieved by the person?'
    t15q7 = 'Why is the use seclusion the least restrictive way of ensuring the safety of the person and/or others?'
    t15q8 = 'Social validity of seclusion'
    t15q9 = 'Authorisation for the use of restrictive practices'

    t15q10 = 'Authorising body'

    # ----------------------------------- table 16 ---------------------------
    t16q1 = 'People involved in the implementation of this PBSP'
    t16q2 = 'How will implementers of this PBSP be trained to implement the proposed interventions?'
    t16q3 = 'How will implementers of this PBSP communicate with one another to discuss implementation?'
    t16q4 = 'Outline the implementation plan'
    t16q5 = 'How will PBSP implementation and goal achievement be reviewed and monitored?'
    t16q6 = 'Timeframe for plan review'

    # ----------------------------------- table 17 ---------------------------
    t17q1 = 'How did you assess the acceptability of the interventions proposed in this PBSP?'
    t17q2 = 'Who did you consult with?'

    # Connect to the database
    conn = pymysql.connect(host="localhost", port=3306, user="root", password="gdh199814", charset="utf8",
                           db="new_schema")
    cursor = conn.cursor()

    # define SQL command to save extracted into the database
    # insert data into the table Participants
    sql = 'insert into Participants(id,participants_description) values(null, "{}")'.format(collection["table1"][t1q1])
    cursor.execute(sql)
    participants_id = conn.insert_id()

    # insert data into the table Practitioner
    sql = 'insert into Practitioner(id) values(null)'
    cursor.execute(sql)
    practitioner_id = conn.insert_id()

    # insert data into the table Assessment_Approach
    sql = 'insert into Assessment_Approach(id, behavioural_assessment_approaches, non_behavioural_assessment_approaches) values(null, "{}", "{}")'.format(
        collection["table2"][t2q2], collection["table2"][t2q3])
    cursor.execute(sql)
    assessment_approach_id = conn.insert_id()

    # insert data into the table Goals
    sql = 'insert into Goals(id, enhancing_the_quality_of_life, specific_to_behaviors) values(null, "{}", "{}")'.format(
        collection["table5"][t5q1], collection["table5"][t5q2])
    cursor.execute(sql)
    goal_id = conn.insert_id()

    # insert data into the table Strategy
    sql = 'insert into Strategy(id, teaching, other_strategy, environmental) values(null, "{}", "{}", "{}")'.format(
        collection["table6"][t6q2], collection["table6"][t6q3], collection["table6"][t6q1])
    cursor.execute(sql)
    strategy_id = conn.insert_id()

    # insert data into the table Reinforcement
    sql = 'insert into Reinforcement(id, identification_method, reinforcer,reinforcement_schedule) values(null, "{}", "{}", "{}")'.format(
        collection["table7"][t7q3], collection["table7"][t7q1], collection["table7"][t7q2])
    cursor.execute(sql)
    reinforcement_id = conn.insert_id()

    # insert data into the table De_escalation
    sql = 'insert into De_escalation(id, method_to_promote_alternative_behavior, strtegies_for_ensuring_safety, post_incident) values(null, "{}", "{}", "{}")'.format(
        collection["table8"][t8q1], collection["table8"][t8q2], collection["table8"][t8q3])
    cursor.execute(sql)
    de_escalation_id = conn.insert_id()

    # insert data into the table PBS Interventions
    sql = 'insert into PBS_Interventions(id, goal_id, reinforcement_id, strategy_id, de_escalation_id) values(null, {}, {}, {}, {})'.format(
        goal_id, reinforcement_id, strategy_id, de_escalation_id)
    cursor.execute(sql)
    PBS_Intervention_id = conn.insert_id()

    # insert data into the table Restrictive Intervention
    sql = 'insert into Restrictive_Intervention(id, whether, intervention_type) values(null, "{}", "{}")'.format(
        collection["table9"][t9q1], collection["table10"][t10q1])
    cursor.execute(sql)
    intervention_id = conn.insert_id()

    # insert data into the table Implementation
    sql = 'insert into Implementation(id, people, timeframe) values(null, "{}", "{}")'.format(
        collection["table16"][t16q1],
        collection["table16"][t16q6])
    cursor.execute(sql)
    Implementation_id = conn.insert_id()

    # insert data into the table BSP
    sql = 'insert into BSP(id, participants_id, practitioner_id, Implementation_id, intervention_id, PBS_Intervention_id, Assessment_approach_id) values(null, {}, {}, {}, {}, {}, {})'.format(
        participants_id, practitioner_id, Implementation_id, intervention_id, PBS_Intervention_id,
        assessment_approach_id)
    cursor.execute(sql)
    BSP_id = conn.insert_id()

    # insert data into the table Function of Behavior
    sql = 'insert into Function_of_Behavior(id, FOB_Name, FOB_description, setting_events, FOB_triggers, consequences, alternative_behavior, summary, BSP_id) values(null, "{}", "{}", "{}", "{}", "{}", "{}", "{}", {})'.format(
        collection["table3"][t3q1], collection["table4"][t4q1], collection["table4"][t4q2]['Setting events'],
        collection["table4"][t4q2]['Triggers'], collection["table4"][t4q2]['Consequences'], collection["table4"][t4q4],
        collection["table4"][t4q3], BSP_id)
    cursor.execute(sql)
    conn.commit()
    FOB_id = conn.insert_id()

    # insert data into the table Stakeholders
    for i in range(len(collection["table2"][t2q1]['who are they'])):
        sql = 'insert into Stakeholders(id, BSP_id, contact_method, stakeholder_name) values(null, {}, "{}", "{}")'.format(
            BSP_id, collection["table2"][t2q1]['How were they consulted?'][i],
            collection["table2"][t2q1]['who are they'][i])
        cursor.execute(sql)

    # insert data into the table Social Validity
    sql = 'insert into Social_Validity(id, how, who) values(null, "{}", "{}")'.format(
        collection["table11"][t11q7]['How did you assess the acceptability of this practice?'],
        collection["table11"][t11q7]['Who did you consult with to assess this?'])
    cursor.execute(sql)
    sv_id_chemical = conn.insert_id()

    # insert data into the table Social Validity
    sql = 'insert into Social_Validity(id, how, who) values(null, "{}", "{}")'.format(
        collection["table12"][t12q7]['How did you assess the acceptability of this practice?'],
        collection["table12"][t12q7]['Who did you consult with to assess this?'])
    cursor.execute(sql)
    sv_id_physical = conn.insert_id()

    # insert data into the table Social Validity
    sql = 'insert into Social_Validity(id, how, who) values(null, "{}", "{}")'.format(
        collection["table13"][t13q9]['How did you assess the acceptability of this practice?'],
        collection["table13"][t13q9]['Who did you consult with to assess this?'])
    cursor.execute(sql)
    sv_id_mechanical = conn.insert_id()

    # insert data into the table Social Validity
    sql = 'insert into Social_Validity(id, how, who) values(null, "{}", "{}")'.format(
        collection["table14"][t14q11]['How did you assess the acceptability of this practice?'],
        collection["table14"][t14q11]['Who did you consult with to assess this?'])
    cursor.execute(sql)
    sv_id_environmental = conn.insert_id()

    # insert data into the table Social Validity
    sql = 'insert into Social_Validity(id, how, who) values(null, "{}", "{}")'.format(
        collection["table15"][t15q8]['How did you assess the acceptability of this practice?'],
        collection["table15"][t15q8]['Who did you consult with to assess this?'])
    cursor.execute(sql)
    sv_id_seclusion = conn.insert_id()

    # insert data into the table Authorisation
    sql = 'insert into Authorisation(id, body, period) values(null, "{}", "{}")'.format(
        collection["table11"][t11q8]['Authorising body'], collection["table11"][t11q8]['Approval period'])
    cursor.execute(sql)
    authorisation_id_chemical = conn.insert_id()

    # insert data into the table Authorisation
    sql = 'insert into Authorisation(id, body, period) values(null, "{}", "{}")'.format(
        collection["table12"][t12q8]['Authorising body'], collection["table12"][t12q8]['Approval period'])
    cursor.execute(sql)
    authorisation_id_physical = conn.insert_id()

    # insert data into the table Authorisation
    sql = 'insert into Authorisation(id, body, period) values(null, "{}", "{}")'.format(
        collection["table13"][t13q10]['Authorising body'], collection["table13"][t13q10]['Approval period'])
    cursor.execute(sql)
    authorisation_id_mechanical = conn.insert_id()

    # insert data into the table Authorisation
    sql = 'insert into Authorisation(id, body, period) values(null, "{}", "{}")'.format(
        collection["table14"][t14q12]['Authorising body'], collection["table14"][t14q12]['Approval period'])
    cursor.execute(sql)
    authorisation_id_environmental = conn.insert_id()

    # insert data into the table Authorisation
    sql = 'insert into Authorisation(id, body, period) values(null, "{}", "{}")'.format(
        collection["table15"][t15q9]['Authorising body'], collection["table15"][t15q9]['Approval period'])
    cursor.execute(sql)
    authorisation_id_seclusion = conn.insert_id()

    # insert data into the table Chemical
    sql = 'insert into Chemical(id, how_to_reduce, why, PBS_strategies, circumstances, chemical_procedure, social_validity_id, authorisation_id, intervention_id) values(null, "{}", "{}", "{}", "{}", "{}", {}, {}, {})'.format(
        collection["table11"][t11q5], collection["table11"][t11q6], collection["table11"][t11q2],
        collection["table11"][t11q3], collection["table11"][t11q4], sv_id_chemical, authorisation_id_chemical,
        intervention_id)
    cursor.execute(sql)
    chemical_id = conn.insert_id()

    # insert data into the table Physical
    sql = 'insert into Physical(id, physical_description, prodcedure,why,circumstances,how_to_reduce,PBS_strategies,social_validity_id,authorisation_id,intervention_id) values(null, "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}")'.format(
        collection["table12"][t12q1], collection["table12"][t12q4], collection["table12"][t12q6],
        collection["table12"][t12q3], collection["table12"][t12q5], collection["table12"][t12q2], sv_id_physical,
        authorisation_id_physical, intervention_id)
    cursor.execute(sql)
    physical_id = conn.insert_id()

    # insert data into the table Mechanical
    sql = 'insert into Mechanical(id, mechanical_description, how_to_check_safety,prodcedure,why,circumstances,how_to_reduce,frequency,PBS_strategies,social_validity_id,authorisation_id,intervention_id) values(null, "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}")'.format(
        collection["table13"][t13q1], collection["table13"][t13q6], collection["table13"][t13q5],
        collection["table13"][t13q8], collection["table13"][t13q4], collection["table13"][t13q7],
        collection["table13"][t13q2], collection["table13"][t13q3], sv_id_mechanical, authorisation_id_mechanical,
        intervention_id)
    cursor.execute(sql)
    mechanical_id = conn.insert_id()

    # insert data into the table Environmental
    sql = 'insert into Environmental(id, PBS_strategies,environmental_description, how_to_check_safety,prevented_from,circumstances,why, environmental_procedure,how_to_reduce,frequency,impact_to_other_people,social_validity_id,authorisation_id,intervention_id) values(null, "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}")'.format(
        collection["table14"][t14q3], collection["table14"][t14q1], collection["table14"][t14q9],
        collection["table14"][t14q5], collection["table14"][t14q4], collection["table14"][t14q10],
        collection["table14"][t14q6], collection["table14"][t14q8], collection["table14"][t14q2],
        collection["table14"][t14q7], sv_id_environmental, authorisation_id_environmental, intervention_id)
    cursor.execute(sql)
    environment_id = conn.insert_id()

    # insert data into the table Seclusion
    sql = 'insert into Seclusion(id, seclusion_procedure, why,circumstances,how_to_reduce,maximum_frequency,frequency,PBS_strategies,social_validity_id,authorisation_id,intervention_id) values(null, "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}")'.format(
        collection["table15"][t15q5], collection["table15"][t15q7], collection["table15"][t15q3],
        collection["table15"][t15q6], collection["table15"][t15q4], collection["table15"][t15q1],
        collection["table15"][t15q2], sv_id_seclusion, authorisation_id_seclusion, intervention_id)
    cursor.execute(sql)
    seclusion_id = conn.insert_id()

    # insert data into the table Medications
    for i in range(len(collection["table11"][t11q1]["Name"])):
        sql = 'insert into Medications(medication_id, medication_name, route,dosage,frequency,prescriber,administration,chemical_id) values(null, "{}", "{}", "{}", "{}", "{}", "{}", "{}")'.format(
            collection["table11"][t11q1]["Name"][i], collection["table11"][t11q1]["Route"][i],
            collection["table11"][t11q1]["Dosage"][i], collection["table11"][t11q1]["Frequency"][i],
            collection["table11"][t11q1]["Prescriber"][i], collection["table11"][t11q1]["Administration"][i],
            chemical_id)
        cursor.execute(sql)

    # insert data into the table Social Validity Implementation
    sql = 'insert into Social_Validity_Implementation(id,how,who,implementation_id) values(null, "{}", "{}", "{}")'.format(
        collection["table17"][t17q1], collection["table17"][t17q2], Implementation_id)
    cursor.execute(sql)
    social_validity_id = conn.insert_id()

    # insert data into the table Trained
    for i in range(len(collection["table16"][t16q2]["Person(s) responsible"])):
        sql = 'insert into Trained(id,people,strategy,implementation_id) values(null, "{}", "{}", "{}")'.format(
            collection["table16"][t16q2]["Person(s) responsible"][i], collection["table16"][t16q2]["Strategy"][i],
            Implementation_id)
        cursor.execute(sql)

    # insert data into the table Monitor and Review
    for i in range(len(collection["table16"][t16q5]["Person(s) responsible"])):
        sql = 'insert into Monitor_and_Review(id,people,strategy,implementation_id) values(null, "{}", "{}", "{}")'.format(
            collection["table16"][t16q5]["Person(s) responsible"][i], collection["table16"][t16q5]["Strategy"][i],
            Implementation_id)
        cursor.execute(sql)

    # insert data into the table Communicate
    for i in range(len(collection["table16"][t16q3]["Person(s) responsible"])):
        sql = 'insert into Communicate(id,people,strategy,implementation_id) values(null, "{}", "{}", "{}")'.format(
            collection["table16"][t16q3]["Person(s) responsible"][i], collection["table16"][t16q3]["Strategy"][i],
            Implementation_id)
        cursor.execute(sql)

    # insert data into the table Plan
    for i in range(len(collection["table16"][t16q4]["Person(s) responsible"])):
        sql = 'insert into Plan(id,people,strategy,implementation_id) values(null, "{}", "{}", "{}")'.format(
            collection["table16"][t16q4]["Person(s) responsible"][i], collection["table16"][t16q4]["Action"][i],
            Implementation_id)
        cursor.execute(sql)

    conn.commit()
  
if __name__ == '__main__' :
    SavingData(collection)
