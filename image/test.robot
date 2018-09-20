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
    Input Text  username  user12
    Input Text  emailid  user12@mail.com
    Click Element  login
    sleep  3s
    ${username}=  Get Text  xpath://html/body/table/tbody/tr[1]/td[1]
    ${emailid}=  Get Text  xpath://html/body/table/tbody/tr[1]/td[2]
    log to console  ${username}
    log to console  ${emailid}
    Should Be Equal  ${username}  user12
    Should Be Equal  ${emailid}  user12@mail.com
    Close Browser
    log to console  End Of validate Test Case!!!!


#/html/body/table/tbody/tr[1]/td[1]
#Third Test
#    log to console  Start Of Test Case!!!!
#    Selenium2Library.Open Browser  http://www.verizon.com  firefox
#    ${title}=  Get Title
#    log to console  ${title}
#    Should Be Equal  Verizon Fios & Custom TV | Internet, Cable & Phone  ${title}
#    log to console  End Of Test Case!!!!
