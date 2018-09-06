#!/bin/sh
(ansiweather -l pune,IND -u metric -a off |awk '{print $6}')  > /home/adspl/pune.t
(ansiweather -l pune,IND -u metric -a off |awk '{print $6,$7}')  | sed -e 's/ //g' > /var/www/html/temp.txt
input="/home/adspl/pune.t"
limit="29"
while IFS= read -r pune
do
if [ "$pune" -gt "$limit" ];then
  echo "$pune is more than to $limit";
 sudo sed -i s/adspl2.jpg/frooti2.jpg/g /var/www/html/lko.css
 sudo sed -i s/9px/120px/g /var/www/html/lko.css
 sudo sed -i s/8px/100px/g /var/www/html/lko.css
else
echo "$pune is less than $limit";
 sudo sed -i s/frooti2.jpg/adspl2.jpg/g /var/www/html/lko.css
 sudo sed -i s/120px/9px/g /var/www/html/lko.css
sudo sed -i s/100px/8px/g /var/www/html/lko.css

fi


done < "$input"
