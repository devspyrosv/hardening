#!/bin/bash

source ./ubuntu.cfg

clear

if ! [ -x "$(which systemctl)" ]
  then
    echo "systemctl required. Exiting."
    exit
fi

for s in ./scripts/[0-9_]*; do
  [[ -e $s ]] || break
  source "$s"
done

f_pre
f_firewall
f_disablenet
f_disablemnt
f_disablemod
f_systemdconf
f_resolvedconf
f_logindconf
f_journalctl
f_timesyncd
f_fstab
f_prelink
f_aptget
f_hosts
f_issue
f_logindefs
f_sysctl
f_limitsconf
f_adduser
f_rootaccess
f_packages
f_apport
f_rkhunter
f_sshdconfig
f_password
f_cron
f_ctrlaltdel
f_auditd
f_aide
f_rhosts
f_users
f_lockroot
f_aptget_clean
f_suid
f_rc
f_path
f_aa_enforce
f_aide_post
f_aide_timer
f_checkreboot

echo
