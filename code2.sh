    echo "enter you first password"
    read password1

    len="${#password1}"

    if test $len -ge 6 ; then
       if test $len -le 12 ; then
        echo "$password1" | grep -q [0-9]
         if test $? -eq 0 ; then
               echo "$password1" | grep -q [A-Z]
                    if test $? -eq 0 ; then
                        echo "$password1" | grep -q [a-z]   
                          if test $? -eq 0 ; then
                           echo "$password1" | grep '[$#@]'
                             if test $? -eq 0 ; then
                               echo "Password succeeded, see valid.txt"
                               echo $password1 >> valid.txt
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
    
 echo "enter you first password"
    read password2

    len2="${#password2}"

    if test $len2 -ge 6 ; then
       if test $len2 -le 12 ; then
        echo "$password2" | grep -q [0-9]
         if test $? -eq 0 ; then
               echo "$password2" | grep -q [A-Z]
                    if test $? -eq 0 ; then
                        echo "$password2" | grep -q [a-z]   
                          if test $? -eq 0 ; then
                           echo "$password2" | grep '[$#@]'
                             if test $? -eq 0 ; then
                               echo "Password succeeded, see valid.txt"
                               echo $password2 >> valid.txt
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
