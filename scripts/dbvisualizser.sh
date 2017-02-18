#Download the rpm file of DB Visualizer
wget https://www.dbvis.com/product_download/dbvis-9.5.6/media/dbvis_linux_9_5_6.rpm -P /tmp/

#Install the software
cd /tmp/
rpm -Uvh dbvis_linux_9_5_6.rpm

#Create a destop shortcut
cp /opt/DbVisualizer/dbvis.desktop ~/Desktop/

