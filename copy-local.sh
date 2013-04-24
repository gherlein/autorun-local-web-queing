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
curl "http://$1/delete?filename=sd%2f/local/waitlist.js&delete=Delete"
curl -i -F filedata="@local/waitlist.js" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/del.png&delete=Delete"
curl -i -F filedata="@local/del.png" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/add.png&delete=Delete"
curl -i -F filedata="@local/add.png" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/edit.png&delete=Delete"
curl -i -F filedata="@local/edit.png" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/apprise-1.5.full.js&delete=Delete"
curl -i -F filedata="@local/apprise-1.5.full.js" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/apprise.css&delete=Delete"
curl -i -F filedata="@local/apprise.css" "http://$1/upload.html?rp=sd/local"
#
curl "http://$1/delete?filename=sd%2f/local/BrightSign_logo.png&delete=Delete"
curl -i -F filedata="@local/BrightSign_logo.png" "http://$1/upload.html?rp=sd/local"
echo
echo
echo
