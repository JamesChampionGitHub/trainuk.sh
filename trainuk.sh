#!/bin/sh

## Various discarded code

#curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$date"/today | grep "nofollow" | tail --lines 4 | awk '{print $3}'| sed 's/href="//g' | sort -u

#printf "\n%s\n" "Do you want to see the live departure times from ""$depart""?"

#curl -s https://traintimes.org.uk/live/basingstoke

# varaible for time leaving two
#timeleavingtwo=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$date"/today | grep "result" | awk '{print $6}' | sed 's/.......//g' | tail -5)

# variable for the time now
#now=$(date +%H:%M)

printf "\n%s\n" "Current Date and Time:"

date

printf "\n%s\n" "Enter the station you're departing from:"

read depart

printf "\n%s\n" "Enter the station you're going to:"

read arrive

printf "\n%s\n" "Enter the time you want to depart, e.g. 13:00"

read time

printf "\n%s\n" "Enter the day you want to depart, e.g. 27"

read day

printf "\n%s\n" "Enter the month you want to depart, e.g. 12"

read month

printf "\n%s\n" "Enter the year you want to depart, e.g. 2023"

read year

# variable for time leaving 
timeleavingone=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep "result0" | awk '{print $3}' | sed 's/.....................//g')

timeleavingtwo=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep "result1" | awk '{print $6}' | sed 's/.......//g') 

timeleavingthree=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep "result2" | awk '{print $6}' | sed 's/.......//g') 

timeleavingfour=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep "result3" | awk '{print $6}' | sed 's/.......//g') 

timeleavingfive=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep "result4" | awk '{print $6}' | sed 's/.......//g') 

# variable for time arriving
timearriveone=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i "ash" | awk '{print $2}' | sed -n '1p')

timearrivetwo=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i "ash" | awk '{print $2}' | sed -n '2p')

timearrivethree=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i "ash" | awk '{print $2}' | sed -n '3p')

timearrivefour=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i "ash" | awk '{print $2}' | sed -n '4p')

timearrivefive=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i "ash" | awk '{print $2}' |sed -n '5p')

# chosen leaving
ptimeleavingone=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep "result0" | awk '{print $3}' | sed 's/.....................//g')

ptimeleavingtwo=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep "result1" | awk '{print $6}' | sed 's/.......//g') 

ptimeleavingthree=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep "result2" | awk '{print $6}' | sed 's/.......//g') 

ptimeleavingfour=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep "result3" | awk '{print $6}' | sed 's/.......//g') 

ptimeleavingfive=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep "result4" | awk '{print $6}' | sed 's/.......//g') 

# chosen arriving
ptimearriveone=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep -i "ash" | awk '{print $2}' | sed -n '1p')

ptimearrivetwo=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep -i "ash" | awk '{print $2}' | sed -n '2p')

ptimearrivethree=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep -i "ash" | awk '{print $2}' | sed -n '3p')

ptimearrivefour=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep -i "ash" | awk '{print $2}' | sed -n '4p')

ptimearrivefive=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep -i "ash" | awk '{print $2}' |sed -n '5p')

# variable for delays
#delaysone=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i -B20 "status late" | grep -i "result0" | awk '{print $6}' | sed 's/..........//g')

#delaystwo=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i -B20 "status late" | grep -i "result1" | awk '{print $6}' | sed 's/..........//g')

#delaysthree=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i -B20 "status late" | grep -i "result2" | awk '{print $6}' | sed 's/..........//g')

#delaysfour=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i -B20 "status late" | grep -i "result3" | awk '{print $6}' | sed 's/..........//g')

#delaysfive=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i -B20 "status late" | grep -i "result4" | awk '{print $6}' | sed 's/..........//g')

#delaystime=$(curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$time"/"$year"-"$month"-"$day" | grep -i "status late" | awk '{print $4, $5}' | sed 's/.........//g')

# function for live train times
results () {
printf "\n%s\n%s\n%s\n%s\n%s\n%s\n" "DepartArrive" """$timeleavingone"" ""$timearriveone""" """$timeleavingtwo"" ""$timearrivetwo""" """$timeleavingthree"" ""$timearrivethree""" """$timeleavingfour"" ""$timearrivefour""" """$timeleavingfive"" ""$timearrivefive"""

#printf "\n%s\n%s\n" """$delaysone"" ""$delaystime""" | pr -2 -t -s
}

# function for picked time
chosen () {
printf "\n%s\n" "Enter the time you want to depart, e.g. 13:00:"

read timing

printf "\n%s\n%s\n%s\n%s\n%s\n%s\n" "Depart Arrive" """$ptimeleavingone"" ""$ptimearriveone""" """$ptimeleavingtwo"" ""$ptimearrivetwo""" """$ptimeleavingthree"" ""$ptimearrivethree""" """$ptimeleavingfour"" ""$ptimearrivefour""" """$ptimeleavingfive"" ""$ptimearrivefive"""

curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep result0 | awk '{print $3}' | sed 's/.....................//g'

curl -s https://traintimes.org.uk/"$depart"/"$arrive"/"$timing"/today | grep "result" | awk '{print $6}' | sed 's/.......//g' | tail -5
}

# start
#printf "\n%s\n" "Press y to continue or n to exit."

#read answer

#case "$answer" in
#	y)
	#results
	#;;
	#n)
	#exit
	#;;
#esac

results
