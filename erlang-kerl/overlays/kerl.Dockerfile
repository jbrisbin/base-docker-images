RUN apt-get install -q -y libncurses5-dev autoconf openssl libssl-dev fop xsltproc
RUN curl -O https://raw.githubusercontent.com/spawngrid/kerl/master/kerl
RUN chmod a+x kerl && mv kerl /usr/local/bin/kerl
