import pymysql

# Connect to the database
conn = pymysql.connect(host="localhost", port=3306, user="root", password="gdh199814", charset="utf8", db="new_schema")
#conn = pymysql.connect(host="localhost", port=3308, user="root", password="lxd0406", charset="utf8", db="new_schema")
cursor = conn.cursor()

# ----------------------------------- table 1 ---------------------------
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
t14q9 = 'H\now will the restraint be gradually reduced as behavioural goals are achieved by the person?'  #
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
q1 = 'How did you assess the acceptability of this practice?'
q2 = 'Who did you consult with to assess this?'
q3 = 'Authorising body'
q4 = 'Approval period'
q5 = 'Authorisation for the use of restrictive practices'


def getPage1(bsp_id):
    sql = 'SELECT participants_description FROM participants where id = {}'.format(bsp_id)
    cursor.execute(sql)
    result = cursor.fetchall()
    d = {}
    d[t1q1] = result[0][0]
    conn.commit()
    return d


def getPage2(bsp_id):
    sql = 'SELECT contact_method, stakeholder_name FROM stakeholders where bsp_id = {}'.format(bsp_id)
    cursor.execute(sql)
    result1 = cursor.fetchall()
    stakeholder = []
    contaction = []
    for m, p in result1:
        stakeholder.append(p)
        contaction.append(m)
    d1 = {}
    d1["Who are they"] = stakeholder
    d2 = {}
    d2["How were they consulted"] = contaction
    d3 = {}
    d3[t2q1] = (d1, d2)

    sql = 'SELECT * FROM assessment_approach where id = {}'.format(bsp_id)
    cursor.execute(sql)
    result2 = cursor.fetchall()
    d3[t2q2] = result2[0][1]
    d3[t2q3] = result2[0][2]
    conn.commit()
    return d3


def getPage3(bsp_id):
    sql = 'SELECT * FROM function_of_behavior where bsp_id = {}'.format(bsp_id)
    cursor.execute(sql)
    result = cursor.fetchall()
    d = {}
    d[t3q1] = result[0][1]
    d[t4q1] = result[0][3]
    d1 = {}
    d1["Setting events"] = result[0][5]
    d1["Triggers"] = result[0][4]
    d1["Consequences"] = result[0][7]
    d[t4q2] = d1
    d[t4q3] = result[0][2]
    d[t4q4] = result[0][6]
    conn.commit()
    return d


def getPage4(bsp_id):
    d = {}
    sql = 'SELECT * FROM goals where id = {}'.format(bsp_id)
    cursor.execute(sql)
    result1 = cursor.fetchall()
    d[t5q1] = result1[0][1]
    d[t5q2] = result1[0][2]

    sql = 'SELECT * FROM strategy where id = {}'.format(bsp_id)
    cursor.execute(sql)
    result2 = cursor.fetchall()
    d[t6q1] = result2[0][3]
    d[t6q2] = result2[0][1]
    d[t6q3] = result2[0][2]

    sql = 'SELECT * FROM reinforcement where id = {}'.format(bsp_id)
    cursor.execute(sql)
    result3 = cursor.fetchall()
    d[t7q1] = result3[0][2]
    d[t7q2] = result3[0][3]
    d[t7q3] = result3[0][1]

    sql = 'SELECT * FROM de_escalation where id = {}'.format(bsp_id)
    cursor.execute(sql)
    result4 = cursor.fetchall()
    d[t8q1] = result4[0][1]
    d[t8q2] = result4[0][2]
    d[t8q3] = result4[0][3]
    conn.commit()
    return d


