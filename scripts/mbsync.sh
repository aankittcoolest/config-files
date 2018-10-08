# Bash Family Shell Dictionary

PASSWORD=$0

#Install mbsync on ubuntu
sudo apt-get install libssl-dev
git clone git://git.code.sf.net/p/isync/isync ~/mbsync
cd ~/mbsync
./autogen.sh
./configure
make
sudo make install
cd ~
echo -n "$PASSWORD" > .mbsyncpass
gpg2 --output .mbsyncpass.gpg --symmetric .mbsyncpass
mv .mbsyncpass.gpg ~/.emacs.d
rm .mbsyncpass
echo "machine mail.gmail.com login aagrawal port 587 password $PASSWORD" > .authinfo
gpg2 --output ~/.authinfo.gpg --symmetric ~/.authinfo
rm .authinfo

cat > ~/.mbsyncrc <<EOL
IMAPAccount gmail
Host imap.gmail.com
User ilovetowriteprograms@gmail.com
PassCmd "gpg2 -q --for-your-eyes-only --no-tty -d ~/.emacs.d/.mbsyncpass.gpg"
Port 993
SSLType IMAPS
AuthMechs Login
CertificateFile /etc/ssl/certs/ca-certificates.crt

IMAPStore gmail-remote
Account gmail

MaildirStore gmail-local
Path ~/Maildir/gmail/
Inbox ~/Maildir/gmail/INBOX

Channel gmail
Master :gmail-remote:
Slave :gmail-local:
Patterns "Sent Items" "INBOX" "Deleted Items"
Create Slave
Sync All
Expunge Both
SyncState *

EOL


# mkdir -p Maildir/gmail
mbsync gmail

