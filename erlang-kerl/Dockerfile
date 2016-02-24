FROM jbrisbin/build-java:8
MAINTAINER Jon Brisbin <jon@jbrisbin.com>
RUN apt-get install -q -y libncurses5-dev autoconf openssl libssl-dev fop xsltproc
RUN curl -O https://raw.githubusercontent.com/spawngrid/kerl/master/kerl
RUN chmod a+x kerl && mv kerl /usr/local/bin/kerl
RUN CFLAGS="-DOPENSSL_NO_EC=1" KERL_CONFIGURE_OPTIONS="--enable-smp-support --without-odbc --enable-hipe --enable-m64-build" kerl build git git://github.com/basho/otp.git OTP_R16B02_basho8 R16B02-basho8
RUN kerl install R16B02-basho8 /usr/lib/erlang/R16B02-basho8
ENV PATH=/usr/lib/erlang/R16B02-basho8/bin:${PATH}

RUN echo "source /usr/lib/erlang/R16B02-basho8/activate" >> $HOME/.bashrc
