cp $2 autorun.brs
curl "http://$1/delete?filename=sd%2f/autorun.brs&delete=Delete"
curl -i -F filedata=@autorun.brs http://$1/upload.html?rp=sd
#
curl "http://$1/delete?filename=sd%2f/local/index.html&delete=Delete"
curl -i -F filedata="@local/index.html" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/logo.png&delete=Delete"
curl -i -F filedata="@local/logo.png" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/local.css&delete=Delete"
curl -i -F filedata="@local/local.css" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/jquery-1.9.1.min.js&delete=Delete"
curl -i -F filedata="@local/jquery-1.9.1.min.js" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/local.js&delete=Delete"
curl -i -F filedata="@local/local.js" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/waitlist.html&delete=Delete"
curl -i -F filedata="@local/waitlist.html" "http://$1/upload.html?rp=sd/local"
#
#curl "http://$1/action.html?reboot=Reboot"