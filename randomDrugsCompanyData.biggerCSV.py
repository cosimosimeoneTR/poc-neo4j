#!/usr/bin/env python

import sys
import os
import random
import json
import pickle
import string

v_attribNum = 5
v_writeCommit = 500000

v_companyNum = 100
v_drugNum = 300000
v_sparseRnd1 = 10
v_sparseRnd2 = 20
v_trialNum = 100000
v_diseaseNum = 400000


def printAttribsHead( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)
  return retVal

def printAttribsCnt ( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)+str(''.join(random.choice(string.lowercase) for i in range(10)) )
  return retVal

myString=""
fileOut = open('DONTBACKUP/drugs.csv', 'wb')
fileOut.write('id:ID(Drug),:LABEL,drugName'+printAttribsHead ( v_attribNum ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId)+',Drug,Drg_'+str(drugId)+printAttribsCnt ( v_attribNum ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = open('DONTBACKUP/companies.csv', 'wb')
fileOut.write('id:ID(Company),:LABEL,companyName'+printAttribsHead ( v_attribNum ) +'\n')
for companyId in range(0,v_companyNum-1):
  myString=myString+(str(companyId)+',Company,Cmp_'+str(companyId)+printAttribsCnt ( v_attribNum ) +'\n')
  if companyId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = open('DONTBACKUP/companiesdrugs.csv', 'wb')
fileOut.write(':START_ID(Company),:END_ID(Drug),:TYPE'+printAttribsHead ( 5 ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId%(v_companyNum-1))+','+str(drugId)+',CMP2DRG'+printAttribsCnt ( 5 ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = open('DONTBACKUP/trials.csv', 'wb')
fileOut.write('id:ID(Trial),:LABEL,trialName'+printAttribsHead ( v_attribNum ) +'\n')
for trialId in range(0,v_trialNum-1):
  myString=myString+(str(trialId)+',trial,trial_'+str(drugId)+printAttribsCnt ( v_attribNum ) +'\n')
  if trialId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = open('DONTBACKUP/trialsdrugs.csv', 'wb')
fileOut.write(':START_ID(Trial),:END_ID(Drug),:TYPE'+printAttribsHead ( v_attribNum ) +'\n')
for trialId in range(0,v_trialNum-1):
  myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd1))+',TRL2DRG1'+printAttribsCnt ( v_attribNum ) +'\n'
  myString=myString+str(trialId)+','+str(random.randint(1, v_sparseRnd2))+',TRL2DRG2'+printAttribsCnt ( v_attribNum ) +'\n'
  myString=myString+str(trialId)+','+str(random.randint(1, v_drugNum -2  ))+',TRL2DRG3'+printAttribsCnt ( v_attribNum ) +'\n'
  if trialId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = open('DONTBACKUP/drugsdrugs.csv', 'wb')
fileOut.write(':START_ID(Drug),:END_ID(Drug),:TYPE'+printAttribsHead ( v_attribNum ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId)+','+str(random.randint(1, v_sparseRnd1))+',DRG2DRG'+printAttribsCnt ( v_attribNum ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()



myString=""
fileOut = open('DONTBACKUP/diseases.csv', 'wb')
fileOut.write('id:ID(Disease),:LABEL,DiseaseName'+printAttribsHead ( v_attribNum ) +'\n')
for v_diseaseNum in range(0,v_diseaseNum-1):
  myString=myString+(str(v_diseaseNum)+',Disease,Dis_'+str(v_diseaseNum)+printAttribsCnt ( v_attribNum ) +'\n')
  if trialId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = open('DONTBACKUP/drugsdiseases.csv', 'wb')
fileOut.write(':START_ID(Drug),:END_ID(Disease),:TYPE,relationType'+printAttribsHead ( v_attribNum ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId)+','+str(random.randint(1, v_diseaseNum))+',DRG2DIS,relation1'+printAttribsCnt ( v_attribNum ) +'\n')
  myString=myString+(str(drugId)+','+str(random.randint(1, v_diseaseNum))+',DRG2DIS,relation2'+printAttribsCnt ( v_attribNum ) +'\n')
  myString=myString+(str(drugId)+','+str(random.randint(1, v_diseaseNum))+',DRG2DIS,relation3'+printAttribsCnt ( v_attribNum ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()
