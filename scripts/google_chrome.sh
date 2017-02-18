yum update google-chrome-stable
touch /etc/yum.repos.d/google-chrome.repo

cat > /etc/yum.repos.d/google-chrome.repo << EOF1
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF1

yum install -y google-chrome-stable
