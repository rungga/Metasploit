#!/bin/sh

BUNDLE_GEMFILE="${BUNDLE_GEMFILE:-/usr/share/metasploit-framework/Gemfile}"
export BUNDLE_GEMFILE

if [ -e /opt/metasploit/apps/pro/ui/config/database.yml ] ; then
  MSF_DATABASE_CONFIG="${MSF_DATABASE_CONFIG:-/opt/metasploit/apps/pro/ui/config/database.yml}"
  export MSF_DATABASE_CONFIG
fi

# Bootstrap bundler
if ! echo "$GEM_PATH" | egrep -q "/usr/share/metasploit-framework/vendor/bundle" ; then
  GEM_PATH="${GEM_PATH:+"$GEM_PATH:"}/usr/share/metasploit-framework/vendor/bundle/ruby/2.1.0"
fi
export GEM_PATH

exec "/opt/metasploit/ruby/bin/ruby" "$@"
