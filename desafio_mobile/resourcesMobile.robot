*** Settings ***
Documentation    Resoucers for mobile challange test
Library          AppiumLibrary

*** Variables ***
#Setup do device
${REMOTE_URL}            http://localhost:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      9.0
${DEVICE_NAME}           pixel
${APP_PACKAGE}           com.google.android.youtube
${APP_ACTIVITY}          com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}       UiAutomator2
              

#Locators
${BANNER_ICON}                 thumbnail
${BTN_SEARCH}                  accessibility_id=Search
${INPUT_SEARCH}                search_edit_text
${TITLE}                       com.google.android.youtube:id/channel_title
${CHANNEL_NAME}                channel_name
${PLAYLISTS}                   accessibility_id=Playlists
${CHOOSE_E3}                   //android.widget.TextView[@text='E3 2021'] 
${NAVIGATEUP_BTN}              accessibility_id=Navigate up
${HOME_BTN}                    accessibility_id=Home
${TRENDING_BTN}                accessibility_id=Trending
${SUBSCRIPTIONS_BTN}           accessibility_id=Subscriptions
${NOTIFICATION_BTN}            accessibility_id=Notifications
${ACCOUNT_BTN}                 accessibility_id=Account
${SINGIN_BTN}                  id=com.google.android.youtube:id/button
${SINGIN_BTN2}                 id=com.google.android.youtube:id/name  
${LOGINGOOGLE}                 xpath=//android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View
${LOGINGOOGLE2}                xpath=//android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText
${NEXTNAME_BTN}                xpath=//android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View
${PRESSPASSWORD}               xpath=//android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText
${NEXTPASS_BTN}                xpath=//android.view.View[4]/android.view.View/android.widget.Button
${AGREE_BTN}                   xpath=//android.view.View[4]/android.view.View/android.widget.Button
${BAKUP_NO}                    xpath=//android.widget.Switch
${AGREE_BTN2}                  xpath=//android.widget.LinearLayout/android.widget.Button     
${10THVIDEO}                   xpath=//android.view.ViewGroup[@content-desc="Sodium metal is soft and squishy - 38 seconds - Go to channel - NileRed Shorts - 2.4M views - 2 days ago - play video"]

*** Keywords ***
Open Youtube
    Open Application                             ${REMOTE_URL}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}
    ...                                          deviceName=${DEVICE_NAME}        appPackage=${APP_PACKAGE}       appActivity=${APP_ACTIVITY}
    ...                                          automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element             ${BANNER_ICON}    20


Search For
    [Arguments]                             ${content}
    Wait Until Page Contains Element        ${BTN_SEARCH}
    Click Element                           ${BTN_SEARCH}
    Wait Until Page Contains Element        ${INPUT_SEARCH}
    Input Text                              ${INPUT_SEARCH}        ${content}
    Press Keycode                           66
    Sleep                                   5s
    Wait Until Page Contains Element        ${CHANNEL_NAME}
    Click Element                           ${CHANNEL_NAME}

Select Playlist Menu
    Wait Until Page Contains Element        ${PLAYLISTS}
    Click Element                           ${PLAYLISTS}
    Wait Until Page Contains Element        ${CHOOSE_E3}
    Click Element                           ${CHOOSE_E3}
 
Navigate Menus
    Click Element                           ${HOME_BTN}
    Click Element                           ${TRENDING_BTN}
    Click Element                           ${SUBSCRIPTIONS_BTN}
    Click Element                           ${NOTIFICATION_BTN}

Navigate Trending
    Click Element                           ${TRENDING_BTN}
    Sleep    2S

Swipe until the tenth item on screen
    Sleep    2s
    Swipe    530    1060    550    110  
    Sleep    1s
    Swipe    530    1060    550    110  
    Sleep    1s
    Swipe    530    1060    550    110  
    Sleep    1s
    Swipe    530    1060    550    110  
    Sleep    1s
    Swipe    530    1060    550    110 
    Sleep    1s
    Swipe    530    1060    550    110 
    Sleep    1s

Select the tenth video
    Click Element                             ${10THVIDEO} 

Logging on the app with account
    Click Element                             ${ACCOUNT_BTN}                
    Wait Until Page Contains Element          ${SINGIN_BTN}   5s
    Click Element                             ${SINGIN_BTN}
    Sleep                                     5s              #SLEEP DEVIDO O ATRASO DE RESPOSTA DO EMULATOR
    Click Element                             ${SINGIN_BTN2}
    Sleep                                     25s
    Click Element                             ${LOGINGOOGLE}
    Sleep                                     3s
    Input Text                                ${LOGINGOOGLE2}     thiagotestemobile@gmail.com
    Hide Keyboard
    Click Element                             ${NEXTNAME_BTN}
    Sleep                                     10s
    Input Text                                ${PRESSPASSWORD}    @Testemobile01
    Hide Keyboard
    Click Element                             ${NEXTPASS_BTN}
    Sleep                                     10s
    Click Element                             ${AGREE_BTN}
    Sleep                                     12s
    Click Element                             ${BAKUP_NO}
    Swipe                                     500     1010    581    133
    Sleep                                     2s
    Click Element                             ${AGREE_BTN2}

