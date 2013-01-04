#! /bin/sh
#
# Postbank Online-Banking Login
#
# example usage:
#   if JSESSIONID=`PB_nutzername=... PB_kennwort=... login`; then
#     # do online banking stuff
#   fi
#
set -euf

nutzername="${PB_nutzername}"
kennwort="${PB_kennwort}"

url=https://banking.postbank.de/rai/login/wicket:interface/:0:login:loginForm::IFormSubmitListener::

{
  curl -v -k -sS -d jsDisabled=true -d @- $url 2>&1 |
  sed -n 's/^< Set-Cookie: JSESSIONID=\([^;]*\);.*/\1/p;T;q' |
  grep .
} <<EOF
nutzername=$nutzername&kennwort=$kennwort
EOF
