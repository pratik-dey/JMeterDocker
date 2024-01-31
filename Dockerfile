FROM justb4/jmeter:latest

# Copy JMeter test script to the container
COPY Petstore.jmx /jmeter/

# Specify the entry point
ENTRYPOINT ["jmeter", "-n", "-t", "/jmeter/Petstore.jmx", "-l", "/jmeter/results.jtl"]
