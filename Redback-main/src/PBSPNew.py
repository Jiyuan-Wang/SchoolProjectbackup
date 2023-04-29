#import fitz

import pandas as pd
import camelot
import pdfplumber


# ----------------------------------- table 1 ---------------------------
t1q1 = 'Provide a short summary about the person with disability who is the focus of the PBSP'

# ----------------------------------- table 2 ---------------------------

t2q1 = 'Persons consulted to prepare this PBSP (add/remove rows as required)'
t2q2 = 'Outline the behavioural assessment approaches implemented to develop this PBSP'
t2q3 = 'Additional non-behavioural assessments undertaken or reviewed to inform the development of this PBSP'

# ----------------------------------- table 3 ---------------------------

#table3
t3q1 = 'Function'

# ----------------------------------- table 4 ---------------------------

#table4
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
t14q9 = 'H\now will the restraint be gradually reduced as behavioural goals are achieved by the person?' #
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


table1_questions = [t1q1]
table2_questions = [t2q1, t2q2, t2q3]
table3_questions = [t3q1]
table4_questions = [t4q1, t4q2, t4q3, t4q4]
table5_questions = [t5q1, t5q2]
table6_questions = [t6q1, t6q2, t6q3]
table7_questions = [t7q1, t7q2, t7q3]
table8_questions = [t8q1, t8q2, t8q3]
table9_questions = [t9q1]
table10_questions = [t10q1]
table11_questions = [t11q1, t11q2, t11q3, t11q4, t11q5, t11q6, t11q7, t11q8, t11q9] # 'Authorising body'
table12_questions = [t12q1, t12q2, t12q3, t12q4, t12q5, t12q6, t12q7, t12q8, t12q9]
table13_questions = [t13q1, t13q2, t13q3, t13q4, t13q5, t13q6, t13q7, t13q8, t13q9, t13q10, t13q11]
table14_questions = [t14q1, t14q2, t14q3, t14q4, t14q5, t14q6, t14q7, t14q8, t14q9, t14q10, t14q11, t14q12, t14q13]
table15_questions = [t15q1, t15q2, t15q3, t15q4, t15q5, t15q6, t15q7, t15q8, t15q9, t15q10]
table16_questions = [t16q1, t16q2, t16q3, t16q4, t16q5, t16q6]
table17_questions = [t17q1, t17q2]

table_questions = {}
table_questions['table1'] = table1_questions
table_questions['table2'] = table2_questions
table_questions['table3'] = table3_questions
table_questions['table4'] = table4_questions
table_questions['table5'] = table5_questions
table_questions['table6'] = table6_questions
table_questions['table7'] = table7_questions
table_questions['table8'] = table8_questions
table_questions['table9'] = table9_questions
table_questions['table10'] = table10_questions
table_questions['table11'] = table11_questions
table_questions['table12'] = table12_questions
table_questions['table13'] = table13_questions
table_questions['table14'] = table14_questions
table_questions['table15'] = table15_questions
table_questions['table16'] = table16_questions
table_questions['table17'] = table17_questions

table_names = ['table1', 'table2', 'table3', 'table4', 'table5', 'table6', 'table7', 'table8', 
              'table9', 'table10', 'table11', 'table12', 'table13', 'table14', 'table15', 'table16', 'table17']


table3_answers = ["Avoidance/escape","Communication","Physical/sensory \nneed","Access – \nperson/object/activity","Other – please \nspecify"]# \n will influence the detection
table9_answers = ["Yes","No"]
table10_answers = ["Chemical","Physical","Mechanical","Environmental","Seclusion"]

table13_answers = ["Routine use","As needed"] # seperate definition, in case there are further changes
table14_answers = ["Routine use","As needed"] # all these are for Bold detections
table15_answers = ["Routine use","As needed"]

collection = {}

def process_1(collection, data, RemainingText):
    dic1 = {}
    total = data.iloc[1][0] + RemainingText 
    dic1[data.iloc[0][0]] = total
    collection['table1'] = dic1