def getPage5(pbsp_id):
    pageFiveInformation = dict()
    restrictive_intervention = dict()
    chemical_restraint = dict()
    physical = dict()
    mechanical = dict()
    environmental = dict()
    seclusion = dict()

    # Extract basic information
    # get related restrictive intervention id based on the pbsp id, 1-1 relation
    sql_command = "select intervention_id from BSP where id = %d" % pbsp_id
    cursor.execute(sql_command)
    intervention_id = cursor.fetchall()[0]

    # get whether from table Restrictive_Intervention
    sql_command = "select whether from Restrictive_Intervention where id = %d" % intervention_id
    cursor.execute(sql_command)
    whether = cursor.fetchall()[0]
    restrictive_intervention[t9q1] = whether

    # get intervention_type from table Restrictive_Intervention
    sql_command = "select intervention_type from Restrictive_Intervention where id = %d" % intervention_id
    cursor.execute(sql_command)
    intervention_type = cursor.fetchall()[0]
    restrictive_intervention[t10q1] = intervention_type

    pageFiveInformation["restrictive_intervention"] = restrictive_intervention

    # Extract Chemical Restraint information
    # get information from table Chemical, 1-1 relation
    sql_command = "select id,how_to_reduce,why,PBS_strategies,circumstances,chemical_procedure,social_validity_id,authorisation_id from Chemical where intervention_id = %d" % intervention_id
    cursor.execute(sql_command)
    chemical_id, how_to_reduce, why, pbs_strategies, circumstances, chemical_procedure, social_validity_id, authorisation_id = \
        cursor.fetchall()[0]

    sql_command = "select how,who from Social_Validity where id = %d" % social_validity_id
    cursor.execute(sql_command)
    how, who = cursor.fetchall()[0]

    sql_command = "select body,period from Authorisation where id = %d" % authorisation_id
    cursor.execute(sql_command)
    body, period = cursor.fetchall()[0]

    # get information from table Medications
    sql_command = "select medication_name,dosage,frequency,administration,route,prescriber from Medications where chemical_id = %d" % chemical_id
    cursor.execute(sql_command)
    medications = cursor.fetchall()

    authorisation_dict = {}

    chemical_restraint["medications"] = medications
    chemical_restraint[t11q2] = pbs_strategies
    chemical_restraint[t11q3] = circumstances
    chemical_restraint[t11q4] = chemical_procedure
    chemical_restraint[t11q5] = how_to_reduce
    chemical_restraint[t11q6] = why
    chemical_restraint[q1] = how
    chemical_restraint[q2] = who
    authorisation_dict[q3] = body
    authorisation_dict[q4] = period
    chemical_restraint[q5] = authorisation_dict

    pageFiveInformation["chemical_restraint"] = chemical_restraint

    # Extract Physical Restraint information
    # get information from table Physical, 1-1 relation
    sql_command = "select id,physical_description,prodcedure,why,circumstances,how_to_reduce,PBS_strategies," \
                  "social_validity_id,authorisation_id from Physical where intervention_id = %d" % intervention_id
    cursor.execute(sql_command)
    physical_id, physical_description, prodcedure, why, circumstances, how_to_reduce, pbs_strategies, social_validity_id, authorisation_id = \
        cursor.fetchall()[0]
    physical[t12q1] = physical_description
    physical[t12q2] = pbs_strategies
    physical[t12q3] = circumstances
    physical[t12q4] = prodcedure
    physical[t12q5] = how_to_reduce
    physical[t12q6] = why

    sql_command = "select how,who from Social_Validity where id = %d" % social_validity_id
    cursor.execute(sql_command)
    how, who = cursor.fetchall()[0]
    physical[q1] = how
    physical[q2] = who

    sql_command = "select body,period from Authorisation where id = %d" % authorisation_id
    cursor.execute(sql_command)
    body, period = cursor.fetchall()[0]
    authorisation_dict = {}
    authorisation_dict[q3] = body
    authorisation_dict[q4] = period
    physical[q5] = authorisation_dict

    pageFiveInformation["physical"] = physical

    # Extract Mechanical Restraint information
    # get information from table Mechanical, 1-1 relation
    sql_command = "select id, mechanical_description, how_to_check_safety, prodcedure, why, circumstances, " \
                  "how_to_reduce, frequency, pbs_strategies, social_validity_id, authorisation_id from Mechanical where intervention_id = %d" % intervention_id
    cursor.execute(sql_command)
    mechanical_id, mechanical_description, how_to_check_safety, prodcedure, why, circumstances, how_to_reduce, frequency, pbs_strategies, social_validity_id, authorisation_id = \
        cursor.fetchall()[0]
    mechanical[t13q1] = mechanical_description
    mechanical[t13q2] = frequency
    mechanical[t13q3] = pbs_strategies
    mechanical[t13q4] = circumstances
    mechanical[t13q5] = prodcedure
    mechanical[t13q6] = how_to_check_safety
    mechanical[t13q7] = how_to_reduce
    mechanical[t13q8] = why

    sql_command = "select how,who from Social_Validity where id = %d" % social_validity_id
    cursor.execute(sql_command)
    how, who = cursor.fetchall()[0]
    mechanical[q1] = how
    mechanical[q2] = who

    sql_command = "select body,period from Authorisation where id = %d" % authorisation_id
    cursor.execute(sql_command)
    body, period = cursor.fetchall()[0]
    authorisation_dict = {}
    authorisation_dict[q3] = body
    authorisation_dict[q4] = period
    mechanical[q5] = authorisation_dict

    pageFiveInformation["mechanical"] = mechanical

    # Extract Environmental Restraint information
    # get information from table Environmental, 1-1 relation
    sql_command = "select id, environmental_description, how_to_check_safety, prevented_from, impact_to_other_people," \
                  "why, environmental_procedure,circumstances, how_to_reduce, frequency, pbs_strategies, social_validity_id, authorisation_id from Environmental where intervention_id = %d" % intervention_id
    cursor.execute(sql_command)
    environmental_id, environmental_description, how_to_check_safety, prevented_from, impact_to_other_people, why, environmental_procedure, circumstances, how_to_reduce, frequency, pbs_strategies, social_validity_id, authorisation_id = \
        cursor.fetchall()[0]
    environmental[t14q1] = environmental_description
    environmental[t14q2] = frequency
    environmental[t14q3] = pbs_strategies
    environmental[t14q4] = circumstances
    environmental[t14q5] = prevented_from
    environmental[t14q6] = environmental_procedure
    environmental[t14q7] = impact_to_other_people
    environmental[t14q8] = how_to_check_safety
    environmental[t14q9] = how_to_reduce
    environmental[t14q10] = why

    sql_command = "select how,who from Social_Validity where id = %d" % social_validity_id
    cursor.execute(sql_command)
    how, who = cursor.fetchall()[0]
    environmental[q1] = how
    environmental[q2] = who

    sql_command = "select body,period from Authorisation where id = %d" % authorisation_id
    cursor.execute(sql_command)
    body, period = cursor.fetchall()[0]
    authorisation_dict = {}
    authorisation_dict[q3] = body
    authorisation_dict[q4] = period
    environmental[q5] = authorisation_dict

    pageFiveInformation["environmental"] = environmental

    # Extract Seclusion Restraint information
    # get information from table Seclusion, 1-1 relation
    sql_command = "select id, seclusion_procedure,why,circumstances,how_to_reduce,maximum_frequency, frequency, " \
                  "pbs_strategies, social_validity_id, authorisation_id from Seclusion where intervention_id = %d" % intervention_id
    cursor.execute(sql_command)
    seclusion_id, seclusion_procedure, why, circumstances, how_to_reduce, maximum_frequency, frequency, pbs_strategies, social_validity_id, authorisation_id = \
        cursor.fetchall()[0]
    seclusion[t15q1] = frequency
    seclusion[t15q2] = pbs_strategies
    seclusion[t15q3] = circumstances
    seclusion[t15q4] = maximum_frequency
    seclusion[t15q5] = seclusion_procedure
    seclusion[t15q6] = how_to_reduce
    seclusion[t15q7] = why

    sql_command = "select how,who from Social_Validity where id = %d" % social_validity_id
    cursor.execute(sql_command)
    how, who = cursor.fetchall()[0]
    seclusion[q1] = how
    seclusion[q2] = who

    sql_command = "select body,period from Authorisation where id = %d" % authorisation_id
    cursor.execute(sql_command)
    body, period = cursor.fetchall()[0]
    authorisation_dict = {}
    authorisation_dict[q3] = body
    authorisation_dict[q4] = period
    seclusion[q5] = authorisation_dict

    pageFiveInformation["seclusion"] = seclusion
    conn.commit()
    return pageFiveInformation


