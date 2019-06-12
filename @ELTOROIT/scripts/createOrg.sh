# Execute in Mac using: ./EXFiles/scripts/CreateOrg.sh
echo "*** Creating scratch Org..."
sfdx force:org:create -f config/project-scratch-def.json --setdefaultusername --setalias soLOUT -d 1
echo "*** Opening scratch Org..."
sfdx force:org:open
echo "*** Pushing metadata to scratch Org..."
sfdx force:source:push
# echo "*** Assigning permission set to your user..."
# sfdx force:user:permset:assign --permsetname EPL_Admin
# # echo "*** Creating required users..."
# # sfdx force:apex:execute -f EXFiles/data/CreateUsers.txt
# echo "*** Creating data using ETCopyData plugin"
# # sfdx ETCopyData:export -c './@ELTOROIT/data' --loglevel trace
# sfdx ETCopyData:import -c './@ELTOROIT/data' --loglevel trace
# echo "Runing Apex tests"
# sfdx force:apex:test:run --codecoverage --synchronous --verbose --json --resultformat json | jq 'del(.result.tests, .result.coverage)'
echo "*** Generate Password..."
sfdx force:user:password:generate
sfdx force:user:display
