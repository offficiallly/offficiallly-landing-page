docker stop offficiallly-com
docker rm offficiallly-com

docker run --name offficiallly-com \
  -p 8642 \
  --restart unless-stopped \
  -e VIRTUAL_HOST=offficiallly.com,www.offficiallly.com \
  -e LETSENCRYPT_HOST=offficiallly.com,www.offficiallly.com \
  -e LETSENCRYPT_EMAIL=offficiallly@sameteam.co \
  -v `pwd`/offficiallly.com/html:/usr/share/nginx/html:ro -d nginx
