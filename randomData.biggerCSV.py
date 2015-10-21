#!/usr/bin/env python

import sys
import os
import random
import json
import pickle
import string
import gzip

v_attribNum = 5
v_writeCommit = 500000

v_companyNum =    10000
v_drugNum =     3000000
v_sparseRnd1 =      100
v_sparseRnd2 =      500
v_trialNum =   10000000
v_diseaseNum =  4000000


def printAttribsHead( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)
  return retVal

def printAttribsCnt ( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    #retVal = retVal+',attr'+str(attribId)+str(''.join(random.choice(string.lowercase) for i in range(10)) )
    retVal = retVal+',attr'+str(attribId)+str( random.randint(1, 10) )
  return retVal

myString=""
fileOut = gzip.open('DONTBACKUP/drugs.csv.gz', 'wb')
fileOut.write('id:ID(Drug),:LABEL,drugName'+printAttribsHead ( v_attribNum ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId)+',Drug,Drg_'+str(drugId)+printAttribsCnt ( v_attribNum ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = gzip.open('DONTBACKUP/companies.csv.gz', 'wb')
fileOut.write('id:ID(Company),:LABEL,companyName'+printAttribsHead ( v_attribNum ) +'\n')
for companyId in range(0,v_companyNum-1):
  myString=myString+(str(companyId)+',Company,Cmp_'+str(companyId)+printAttribsCnt ( v_attribNum ) +'\n')
  if companyId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = gzip.open('DONTBACKUP/companiesdrugs.csv.gz', 'wb')
fileOut.write(':START_ID(Company),:END_ID(Drug),:TYPE'+printAttribsHead ( 5 ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId%(v_companyNum-1))+','+str(drugId)+',CMP2DRG'+printAttribsCnt ( 5 ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = gzip.open('DONTBACKUP/trials.csv.gz', 'wb')
fileOut.write('id:ID(Trial),:LABEL,trialName'+printAttribsHead ( v_attribNum ) +'\n')
for trialId in range(0,v_trialNum-1):
  myString=myString+(str(trialId)+',trial,trial_'+str(drugId)+printAttribsCnt ( v_attribNum ) +'\n')
  if trialId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = gzip.open('DONTBACKUP/trialsdrugs.csv.gz', 'wb')
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
fileOut = gzip.open('DONTBACKUP/drugsdrugs.csv.gz', 'wb')
fileOut.write(':START_ID(Drug),:END_ID(Drug),:TYPE'+printAttribsHead ( v_attribNum ) +'\n')
for drugId in range(0,v_drugNum-1):
  myString=myString+(str(drugId)+','+str(random.randint(1, v_sparseRnd1))+',DRG2DRG'+printAttribsCnt ( v_attribNum ) +'\n')
  if drugId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()



myString=""
fileOut = gzip.open('DONTBACKUP/diseases.csv.gz', 'wb')
fileOut.write('id:ID(Disease),:LABEL,DiseaseName'+printAttribsHead ( v_attribNum ) +'\n')
for v_diseaseNum in range(0,v_diseaseNum-1):
  myString=myString+(str(v_diseaseNum)+',Disease,Dis_'+str(v_diseaseNum)+printAttribsCnt ( v_attribNum ) +'\n')
  if v_diseaseNum % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


myString=""
fileOut = gzip.open('DONTBACKUP/drugsdiseases.csv.gz', 'wb')
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
