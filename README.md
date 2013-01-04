# pbutils

[Postbank Online-Banking](https://banking.postbank.de/rai/login)
Command-Line Interface

# quickstart guide

This quickstart guide shows how pbutils could be used from some shell.
Any `...` has to be replaced with the obvious content.

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
