*** Variables ***

${BROWSER_CHROME}                      chrome
${BROWSER_HEADLESS}                    headlesschrome 

${CHROME_OPTIONS}             options=add_experimental_option('excludeSwitches', ['enable-logging'])
${CHORME_OPTIONS_WARNINGS}    add_experimental_option('excludeSwitches', ['enable-logging'])
${CHROME_OPTIONS_HEADLESS}    add_argument("--headless")
${CHROME_OPTIONS_WINDOW}      add_argument("--window-size\=1366,768")    