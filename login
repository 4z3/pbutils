#! /bin/sh
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
