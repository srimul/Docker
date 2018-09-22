*** Settings ***
Library  Selenium2Library
Library  XvfbRobot


*** Test cases ***
Check Page Title
    log to console  Start Of Test Case!!!!
    Selenium2Library.Open Browser  http://169.55.86.55:32287  firefox
    ${title}=  Get Title
    ${url}=  Get Location
    Should Be Equal  DjangoWebApplication   ${title}
    log to console  ${title}
    log to console  ${url}
    log to console  End Of Test Case!!!!
    Close Browser

Check For Username and emailid Element
    log to console  Start Of Test Case!!!!
    Selenium2Library.Open Browser  http://169.55.86.55:32287  firefox
    Page Should Contain Element  username
    Page Should Contain Element  emailid
    Page Should Contain Element  login
    ${title}=  Get Title
    Close Browser
    log to console  End of Check For Username and emailid testcase

Validate the last enter username and emailid
    log to console  Start Of validate Test Case!!!!
    Selenium2Library.Open Browser  http://169.55.86.55:32287  firefox
    #Change user12 to other name if you want to test it for a different name. Use the same name in  Line #40 and #41 also
    Input Text  username  user412
    Input Text  emailid  user412@mail.com
    Click Element  login
    sleep  3s
    ${username}=  Get Text  xpath://html/body/table/tbody/tr[1]/td[1]
    ${emailid}=  Get Text  xpath://html/body/table/tbody/tr[1]/td[2]
    log to console  ${username}
    log to console  ${emailid}
    Should Be Equal  ${username}  user412
    Should Be Equal  ${emailid}  user412@mail.com
    Close Browser
    log to console  End Of validate Test Case!!!!

Check Page Title Negative
    log to console  Start Of Test Case!!!!
    Selenium2Library.Open Browser  http://169.55.86.55:32287  firefox
    ${title}=  Get Title
    ${url}=  Get Location
    Should Not Be Equal  DjangoWebApplication12   ${title}
    log to console  End Of Test Case!!!!
    Close Browser


Check For Username and emailid Element Negative
    log to console  Start Of Test Case!!!!
    Selenium2Library.Open Browser  http://169.55.86.55:32287  firefox
    Page Should Not Contain Element  username1
    Page Should Not Contain Element  emailid1
    Page Should Not Contain Element  login1
    ${title}=  Get Title
    Close Browser
    log to console  End of Check For Username and emailid testcase


#/html/body/table/tbody/tr[1]/td[1]
#Third Test
#    log to console  Start Of Test Case!!!!
#    Selenium2Library.Open Browser  http://www.verizon.com  firefox
#    ${title}=  Get Title
#    log to console  ${title}
#    Should Be Equal  Verizon Fios & Custom TV | Internet, Cable & Phone  ${title}
#    log to console  End Of Test Case!!!!
