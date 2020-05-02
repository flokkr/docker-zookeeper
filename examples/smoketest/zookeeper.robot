

*** Settings ***
Documentation    Test suite to smoketest Zookeeper settings
Library          OperatingSystem
Library          String

*** Keywords
Execute
    [arguments]                     ${command}
    ${rc}                           ${output} =                 Run And Return Rc And Output           ${command}
    Log                             ${output}
    Should Be Equal As Integers     ${rc}                       0
    [return]                        ${output}

*** Test Cases ***

Create Zookeeper key
  ${random} =     Generate Random String  5  [NUMBERS]
                  Execute        /opt/zookeeper/bin/zkCli.sh create /${random}-one data1
  ${output}       Execute        /opt/zookeeper/bin/zkCli.sh get /${random}-one
  Should contain  ${output}    data1
