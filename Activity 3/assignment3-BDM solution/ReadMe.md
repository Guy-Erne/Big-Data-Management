The submission directory contains two .ipynb notebooks. One is stream generator to generate files in the streaming directory and other is the assignment solution. Both .ipynb notebook need to be imported into Jupyter notebook.

- Python packages needs to be installed -

	pyspark
	cassandra-driver

- Jars needed -

	spark-cassandra-connector_2.11-2.0.12.jar (https://mvnrepository.com/artifact/com.datastax.spark/spark-cassandra-connector)
	jsr166e-1.1.0.jar (https://mvnrepository.com/artifact/com.twitter/jsr166e/1.1.0)

[Note] - The spark cassandra connector version must be compatible with the Spark version installed. You can check the version compatibility here - 
	https://github.com/datastax/spark-cassandra-connector

- Following configurations demands attention -

	- cassandra_host = The host ip on which cassandra is installed.
	- cassandra_keyspace = Specified as "assignment3" which can be changed
	- file_path = Path of the datasets present in the system
	- 'spark.jars' = Path to the jars mentioned above.

- The script generator script generates files to be streamed as the input by spark streaming. The files are named as - countdata{X}.csv - where X is the numeric index. It creates chunks of size 10 records and save them as separate files. It also filter outs the test sites.

- These files will be consumed by the spark streaming in assignment3.ipynb. Each computation is defined in separate sections and code for saving the batch is written in the same code block.

- Finally, the stream is started by invoking ssc.start() and then ssc.awaitTerminationOrTimeout() method is invoked by providing a timeout of 300 seconds which is equivalent to 5 minutes.

- The cassandra keyspace and tables need not to be created. The script handles their creation in the beginning automatically and create the keyspace and required tables if they don't exist. Table names are q1, q2, q3 and q4 corresponding to each computation.
	
