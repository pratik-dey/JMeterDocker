FROM justb4/jmeter:latest

# Copy JMeter test script to the container
COPY Petstore.jmx /jmeter/
COPY LoginDetailsJmeter.csv /jmeter/
COPY SearchData.csv /jmeter/

# Specify the entry point
ENTRYPOINT ["jmeter", "-n", "-t", "/jmeter/Petstore.jmx", "-l", "/jmeter/results/results1.jtl"]
