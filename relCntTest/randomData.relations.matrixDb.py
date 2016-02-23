#!/usr/bin/env python

import sys
import random
import gzip

v_startEntityId     = sys.argv[1]
v_endEntityId       = sys.argv[2]
v_rowNums           = int(sys.argv[3])
v_attribNum         = int(sys.argv[4])
v_relationTypeNum   = int(sys.argv[5])
v_writeCommit       = int(sys.argv[6])
v_path              = sys.argv[7]



def printAttribsHead( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)
  return retVal

def printAttribsCnt ( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    #retVal = retVal+',attr'+str(attribId)+str(''.join(random.choice(string.lowercase) for i in range(10)) )
    #retVal = retVal+',attr'+str(attribId)+'_'+str( random.randint(0, 999999) )
    retVal = retVal+',attr'+str(attribId)+'_blaBlaBla'
  return retVal

fixedAttribs=printAttribsCnt ( v_attribNum )

myString=""
fileOut = gzip.open(v_path+str(v_startEntityId)+'2'+str(v_endEntityId)+'.csv.gz', 'wb')
fileOut.write(':START_ID('+str(v_startEntityId)+'),:END_ID('+str(v_endEntityId)+'),:TYPE,relationType'+printAttribsHead ( v_attribNum ) +'\n')
for loopId in range(1,v_rowNums):
  if v_relationTypeNum !=0: relationType='Relation'+str( (loopId%v_relationTypeNum)+1 )
  else: relationType='Relation'
  #myString=myString+(str(loopId)+','+str( random.randint(1 , ((loopId + 10) % (v_rowNums-5) )+1  ) ) +','+str(v_startEntityId)+'2'+str(v_endEntityId)+','+relationType +printAttribsCnt ( v_attribNum ) +'\n')
  myString=myString+(str(loopId)+','+str( random.randint(1 , v_rowNums-5) ) +','+str(v_startEntityId)+'2'+str(v_endEntityId)+','+relationType +fixedAttribs +'\n')
  if loopId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()
