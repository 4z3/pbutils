# pbutils

Postbank Online-Banking Command-Line Interface

# quickstart

## login

Before you can do anything useful, you have to login and obtain a
JSESSIONID:

    PB_nutzername=... PB_kennwort=... ./login

## download Umsatzauskunft-CSV

Download the CSV-version of your Umsatzauskunft of the last 7 days
(excl. today):

    JSESSIONID=... ./csvHerunterladen -7days -1day

If you omit the optional arguments, then the currently allowed maximum of
100 days (including today) will be downloaded. This is the same as following
command:

    ./csvHerunterladen -99days today
