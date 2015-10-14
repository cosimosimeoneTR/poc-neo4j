#!/usr/bin/env python

import sys
import os
import random
import json
import pickle

v_attribNum = 10

v_companyNum = 100
v_drugNum = 25000
v_sparseRnd1 = 100
v_sparseRnd2 = 200
v_trialNum = 100


def printAttribs( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)
  return retVal


fileOut = open('DONTBACKUP/drugs.csv', 'wb')
fileOut.write('id:ID(Drug),:LABEL,drugName'+printAttribs ( v_attribNum ) +'\n')
for drugId in range(0,v_drugNum-1):
  fileOut.write(str(drugId)+',Drug,Drg_'+str(drugId)+printAttribs ( v_attribNum ) +'\n')
fileOut.close()



fileOut = open('DONTBACKUP/companies.csv', 'wb')
fileOut.write('id:ID(Company),:LABEL,companyName'+printAttribs ( v_attribNum ) +'\n')
for companyId in range(0,v_companyNum-1):
  fileOut.write(str(companyId)+',Company,Cmp_'+str(companyId)+printAttribs ( v_attribNum ) +'\n')
fileOut.close()

fileOut = open('DONTBACKUP/companiesdrugs.csv', 'wb')
fileOut.write(':START_ID(Company),:END_ID(Drug),:TYPE'+printAttribs ( 5 ) +'\n')
for drugId in range(0,v_drugNum-1):
  fileOut.write(str(companyId)+','+str(drugId%v_companyNum)+',PRODUCES'+printAttribs ( 5 ) +'\n')
fileOut.close()


#
#fileOut = open('DONTBACKUP/trials.csv', 'wb')
#fileOut.write('id:ID(Trial),:LABEL'+printAttribs ( v_attribNum ) +'\n')
#for trialId in range(0,v_trialNum-1):
#  fileOut.write(str(trialId)+',trial_'+str(drugId)+printAttribs ( v_attribNum ) +'\n')
#fileOut.close()
#
#
#fileOut = open('DONTBACKUP/trialsdrugs.csv', 'wb')
#fileOut.write(':START_ID(Trial),:END_ID(Drug),:TYPE,code'+printAttribs ( v_attribNum ) +'\n')
#for trialId in range(0,v_trialNum):
#  myString=""
#  myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd1))+',RELATED_TO,1'+printAttribs ( v_attribNum ) +'\n'
#  myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd2))+',RELATED_TO,2'+printAttribs ( v_attribNum ) +'\n'
#  myString=myString+str(trialId)+','+str(random.randint(1, v_drugNum   ))+',RELATED_TO,3'+printAttribs ( v_attribNum ) +'\n')
#  fileOut.write(myString)
#fileOut.close()
#
