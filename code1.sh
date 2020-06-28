
readarray -t a < word.txt #reading array of strings from file  # variable name of file. #change it to what you want

echo The passwords exit in the file you added are: 
echo ${a[@]} # showing the passwords in the file

echo "the first password is " 
echo  "${a[0]}" #showing the first password

  len=$(echo -n ${a[0]} | wc -m) # length of the word
  echo the number of characters in first passwords is :
    echo $len

    if test $len -ge 6 ; then         #checking the requirements
       if test $len -le 12 ; then
        echo "${a[0]}" | grep -q [0-9]
         if test $? -eq 0 ; then
               echo "${a[0]}" | grep -q [A-Z]
                    if test $? -eq 0 ; then
                        echo "${a[0]}" | grep -q [a-z]   
                          if test $? -eq 0 ; then
                           echo "${a[0]}" | grep '[$#@]'
                             if test $? -eq 0 ; then
                               echo "Password succeeded, see valid.txt"
                               echo ${a[0]} >> valid.txt
                               flag1=$true
                             else
                               echo "No special characters in your password"
                               flag1=$false  
                              fi
                       else
                           echo "No lowercase characters in you password"
                           flag1=$false
                       fi
                else
                   echo "No uppercase characters in your password" 
                   flag1=$false
                fi
         else
           echo "There are no numbers in you password" 
            flag1=$false  
         fi
     else  
        echo " password should be less than 12 characters"
        flag1=$false
        fi
    else
        echo "your password is not greater or equal to 6 characters"
        flag1=$false
    fi

echo please enter yes if you want to continue, or no to stop! 
read msg

if test $msg = yes ; then 
echo "the second  password is " 
echo  "${a[1]}" #showing the second password

  len=$(echo -n ${a[1]} | wc -m)
  echo the number of characters in second passwords is :
    echo $len

    if test $len -ge 6 ; then         #checking the requirements
       if test $len -le 12 ; then
        echo "${a[1]}" | grep -q [0-9]
         if test $? -eq 0 ; then
               echo "${a[1]}" | grep -q [A-Z]
                    if test $? -eq 0 ; then
                        echo "${a[1]}" | grep -q [a-z]   
                          if test $? -eq 0 ; then
                           echo "${a[1]}" | grep '[$#@]'
                             if test $? -eq 0 ; then
                               echo "Password succeeded, see valid.txt"
                               echo ${a[1]} >> valid.txt
                               flag1=$true
                             else
                               echo "No special characters in your password"
                               flag1=$false  
                              fi
                       else
                           echo "No lowercase characters in you password"
                           flag1=$false
                       fi
                else
                   echo "No uppercase characters in your password" 
                   flag1=$false
                fi
         else
           echo "There are no numbers in you password" 
            flag1=$false  
         fi
     else  
        echo " password should be less than 12 characters"
        flag1=$false
        fi
    else
        echo "your password is not greater or equal to 6 characters"
        flag1=$false
    fi
else
   exit 1
fi       

echo please enter yes if you want to continue, or no to stop! 
read msg2

if test $msg2 = yes ; then 
echo "the third  password is " 
echo  "${a[2]}" #showing the second password

  len3=$(echo -n ${a[2]} | wc -m)
  echo the number of characters in third passwords is :
    echo $len3

    if test $len3 -ge 6 ; then         #checking the requirements
       if test $len3 -le 12 ; then
        echo "${a[2]}" | grep -q [0-9]
         if test $? -eq 0 ; then
               echo "${a[2]}" | grep -q [A-Z]
                    if test $? -eq 0 ; then
                        echo "${a[2]}" | grep -q [a-z]   
                          if test $? -eq 0 ; then
                           echo "${a[2]}" | grep '[$#@]'
                             if test $? -eq 0 ; then
                               echo "Password succeeded, see valid.txt"
                               echo ${a[2]} >> valid.txt
                               flag21=$true
                             else
                               echo "No special characters in your password"
                               flag21=$false  
                              fi
                       else
                           echo "No lowercase characters in you password"
                           flag21=$false
                       fi
                else
                   echo "No uppercase characters in your password" 
                   flag21=$false
                fi
         else
           echo "There are no numbers in you password" 
            flag21=$false  
         fi
     else  
        echo " password should be less than 12 characters"
        flag21=$false
        fi
    else
        echo "your password is not greater or equal to 6 characters"
        flag21=$false
    fi
else
   exit 1
fi 
