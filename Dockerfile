FROM smizy/r-jupyter:3.5.0-alpine

USER root

RUN set -x \
    && apk --no-cache add \
        build-base \
        R-dev \  
    && Rscript -e "install.packages('rstan')" \
    && Rscript -e "install.packages('ggmcmc')" \
    && echo 'options(repr.plot.width=5, repr.plot.height=4)' >> /etc/R/Rprofile.site \
    && echo 

USER jupyter