def process_2(collection, data, RemainingText):
    dic2 = {}
    # process data which is 2 columns
    sub1 = {} # dic for 't2q1'
    sub2 = [] # dic for 'who are they'
    sub3 = [] # dic for 'How were they consulted?'
    
    # process question 1
    dic2[t2q1] = sub1
    sub1['who are they'] = sub2
    sub1['How were they consulted?'] = sub3
    
    i = 2
    while (data.iloc[i][0] != t2q2):
        sub2.append(data.iloc[i][0])
        sub3.append(data.iloc[i][1])
        i += 1
    
    # jump to question 2
    i += 1
    dic2[t2q2] = data.iloc[i][0]
    # jump to question 3
    # the following process is like this examples
    
    i += 2
    if (i > len(data) -1):  # this is to avoid  out of bound errors, because the last line of the table can be different
        dic2[t2q3] = ''+ RemainingText      # RemainingText is also for the last part, if the user wrote much and break the table
    else:                                # This check is under the format that in the page, the extract text didn't contain other information from other table
        dic2[t2q3] = data.iloc[i][0] + RemainingText # This condition will only occur on the last part of every different titles
    collection['table2'] = dic2

def process_3(collection, data, BoldText):
    
    dic3 = {}
    for i in range (len(table3_answers)):
        if (table3_answers[i] in BoldText ):
            dic3[t3q1] = data.iloc[1][i] #  if there are  multiple choices, the code in this part should be changed
    collection['table3'] = dic3


    

def process_4(collection, data, RemainingText ):
    dic4 = {}
    sub1 = {}
    col1 = []
    col2 = []
    col3 = []
    
    # process question 1
    dic4[t4q1] = data.iloc[1][0]
    
    # process question 2
    dic4[t4q2] = sub1
    sub1['Setting events'] = col1
    sub1['Triggers'] = col2
    sub1['Consequences'] = col3
    
    i = 4
    while (data.iloc[i][0] != t4q3):
        col1.append(data.iloc[i][0])
        col2.append(data.iloc[i][1])
        col3.append(data.iloc[i][2])
        i += 1
    
    # process question 3
    i += 1
    dic4[t4q3] = data.iloc[i][0]
    # process question 4
    i += 2
    if (i > len(data) -1):
        dic4[t4q4] = ''+ RemainingText 
    else:
        dic4[t4q4] = data.iloc[i][0] + RemainingText 
    collection['table4'] = dic4

def process_5(collection, data):
    dic5 = {}
    i = 1
    dic5[t5q1] = data.iloc[i][0]
    i += 2
    if (i > len(data) -1):
        dic5[t5q2] = ''
    else:
        dic5[t5q2]  = data.iloc[i][0]  
    collection['table5'] = dic5

 


def process_6(collection, data):
    dic6 = {}
    dic6[t6q1] = data.iloc[1][0]
    dic6[t6q2] = data.iloc[3][0]
    i = 5
    if (i > len(data) -1):
        dic6[t6q3] = ''
    else:
        dic6[t6q3]  = data.iloc[5][0] 
    collection['table6'] = dic6


def process_7(collection, data):
    dic7 = {}
    dic7[t7q1] = data.iloc[1][0]
    dic7[t7q2] = data.iloc[3][0]
    i = 5
    if (i > len(data) -1):
        dic7[t7q3]  = ''
    else:
        dic7[t7q3]  = data.iloc[5][0]  
    collection['table7'] = dic7

def process_8(collection, data ,RemainingText):
    dic8 = {}
    dic8[t8q1] = data.iloc[1][0]
    dic8[t8q2] = data.iloc[3][0]

    if (5 > len(data) -1):
        dic8[t8q3]  = ''+ RemainingText
    else:
        dic8[t8q3]  = data.iloc[5][0] +RemainingText

   
    collection['table8'] = dic8

def process_9(collection, data,  BoldText):
    dic9 = {}
    
    for i in range (len(table9_answers)):
        if (table9_answers[i] in BoldText ):
            dic9[t9q1] = data.iloc[1][i] 
    
    collection['table9'] = dic9

