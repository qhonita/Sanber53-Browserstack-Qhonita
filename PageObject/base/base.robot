*** Settings ***
Library            AppiumLibrary

*** Variables ***
${BROWSERSTACK_URL}                           http://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${BROWSERSTACK_USERNAME}                      qhonitaaniffebia_YKiqyS
${BROWSERSTACK_ACCESS_KEY}                    zCYXAYs3Gy4bS8zyjsxw
${BROWSERSTACK_PLATFORM_NAME}                 Android
${BROWSERSTACK_PLATFORM_VERSION}              13.0
${BROWSERSTACK_DEVICE_NAME}                   Samsung Galaxy S23
${BROWSERSTACK_APP}                           bs://54c449f6d085d36f7985d0d771434c1dabf07f65
${BROWSERSTACK_JOB_NAME}                      
${BROWSERSTACK_BUILD_NAME}                    

*** Keywords ***
Open Browserstack Application
    Open Application            remote_url=${BROWSERSTACK_URL}
    ...                         name=${BROWSERSTACK_JOB_NAME}
    ...                         build=${BROWSERSTACK_BUILD_NAME}
    ...                         platformName=${BROWSERSTACK_PLATFORM_NAME}
    ...                         platformVersion=${BROWSERSTACK_PLATFORM_VERSION}
    ...                         deviceName=${BROWSERSTACK_DEVICE_NAME}
    ...                         app=${BROWSERSTACK_APP}

Close Browserstack Application
    Close Application 