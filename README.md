Description
===========

Docker Demo with nginx server pre-configured to load your pages.

Install a new debian container with installed nginx.

Nginx load the files of the website directly from `site` directory.


How To
------

First, build the image and then run the nginx server inside a docker container.

```bash
cd docker-nginx-demo
docker build -t nginx-example .
docker run -p 8081:80 -v=`pwd`/site:/var/www:rw -d nginx-example
```

Now, you can open your browser: `http://0.0.0.0:8081/` and see `Hello Worlds` message.
If you see the message, the demo worked well! :D
