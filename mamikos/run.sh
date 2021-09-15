#!/bin/bash
#file : running all files
trap "exit" INT
echo "============================="
echo "|        RUNNING TEST       |"
echo "============================="

cd testcase/

echo "Total Test Case : $(ls -1 *.robot | wc -l)"
echo ""
echo ""

#run devel
# source `which virtualenvwrapper.sh`
# workon devel

case $1 in
   --parallel)
       echo ""
       echo "    Run Parallel Test      "
       echo "==========================="
       echo ""
       pabot --outputdir ../report ./
   ;;
   *)
       testnumber=0
       for filename in ./*.robot; do
           let testnumber=testnumber+1
           echo ""
           echo "RUN TEST : $testnumber"
           #default robot
        #    robot --variable BROWSER:chrome --variable VERSION:latest  --outputdir ../report $filename
           #robot $filename;
        #    PYTHONPATH=$VIRTUAL_ENV:. robot --variable BROWSER:chrome --variable VERSION:latest  --outputdir ../report $filename
        robot --variable BROWSER:chrome --variable VERSION:latest  --outputdir ../report $filename
       done
   ;;
esac