def process_10(collection, data, BoldText):
    dic10 = {}
    choices = []

    for i in range (len(table10_answers)):
        if (table10_answers[i] in BoldText ):
            choices.append(data.iloc[1][i]) # multiple choice  
    dic10[t10q1] = choices
    collection['table10'] = dic10

def process_11(collection, data):
    dic11 = {}
    sub1 = {}
    col1 = []
    col2 = []
    col3 = []
    col4 = []
    col5 = []
    col6 = []
    
    dic11[t11q1] = sub1
    sub1['Name'] = col1
    sub1['Dosage'] = col2
    sub1['Frequency'] = col3
    sub1['Administration'] = col4
    sub1['Route'] = col5
    sub1['Prescriber'] = col6
    
    # process question 1
    i = 2
    while (data.iloc[i][0] != t11q2):
        col1.append(data.iloc[i][0])
        col2.append(data.iloc[i][1])
        col3.append(data.iloc[i][2])
        col4.append(data.iloc[i][3])
        col5.append(data.iloc[i][4])
        col6.append(data.iloc[i][5])
        i += 1
        
    i += 1
    dic11[t11q2] = data.iloc[i][0]
    i += 2
    dic11[t11q3] = data.iloc[i][0]
    i += 2
    dic11[t11q4] = data.iloc[i][0]
    i += 2
    dic11[t11q5] = data.iloc[i][0]
    i += 2
    dic11[t11q6] = data.iloc[i][0]
    i += 1
    # question 7
    sub2 = {}
    dic11[t11q7] = sub2
    i += 2
    
    sub2['How did you assess the acceptability of this practice?'] = data.iloc[i][0]
    sub2['Who did you consult with to assess this?'] = data.iloc[i][1]
    
    # question 8
    sub3 = {}
    dic11[t11q8] = sub3

    i += 3

    if(i > len(data) -1 ):
        sub3['Authorising body'] = "failed to collect" 
        sub3['Approval period'] = "failed to collect"
    else:
        sub3['Authorising body'] = data.iloc[i][0]
        sub3['Approval period'] = data.iloc[i][1]
    
    #sub3['Authorising body'] = data.iloc[i][0]
    #sub3['Approval period'] = data.iloc[i][1]
    
    collection['table11'] = dic11   

def process_12(collection, data):
    dic12 = {}
    
    dic12[t12q1] = data.iloc[1][0]
    dic12[t12q2] = data.iloc[3][0]
    dic12[t12q3] = data.iloc[5][0]
    dic12[t12q4] = data.iloc[7][0]
    dic12[t12q5] = data.iloc[9][0]
    dic12[t12q6] = data.iloc[11][0]
    
    # question 7
    sub1 = {}
    dic12[t12q7] = sub1
    sub1['How did you assess the acceptability of this practice?'] = data.iloc[14][0]
    sub1['Who did you consult with to assess this?'] = data.iloc[14][1]
    
    # question 8
    sub2 = {}
    dic12[t12q8] = sub2

    if(17 > len(data) -1 ):
        sub2['Authorising body'] = "failed to collect" 
        sub2['Approval period'] = "failed to collect"
    else:
        sub2['Authorising body'] = data.iloc[17][0]
        sub2['Approval period'] = data.iloc[17][1]


    #sub2['Authorising body'] = data.iloc[17][0]
    #sub2['Approval period'] = data.iloc[17][1]

    
    
    collection['table12'] = dic12

