Basic {sparklyr} Extension
================

## Example

### Local Cluster

``` r
library(sparkhello)
library(sparklyr)

sc <- spark_connect(master = "local")

hello(sc)

spark_disconnect(sc)
```

### Databricks

``` r
library(sparkhello)
library(sparklyr)

sc <- spark_connect(method = "databricks")

hello(sc)

spark_disconnect(sc)
```

## Package Compilation Notes

### Install Spark Locally

``` r
sparklyr::spark_install(version = "3.5.3", hadoop_version = "3")
# C:/Users/xxx/AppData/Local/spark/spark-3.5.3-bin-hadoop3/
```

### Compile Jar

``` r
sparklyr::compile_package_jars(jar_name = "sparkhello-3.5.3-2.13.15.jar")
```
