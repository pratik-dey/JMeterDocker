FROM justb4/jmeter:latest

# Copy JMeter test script to the container
COPY Petstore.jmx /scripts/

WORKDIR /scripts

CMD ["sh" ,"-c" , "jmeter -n -t Petstore.jmx -l results.jtl"]
