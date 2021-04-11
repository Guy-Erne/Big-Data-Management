The .ipynb notebook first needs to be imported into Jupyter notebook.

Python packages needs to be installed -

	pyspark
	cassandra-driver

Jars needed -

	spark-cassandra-connector_2.11-2.0.12.jar (https://mvnrepository.com/artifact/com.datastax.spark/spark-cassandra-connector)
	jsr166e-1.1.0.jar (https://mvnrepository.com/artifact/com.twitter/jsr166e/1.1.0)

[Note] - The spark cassandra connector version must be compatible with the Spark version installed. You can check the version compatibilit here - 
	https://github.com/datastax/spark-cassandra-connector

Following configurations demands attention -

	- cassandra_host = The host ip on which cassandra is installed.
	- cassandra_keyspace = Specified as "assignment" which can be changed
	- file_path = Path of the datasets present in the system
	- 'spark.jars' = Path to the jars mentioned above.

The script consists of 5 sections each having single question given in the assignment. The problem is specified in the beginning of the section. The solution is right next to it with dataframe show statement to display the few rows of the dataframe before writing it into the cassandra table.

The cassandra keyspace and tables need not to be created. The script handles their creation in the beginning automatically and create the keyspace and required tables if they don't exist.
	
