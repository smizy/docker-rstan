# docker-rstan

R rstan with Jupyter docker image based on alpine.

```
# run Jupyter Notebook container (see token in log)
docker run  -p 8888:8888 -v $(pwd):/code  -d smizy/r-rstan:2.17.3-alpine

# Or use PASSWORD environment variable instead of token
docker run  -p 8888:8888 -v $(pwd):/code -e PASSWORD=yoursecretpass -d smizy/r-rstan:2.17.3-alpine

# open browser
open http://$(docker-machine ip default):8888
```
