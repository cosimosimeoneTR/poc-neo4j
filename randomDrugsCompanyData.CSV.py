#!/usr/bin/env python

import sys
import os
import random
import json
import pickle

v_companyNum = 1000
v_drugNum = 2500000
v_sparseRnd1 = 1000
v_sparseRnd2 = 3000
#v_trialNum = 200000
v_trialNum = 1000000


fileOut = open('DONTBACKUP/drugs.csv', 'wb')
fileOut.write('id:ID(Drug),:LABEL,randAttrib1,randattrib2,randattrib3,randattrib4,randattrib5,randattrib6,randattrib7,randattrib8,randattrib9,randattrib10\n')
for drugId in range(0,v_drugNum+1):
  fileOut.write(str(drugId)+',Drg_'+str(drugId)+',q,w,e,r,t,y,u,i,o,p\n')
fileOut.close()

fileOut = open('DONTBACKUP/companies.csv', 'wb')
fileOut.write('id:ID(Company),:LABEL,randAttrib1,randattrib2,randattrib3,randattrib4,randattrib5,randattrib6,randattrib7,randattrib8,randattrib9,randattrib10\n')
for companyId in range(0,v_companyNum+1):
  fileOut.write(str(companyId)+',Cmp_'+str(companyId)+',q,w,e,r,t,y,u,i,o,p\n')
fileOut.close()

fileOut = open('DONTBACKUP/trials.csv', 'wb')
fileOut.write('id:ID(Trial),:LABEL,randAttrib1,randattrib2,randattrib3,randattrib4,randattrib5,randattrib6,randattrib7,randattrib8,randattrib9,randattrib10\n')
for trialId in range(0,v_trialNum+1):
  fileOut.write(str(trialId)+',trial_'+str(drugId)+',q,w,e,r,t,y,u,i,o,p\n')
fileOut.close()

fileOut = open('DONTBACKUP/companiesdrugs.csv', 'wb')
fileOut.write(':START_ID(Company),:END_ID(Drug),:TYPE,randAttrib1,randattrib2,randattrib3,randattrib4,randattrib5,randattrib6,randattrib7,randattrib8,randattrib9,randattrib10\n')
for drugId in range(0,v_drugNum):
  fileOut.write(str(companyId)+','+str(drugId%v_companyNum)+',PRODUCES,q,w,e,r,t,y,u,i,o,p\n')
fileOut.close()

fileOut = open('DONTBACKUP/trialsdrugs.csv', 'wb')
fileOut.write(':START_ID(Trial),:END_ID(Drug),:TYPE,code,randAttrib1,randattrib2,randattrib3,randattrib4,randattrib5,randattrib6,randattrib7,randattrib8,randattrib9,randattrib10\n')
for trialId in range(0,v_trialNum):
  myString=""
  myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd1))+',RELATED_TO,0,q,w,e,r,t,y,u,i,o,p\n'
  myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd2))+',RELATED_TO,1,q,w,e,r,t,y,u,i,o,p\n'
  myString=myString+str(trialId)+','+str(random.randint(1, v_drugNum   ))+',RELATED_TO,2,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd1))+',RELATED_TO,3,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd2))+',RELATED_TO,4,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_drugNum   ))+',RELATED_TO,5,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd1))+',RELATED_TO,6,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd2))+',RELATED_TO,7,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_drugNum   ))+',RELATED_TO,8,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd1))+',RELATED_TO,9,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd2))+',RELATED_TO,0,q,w,e,r,t,y,u,i,o,p\n'
  #myString=myString+str(trialId)+','+str(random.randint(1, v_drugNum   ))+',RELATED_TO,a,q,w,e,r,t,y,u,i,o,p\n'
  fileOut.write(myString)
fileOut.close()

