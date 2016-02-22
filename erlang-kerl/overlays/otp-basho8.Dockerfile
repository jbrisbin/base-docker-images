RUN CFLAGS="-DOPENSSL_NO_EC=1" kerl build git git://github.com/basho/otp.git OTP_R16B02_basho8 R16B02-basho8
RUN kerl install R16B02-basho8 /usr/lib/erlang/R16B02-basho8
ENV PATH=/usr/lib/erlang/R16B02-basho8/bin:${PATH}

CMD . /usr/lib/erlang/R16B02-basho8/activate
