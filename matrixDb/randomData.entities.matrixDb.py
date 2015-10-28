#!/usr/bin/env python

import sys
import os
import random
import json
import pickle
import string
import gzip

v_attribNum = 5
v_writeCommit = 700000


v_entityId  = sys.argv[1]
v_rowNums = int(sys.argv[2])

def printAttribsHead( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)
  return retVal

def printAttribsCnt ( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    #retVal = retVal+',attr'+str(attribId)+str(''.join(random.choice(string.lowercase) for i in range(10)) )
    retVal = retVal+',attr'+str(attribId)+'_'+str( random.randint(1, 10) )
  return retVal

myString=""
fileOut = gzip.open('entity'+str(v_entityId)+'.csv.gz', 'wb')
fileOut.write('id:ID(entity'+str(v_entityId)+'),:LABEL,entityName'+printAttribsHead ( v_attribNum ) +'\n')
for loopId in range(0,v_rowNums):
  myString=myString+(str(loopId)+',Entity'+str(v_entityId)+',Ent_'+str(loopId)+printAttribsCnt ( v_attribNum ) +'\n')
  if loopId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


