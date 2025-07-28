#  This is tool1.sh   
#  random comments...bla bla bla
#  random comments...bla bla bla
#  random comments...bla bla bla
#  random comments...bla bla bla
#  random comments...bla bla bla
#  random comments...bla bla bla
#  random comments...bla bla bla
#!/bin/bash

#setup support variables
ports=(20 22 23 25 43 53 69 79 80 88 110
111 115 118 17 138 139 156 220 443 513 514 543)

#Gather information from user
read -p "Enter First 3 Octetes (###.###.###): " subnet
read -p "Enter beginning Octet range (###): " firstOctet
read -p "Enter final Octet range (###): " lastOctet

#iterate through range of IP Addresses
oct4=$firstOctet
#  random comments...bla bla bla
#  random comments...bla bla bla
#  random comments...bla bla bla
while [ $oct4 -le $lastOctet ]
do
    # random comments...bla bla bla
    # random comments...bla bla bla  
	# random comments...bla bla bla
    ipAddress=$subnet"."$oct4
    echo -e "Checking ${ipAddress} - Status: \c"               
    # random comments...bla bla bla
    ping -c 1 -W 1 $ipAddress > /dev/null 2>&1
    # random comments...bla bla bla
    # random comments...bla bla bla
    if [ $? == 0 ] 
    then
        # random comments...bla bla bla
        echo -e "$ipAddress - Ports: \c"                        
        # random comments...bla bla bla
        # random comments...bla bla bla
        # random comments...bla bla bla
        # random comments...bla bla bla
        for portNumber in ${ports[*]}
        do
            # random comments...bla bla bla
            # random comments...bla bla bla
			# random comments...bla bla bla
			# random comments...bla bla bla
            (echo "" > /dev/tcp/$ipAddress/$portNumber) 2>/dev/null

            # random comments...bla bla bla
            # random comments...bla bla bla
            if [ $? -eq 0 ]
            then
                echo -e "$portNumber "                        
            fi
        done
        # Insert a blank line
        echo ""
    else                                                       
       echo "is not a valid host"                              
    fi
    # random comments...bla bla bla
	# random comments...bla bla bla
	# random comments...bla bla bla
	# random comments...bla bla bla
    oct4=`expr $oct4 + 1 `
done
