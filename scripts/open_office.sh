# wget http://sourceforge.net/projects/openofficeorg.mirror/files/4.1.2/binaries/en-US/Apache_OpenOffice_4.1.2_Linux_x86_install-rpm_en-US.tar.gz/download -O Apache_OpenOffice_4.1.2_Linux_x86_install-rpm_en-US.tar.gz

#Remove already installed packages
yum remove -y openoffice* libreoffice*

#Install the software
# mv Apache_OpenOffice_4.1.2_Linux_x86_install-rpm_en-US.tar.gz /tmp/
cd /tmp/
# tar -xvf Apache_OpenOffice_4.1.2_Linux_x86_install*
cd en-US/RPMS/
rpm -Uvih *rpm

#Create desktop integration
# cd desktop-integration
# rpm -Uvih *rpm

#Remove open-office
# rpm -qa | egrep "^ooo|openoffice" | xargs sudo rpm -e


