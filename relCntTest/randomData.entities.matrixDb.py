#!/usr/bin/env python

import sys
import random
import gzip

v_entityId          = sys.argv[1]

v_rowNums           = int(sys.argv[2])
v_attribNum         = int(sys.argv[3])

v_writeCommit       = int(sys.argv[4])
v_path              = sys.argv[5]



def printAttribsHead( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    retVal = retVal+',attr'+str(attribId)
  return retVal

def printAttribsCnt ( p_attribNum ):
  retVal = ""
  for attribId in range(0,v_attribNum):
    #retVal = retVal+',attr'+str(attribId)+str(''.join(random.choice(string.lowercase) for i in range(10)) )
    retVal = retVal+',attr'+str(attribId)+'_'+str( random.randint(0, 9999) )
    #retVal = retVal+',attr'+str(attribId)+'_blaBlaBla'
  return retVal

fixedAttribs=printAttribsCnt ( v_attribNum )

myString=""
fileOut = gzip.open(v_path+str(v_entityId)+'.csv.gz', 'wb')
fileOut.write('id:ID('+str(v_entityId)+'),:LABEL,entityName'+printAttribsHead ( v_attribNum ) +'\n')
for loopId in range(1,v_rowNums+1):


  myString=myString+(str(loopId)+','+str(v_entityId)+','+str(v_entityId)+'_'+str(loopId)+printAttribsCnt ( v_attribNum ) +'\n')
  #myString=myString+(str(loopId)+','+str(v_entityId)+','+str(v_entityId)+'_'+str(loopId)+ fixedAttribs +'\n')
  if loopId % v_writeCommit:
    fileOut.write(myString)
    myString=""
fileOut.write(myString)
fileOut.close()