def getPage6(pbsp_id):
    pageSixInformation = dict()

    # get related restrictive intervention id based on the pbsp id, 1-1 relation
    sql_command = "select Implementation_id from BSP where id = %d" % pbsp_id
    cursor.execute(sql_command)
    implementation_id = cursor.fetchall()[0]

    # Extract basic information
    # get whether from table Restrictive_Intervention
    sql_command = "select people from Implementation where id = %d" % implementation_id
    cursor.execute(sql_command)
    people = cursor.fetchall()[0]
    pageSixInformation[t16q1] = people

    # Extract Trained information
    # get information from table Trained, 1-1 relation
    sql_command = "select people, strategy from Trained where implementation_id = %d" % implementation_id
    cursor.execute(sql_command)
    trained_information = cursor.fetchall()

    pageSixInformation[t16q2] = trained_information

    # Extract Communicate information
    # get information from table Communicate, 1-1 relation
    sql_command = "select people, strategy from Communicate where implementation_id = %d" % implementation_id
    cursor.execute(sql_command)
    communicate_information = cursor.fetchall()

    pageSixInformation[t16q3] = communicate_information

    # Extract Plan information
    # get information from table Plan, 1-1 relation
    sql_command = "select people, strategy from Plan where implementation_id = %d" % implementation_id
    cursor.execute(sql_command)
    plan_information = cursor.fetchall()

    pageSixInformation[t16q4] = plan_information

    # Extract Monitor_and_Review information
    # get information from table Monitor_and_Review, 1-1 relation
    sql_command = "select people, strategy from Monitor_and_Review where implementation_id = %d" % implementation_id
    cursor.execute(sql_command)
    monitor_information = cursor.fetchall()

    pageSixInformation[t16q5] = monitor_information

    # get intervention_type from table Restrictive_Intervention
    sql_command = "select timeframe from Implementation where id = %d" % implementation_id
    cursor.execute(sql_command)
    timeframe = cursor.fetchall()[0]
    pageSixInformation[t16q6] = timeframe

    # Extract social validity implementation
    # get whether from table social_validity_implementation
    sql_command = "select how,who from social_validity_implementation where implementation_id = %d" % implementation_id
    cursor.execute(sql_command)
    how, who = cursor.fetchall()[0]

    pageSixInformation[t17q1] = how
    pageSixInformation[t17q2] = who
    conn.commit()

    return pageSixInformation
