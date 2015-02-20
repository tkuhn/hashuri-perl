echo "----------------------------------"
echo "The tests below should all SUCCEED"
echo "----------------------------------"
echo

( ls testsuite/RA/valid/*.ttl ;
  ls testsuite/RA/valid/*.nq ;
  ls testsuite/RA/valid/*.trig ;
  ls testsuite/RA/valid/*.rdf
) \
  | awk '{ print "echo \"Checking file: "$1"\"; scripts/CheckFile.sh "$1; }' \
  | bash

echo
echo "-------------------------------"
echo "The tests below should all FAIL"
echo "-------------------------------"
echo

( ls testsuite/RA/invalid/*.ttl ;
  ls testsuite/RA/invalid/*.nq ;
  ls testsuite/RA/invalid/*.trig
) \
  | awk '{ print "echo \"Checking file: "$1"\"; scripts/CheckFile.sh "$1; }' \
  | bash