def process_13(collection, data, BoldText):
    dic13 = {}
    
    dic13[t13q1] = data.iloc[1][0]
    dic13[t13q2] = '' #default setting

    for i in range (len(table13_answers)):
        if (table13_answers[i] in BoldText ):
            dic13[t13q2] = table13_answers[i]
    

    dic13[t13q3] = data.iloc[5][0]
    dic13[t13q4] = data.iloc[7][0]
    dic13[t13q5] = data.iloc[9][0]
    dic13[t13q6] = data.iloc[11][0]
    dic13[t13q7] = data.iloc[13][0]
    dic13[t13q8] = data.iloc[15][0]
    
    # question 9
    sub1 = {}
    dic13[t13q9] = sub1
    sub1['How did you assess the acceptability of this practice?'] = data.iloc[18][0]
    sub1['Who did you consult with to assess this?'] = data.iloc[18][1]
    
    # question 10
    sub2 = {}
    dic13[t13q10] = sub2

    if(21 > len(data) -1 ):
        sub2['Authorising body'] = "failed to collect" 
        sub2['Approval period'] = "failed to collect"
    else:
        sub2['Authorising body'] = data.iloc[21][0]
        sub2['Approval period'] = data.iloc[21][1]

    #sub2['Authorising body'] = data.iloc[21][0]
    #sub2['Approval period'] = data.iloc[21][1]
    
    collection['table13'] = dic13

def process_14(collection, data, BoldText):
    dic14 = {}
    #print(data)
    dic14[t14q1] = data.iloc[1][0]

    dic14[t14q2] = '' # 
    for i in range (len(table14_answers)):
        if (table14_answers[i] in BoldText ):
            dic14[t14q2] = table14_answers[i]
   
    
    dic14[t14q3] = data.iloc[5][0]
    dic14[t14q4] = data.iloc[7][0]
    dic14[t14q5] = data.iloc[9][0]
    dic14[t14q6] = data.iloc[11][0]
    dic14[t14q7] = data.iloc[13][0]
    dic14[t14q8] = data.iloc[15][0]
    dic14[t14q9] = data.iloc[17][0]
    dic14[t14q10] = data.iloc[19][0]
    # question 11
    sub1 = {}
    dic14[t14q11] = sub1
    sub1['How did you assess the acceptability of this practice?'] = data.iloc[22][0]
    sub1['Who did you consult with to assess this?'] = data.iloc[22][1]
    
    # question 12
    sub2 = {}
    dic14[t14q12] = sub2


    if(25 > len(data) -1 ):
        sub2['Authorising body'] = "failed to collect" 
        sub2['Approval period'] = "failed to collect"
    else:
        sub2['Authorising body'] = data.iloc[25][0]
        sub2['Approval period'] = data.iloc[25][1]


    #sub2['Authorising body'] = data.iloc[25][0]
    #sub2['Approval period'] = data.iloc[25][1]
    
    collection['table14'] = dic14

def process_15(collection, data, BoldText):
    dic15 = {}

    dic15[t15q1] = ''
    for i in range (len(table15_answers)):
        if (table15_answers[i] in BoldText ):
            dic15[t15q1] = table15_answers[i]

    dic15[t15q2] = data.iloc[3][0]
    dic15[t15q3] = data.iloc[5][0]
    dic15[t15q4] = data.iloc[7][0]
    dic15[t15q5] = data.iloc[9][0]
    dic15[t15q6] = data.iloc[11][0]
    dic15[t15q7] = data.iloc[13][0]
    # question 8
    sub1 = {}
    dic15[t15q8] = sub1
    sub1['How did you assess the acceptability of this practice?'] = data.iloc[16][0]
    sub1['Who did you consult with to assess this?'] = data.iloc[16][1]
    
    # question 9
    sub2 = {}
    dic15[t15q9] = sub2
    if(19 > len(data) -1 ):
        sub2['Authorising body'] = "failed to collect" 
        sub2['Approval period'] = "failed to collect"
    else:
        sub2['Authorising body'] = data.iloc[19][0]
        sub2['Approval period'] = data.iloc[19][1]

    #sub2['Authorising body'] = data.iloc[19][0]
    #sub2['Approval period'] = data.iloc[19][1]
    
    collection['table15'] = dic15

