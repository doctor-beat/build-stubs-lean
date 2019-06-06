
if [ "$1" == 'full' ] 
then
	folders='adyen akana bsl db-helper dynalean inbetween-stub layer7 mosa-stub remedy silverpop-stub smtpeter vesta ziggo'
elif [ -n "$1" ]
then
	folders="$1"
else 
	folders='bsl db-helper mosa-stub'
fi

for folder in $folders
do
	mvn clean tomcat7:redeploy -DskipTests=true -pl $folder
done
