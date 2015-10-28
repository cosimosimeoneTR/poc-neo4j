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


v_startEntityId  = sys.argv[1]
v_endEntityId    = sys.argv[2]
v_rowNums        = int(sys.argv[3])
v_path           = sys.argv[4]

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
fileOut = gzip.open(v_path+'entity'+str(v_startEntityId)+'2entity'+str(v_endEntityId)+'.csv.gz', 'wb')
fileOut.write(':START_ID(entity'+str(v_startEntityId)+'),:END_ID(entity'+str(v_endEntityId)+'),:TYPE,relationType'+printAttribsHead ( v_attribNum ) +'\n')
for loopId in range(1,v_rowNums):
  myString=myString+(str(loopId)+','+str(random.randint(1, v_rowNums))+',ENT'+str(v_startEntityId)+'2ENT'+str(v_endEntityId)+',Relation'+printAttribsCnt ( 5 ) +'\n')
  if loopId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()