def process_16(collection, data):
    dic16 = {}
    
    # question 1
    list1 = []
    dic16[t16q1] = list1
    for i in range(5):
        list1.append(data.iloc[1][i])
    
    
    i = 4
    # question 2
    sub1 = {}
    col1 = []
    col2 = []
    dic16[t16q2] = sub1
    sub1['Strategy'] = col1
    sub1['Person(s) responsible'] = col2
    
    while (data.iloc[i][0] != t16q3):
        col1.append(data.iloc[i][0])
        if (data.iloc[i][3] != ""):
            col2.append(data.iloc[i][3]) # 
        else:
            col2.append(data.iloc[i][1]) #
        i += 1
        
    # question 3
    i += 2
    sub2 = {}
    col3 = []
    col4 = []
    dic16[t16q3] = sub2
    sub2['Strategy'] = col3
    sub2['Person(s) responsible'] = col4
    
    while (data.iloc[i][0] != t16q4):
        col3.append(data.iloc[i][0])
        if (data.iloc[i][3] != ""):
            col4.append(data.iloc[i][3])
        else:
            col4.append(data.iloc[i][1])
        i += 1
    
    # question 4
    i += 2
    sub3 = {}
    col5 = []
    col6 = []
    dic16[t16q4] = sub3
    sub3['Action'] = col5
    sub3['Person(s) responsible'] = col6
    
    while (data.iloc[i][0] != t16q5):
        col5.append(data.iloc[i][0])
        if (data.iloc[i][3] != ""):
            col6.append(data.iloc[i][3])
        else:
            col6.append(data.iloc[i][1])
        i += 1
        
    # question 5
    i += 2
    sub4 = {}
    col7 = []
    col8 = []
    dic16[t16q5] = sub4
    sub4['Strategy'] = col7
    sub4['Person(s) responsible'] = col8
    
    while (data.iloc[i][0] != t16q6):
        col7.append(data.iloc[i][0])
        if (data.iloc[i][3] != ""):
            col8.append(data.iloc[i][3])
        else:
            col8.append(data.iloc[i][1])
        i += 1
    
    # question 6

    i += 1
    if (i > len(data) -1):
        dic16[t16q6]  = ''
    else:
        dic16[t16q6]  = data.iloc[i][0]  

    #dic16[t16q6] = data.iloc[i][0]
    
    collection['table16'] = dic16

def process_17(collection, data,RemainingText):
    dic17 = {}
    dic17[t17q1] = data.iloc[1][0]
    
    if (3 > len(data) -1):
        dic17[t17q2]  = ''+ RemainingText
    else:
        dic17[t17q2]  = data.iloc[3][0] +RemainingText

    #dic17[t17q2] = data.iloc[3][0]
    
    collection['table17'] = dic17

def tables_preprocess(table_list, current_table):
    previous_table = None
    max_size = 1
    
    for i in range(len(table_list)):
        table = table_list[i]
        max_size = max(table.shape[1], max_size)
        if (i >= 1):
            if ((table.iloc[0][0] not in table_questions[current_table]) and   #
                (previous_table.iloc[-1][0] not in table_questions[current_table])):  # 


                previous_table.iloc[-1][0] += table.iloc[0][0]  # add inclusion of the first row
                table = table.drop(0)  #
                table_list[i] = table #

        previous_table = table #
    
    if (max_size > 1):
        for table in table_list:
            if (table.shape[1] < max_size):
                for i in range(table.shape[1], max_size):
                    table[i] = ""   #
    
    table_combined = pd.concat(table_list, axis=0) #
    return table_combined


