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
${LOGINGOOGLE}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View
${NEXTNAME_BTN}                id=identifierNext
${PRESSPASSWORD}               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.view.View
${NEXTPASS_BTN}                id=passwordNext
${SKIP_BTN}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[6]/android.view.View/android.widget.Button
        

*** Keywords ***
Open Youtube
    Open Application                             ${REMOTE_URL}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}
    ...                                          deviceName=${DEVICE_NAME}        appPackage=${APP_PACKAGE}       appActivity=${APP_ACTIVITY}
    ...                                          automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element             ${BANNER_ICON}    20

Logging on the app with account
    Click Element                             ${ACCOUNT_BTN}                
    Wait Until Page Contains Element          ${SINGIN_BTN}   80ms
    Click Element                             ${SINGIN_BTN}
    Sleep                                     5s
    # Wait Until Page Contains Element          ${SINGIN_BTN2}  100ms
    Click Element                             ${SINGIN_BTN2}
    Sleep                                     15s
    Click Element                             ${LOGINGOOGLE}
    Input Text                                ${LOGINGOOGLE}   thiagotestemobile@gmail.com
    Click Element                             ${NEXTNAME_BTN_BTN}
    Wait Until Page Contains Element          ${PRESSPASSWORD}   10s
    Click Element                             ${PRESSPASSWORD}
    Input Text                                ${PRESSPASSWORD}   @Testemobile01
    Wait Until Page Contains Element          ${SKIP_BTN}    10s
    Click Element                             ${SKIP_BTN}

# Search For
#     [Arguments]                             ${content}
#     Wait Until Page Contains Element        ${BTN_SEARCH}
#     Click Element                           ${BTN_SEARCH}
#     Wait Until Page Contains Element        ${INPUT_SEARCH}
#     Input Text                              ${INPUT_SEARCH}        ${content}
#     Press Keycode                           66
#     Sleep                                   5s
#     Wait Until Page Contains Element        ${CHANNEL_NAME}
#     Click Element                           ${CHANNEL_NAME}

# Select Playlist Menu
#     Wait Until Page Contains Element        ${PLAYLISTS}
#     Click Element                           ${PLAYLISTS}
#     Wait Until Page Contains Element        ${CHOOSE_E3}
#     Click Element                           ${CHOOSE_E3}
 
# Navigate Menus
#     Click Element                           ${HOME_BTN}
#     Click Element                           ${TRENDING_BTN}
#     Click Element                           ${SUBSCRIPTIONS_BTN}
#     Click Element                           ${NOTIFICATION_BTN}

