# Sample Weave Module

This module can be used as a template of how to create a module with DW files and then reference it from Studio.


## Notes

1. Always use namespaces for all your mappings or modules (in this example org/mule/commons)
2. Remember to change the groupId with your Anypoint Organization Id and the same on the distributionManagement part
### In studio  

In your pom.xml add this 
```xml
<dependency>
     <groupId>142ebe1a-6e25-4670-9220-0cdce791f1b8</groupId>
     <artifactId>string-utils-weave-module</artifactId>
     <version>1.0.0-SNAPSHOT</version>
</dependency>
```
```xml
 <repository>
    <id>exchange</id>
    <name>Exchange</name>
    <url>https://maven.anypoint.mulesoft.com/api/v1/organizations/142ebe1a-6e25-4670-9220-0cdce791f1b8/maven</url>
</repository>
```

And then you can reference it 
```weave
%dw 2.0
import * from org::mule::commons::StringUtils
output application/json
---
times("Hello", 2)
```