def PBSPextract(path):


    # for table process
    t = 0

    # for current table name
    i = 0
    previous_i = 0
    #
    bool = False
    concate_list = [] 
    RemainingText  = ''
    #tables = camelot.read_pdf(path, pages='all', line_scale=40)
    with pdfplumber.open(path) as pdf:
        for page in pdf.pages:
            #text = page.extract_text()
            table = page.extract_table()
        #tables = page.extract_tables()
            p = page.page_number
            tables = camelot.read_pdf(path, pages=str(p), line_scale=40)
            text = ''
            

            if len(tables) == 0:
                text = page.extract_text()
                if (current_table == 'table1'  and i == 1):
                    RemainingText += text
                    process_1(collection, table_combined, RemainingText)

                if(current_table == 'table2' and i == 2):
                    RemainingText += text
                    process_2(collection, table_combined, RemainingText)
                
                if(current_table == 'table4' and i == 4):
                    RemainingText += text
                    process_4(collection, table_combined, RemainingText)
                
                if(current_table == 'table8' and i == 8):
                    RemainingText += text
                    process_8(collection, table_combined, RemainingText)
                
                if(current_table == 'table17' and i == 17):
                    RemainingText += text
                    process_17(collection, table_combined, RemainingText)

            else:
                for j in range(len(tables)):
                    current_table = table_names[i] # decide table      
                    table_pointer = tables[j].df
                    concate_list.append(table_pointer) #
                    RemainingText = ''


                    if ((table_pointer.iloc[-2][0] == table_questions[current_table][-1]) or table_pointer.iloc[-1][0] == table_questions[current_table][-1] ):
                        i += 1 
                        table_combined = tables_preprocess(concate_list, current_table)
                        print(current_table + " " + str(len(concate_list)))
                        concate_list = [] 
            
                    if (current_table == 'table1'  and i == 1):
                        process_1(collection, table_combined, RemainingText)
                    elif(current_table == 'table2' and i == 2):
                        process_2(collection, table_combined, RemainingText)
                    elif(current_table == 'table3' and i == 3):
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText =  ChoiceInPage.extract_text()
                        process_3(collection, table_combined, BoldText)
                        BoldText = ''
                    elif(current_table == 'table4' and i == 4):
                        process_4(collection, table_combined, RemainingText)
                    elif(current_table == 'table5' and i == 5):
                        process_5(collection, table_combined)
                    elif(current_table == 'table6' and i == 6):
                        process_6(collection, table_combined)
                    elif(current_table == 'table7' and i == 7):
                        process_7(collection, table_combined)
                    elif(current_table == 'table8' and i == 8):
                        process_8(collection, table_combined, RemainingText)
                    elif(current_table == 'table9' and i == 9):
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText =  ChoiceInPage.extract_text()
                        process_9(collection, table_combined, BoldText)
                        BoldText = ''
                    elif(current_table == 'table10' and i == 10):
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText =  ChoiceInPage.extract_text()
                        process_10(collection, table_combined, BoldText)
                        BoldText = ''
                    elif(current_table == 'table11' and i == 11):
                        process_11(collection, table_combined) 
                    elif(current_table == 'table12' and i == 12):
                        process_12(collection, table_combined)
                
                    elif(current_table == 'table13' and i == 12): 
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText  +=  ChoiceInPage.extract_text()
                    elif(current_table == 'table13'and i == 13):
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText  +=  ChoiceInPage.extract_text()
                        process_13(collection, table_combined,BoldText)
                        BoldText = ''
                    
                    elif(current_table == 'table14' and i == 13): 
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText  +=  ChoiceInPage.extract_text()
                    elif(current_table == 'table14' and i == 14):
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText  +=  ChoiceInPage.extract_text()
                        process_14(collection, table_combined,BoldText)
                        BoldText = ''
                    
                    elif(current_table == 'table15' and i == 14): 
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText  +=  ChoiceInPage.extract_text()
                    elif(current_table == 'table15' and i == 15):
                        ChoiceInPage = page.filter(lambda obj: (obj["object_type"] == "char" and "Bold" in obj["fontname"])) 
                        BoldText  +=  ChoiceInPage.extract_text()
                        #print(BoldText+"asasadasd")
                        process_15(collection, table_combined,BoldText)
                        BoldText = ''
                    
                    elif(current_table == 'table16' and i == 16):
                        process_16(collection, table_combined)
                    elif(current_table == 'table17' and i == 17):
                        process_17(collection, table_combined,RemainingText)

    
        
       
    for i in range (len(table_names)):
        print(i+1)
        print(collection[table_names[i]])
        print("")

    return collection



if __name__ == '__main__' :
    path = "D:\Redback\PBSP Tailor.pdf"
    PBSPextract(path)