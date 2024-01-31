FROM justb4/jmeter:latest

# Copy JMeter script to the container
COPY your_script.jmx /scripts/

WORKDIR /scripts

CMD ["sh", "-c", "jmeter -n -t your_script.jmx -l results.jtl"]
