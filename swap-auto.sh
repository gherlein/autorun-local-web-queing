cp $2 autorun.brs
curl "http://$1/delete?filename=sd%2f/autorun.brs&delete=Delete"
curl -i -F filedata=@autorun.brs http://$1/upload.html?rp=sd
#
curl "http://$1/action.html?reboot=Reboot"
echo
echo
echo
