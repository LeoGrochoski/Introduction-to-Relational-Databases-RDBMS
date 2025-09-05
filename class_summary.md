# Summary: Introduction to Relational Databases (RDBMS)

## Module 1: Relational Database Concepts:

Fundamental Concepts of Relational Databases

## Data Structure:
### Structured Data

Structured data is highly organized and follows a predefined format, typically organized in tables with rows and columns. It follows a strict schema and rigid structure ensuring consistency and easy retrieval. Examples of structured data include Excel spreadsheets, organizing data in rows and columns, assigning each data point a specific cell address. SQL databases that allow storing data in predefined tables and columns, online forms collect customer information storing each data; name, address, and credit card number in designated fields.

### Unstructured Data

Unstructured data lacks a specific format or organization. It does not conform to any predefined rules or sequence, making it difficult to process and analyze using traditional methods. Examples of unstructured data include text files containing free-form text documents without a predefined structure. Media files include images, audio, and video. Web pages and main content such as text, images, and multimedia are often unstructured, despite potentially structured elements like HTML tags. Social media content encompasses posts, tweets, and other updates with mixed text, images, and links.

### Semi-structured Data

This type of data has some organizational properties but does not follow a strict tabular structure. It often employs hierarchical structure or tags to organize information, providing a balance between flexibility and structure. Examples of semi-structured data include JSON files containing arrays and objects using specific tags or keys to mark different data elements. XML documents define data structure using tags, attributes, and schema. Emails have structured fields; to, from, subject, but unstructured message bodies.

Delimited Text Files	Tables	Markup Language Files
Lines of variables separated by a character	Include data in rows and columns	Files like XML and JSON
Examples: CSV, TSV	Creates CSV and XLSX	
Relational Databases
Relational databases were initially developed for OLTP systems, to store data from day-to-day business activities such as customer transactions, human resources, and workflows.

OLAP systems include various storage solutions, such as relational and non-relational databases, data warehouses, data lakes, and big data storage. The system focuses on querying and analyzing large datasets to extract meaningful insights.

Non-Relational Databases
Offer ease in handling various types of unstructured data, some examples of non-relational databases are MongoDB, Cassandra, and Redis.

#### MongoDB

It is a document-oriented database, suitable for storing semi-structured and unstructured data.

## Entity-Relationship Diagram (ERD)

- It is a graphical representation of entities and relationships.

- It is a modeling technique used in database design.

- It is the structure of the database system.

- Key Components:

    - Entities

        - Represent real-world objects or things.

        - Usually represented as rectangles.

    - Attributes

        - Represent characteristics or properties of an entity.

        - Usually represented as ovals.

        - Attributes become columns in a table.

    - Relationships

        - Illustrate how entities relate to each other.

        - Usually represented by connecting lines.

    **Best Practices**

    Primary key designation.

    Data validation.

    Value standardization.

    Use of views.

    Concurrency control.

### Introducing Relational Database Products
#### Common Deployment Topologies

Deployment topology is the arrangement or configuration of hardware, software, and network components in a system or application deployment.

#### Single-Tier Architecture

Deployment of all components on a single server.

Operate within the same environment.

#### Client-Server Architecture

- Also called two-tier architecture.

- Divides the application into two logical divisions:

    - Client Layer: Responsible for the user interface.

    - Server Layer: Responsible for managing the application logic.

- The remote server hosts the database.

- The user accesses it through the client system, usually via a web page or local application.

- Server and application operate on separate layers.

- Application connects using a language-dependent interface.

- Interface communicates with the server through the API.

- DBMS Layers

    - Data Access layer.

    - Database Engine layer.

    - Database Storage layer.

- Communication at the Database Interface:

    - Database Interface:

        - Communicates via Database Client or API.

    - Data Access Layer:

        - Server includes various client interfaces.

        - Examples: JDBC, ODBC, CLP, Vendor-specific Interface.

    - Database Server Engine:

        - Compiles queries.

        - Retrieves, Processes data and returns results.

Three-Tier Architecture

- Introduces an intermediate layer between server and client.

- Forms a three-tier architecture.

- Concerns:

    - Security:

        - Prevents unauthorized access to data or modifications.

    - Performance:

        - Avoids overloading the server with unnecessary traffic.

    - Maintenance:

        - Avoids making changes to the data except by administrators.

- Application logic and business logic on different physical layers.

- Presentation layer:

    - Serves as the UI.

    - Accessible through various platforms.

- Application Server:

    - Client connection through the internet.

    - Encapsulates the application through business logic.

    - Communicates with the database server through API/Driver.

### Cloud Deployment

- Involves hosting the database in a cloud.

- Offers many advantages inherited from cloud-based services.

- Eliminates the need to download database software locally.

- Easier for users to access with the internet.

- Involves communication within the cloud environment.

    - Perfect for:

    - Development.

    - Testing.

    - Large-scale production environments.

### Distributed Architecture

#### Types of Database Architecture:

Shared Disk Architecture:

Multiple database servers processing workloads simultaneously.

The server establishes a connection with shared storage.

High-speed communication between servers.

Advantages:

- Ensures effective workload distribution.

- Ensures scalability as demand grows.

-  clients during server failures.

- Maintains high availability.

- Shared Nothing Architecture:

- Uses replication or partitioning techniques.

- Allows distribution of client workloads.

- Promotes parallel processing.

- Ensures fault tolerance by redirecting clients.

- Combined and Specialized Architecture.

#### ORM (Object Relational Mapping)

Tools in software development that facilitate communication between programming language code and relational databases.

Timeline of Relational Databases

**1960** - IBM Sabre (American Airlines).

**1970** - Edgar F. Codd defines relational databases, Peter P. Chen proposes the entity-relationship model, Ingres (Univ. of Cali. Berkeley) System R (IBM).

**1980** - Structured Query Language (SQL), DB2 (IBM), Distributed relational database architecture.

**1990** - Client and Personal productivity tools, Oracle, IBM DB2, and Microsoft SQL Server.

**2000** - Open Source Databases like MySQL and PostgreSQL.

**2010** - Cloud-based Databases.

### Delve into Advanced Relational Model Concepts

#### Functional Dependencies (FDs)

FDs are fundamental building blocks for ensuring data integrity and consistency in relational databases. They represent a specific type of relationship between attributes in a relation, where the value of one attribute (determinant) uniquely determines the value of another attribute (dependent).

In simpler terms, if you know the value of the determinant, you can always identify the exact value of the dependent attribute.

Here are some key points about FDs:
Notation: FDs are typically written as X -> Y, where X is the determinant and Y is the dependent attribute.

**Examples:**

In the "Car Dealership" database,

VIN -> Model represents an FD. Knowing the VIN uniquely determines the car model.

CustomerID -> (CustomerName, PhoneNumber) is another FD, as the customer ID uniquely identifies their name and phone number.

**Properties:**

Reflexivity: X -> X (each attribute determines itself).
Transitivity: If X -> Y and Y -> Z, then X -> Z (dependencies can be chained).
Closure: The minimal set of FDs that implies all other FDs in a relation.

Maintaining FDs helps avoid inconsistencies and data duplication. Violation of an FD can lead to inaccurate data and unreliable queries.

**Multi-Valued Dependencies (MVDs)**

MVDs are more complex than FDs. With an MVD, an attribute, the determinant, determines a set of possible values for another attribute, the dependent. In other words, knowing the value of the determinant restricts the potential values that the dependent attribute can contain.

**Here are some key points about MVDs:**
Notation: MVDs are written as X -> {Y1, Y2,…, Yn}, where X is the determinant and Y1, Y2,…, Yn are the possible values for the dependent attribute.

Example: In the "Car Dealership" schema, a potential MVD could be Model -> {Color1, Color2, …, Corn}, where the car model determines the set of available color options.

Properties: MVDs have similar properties to FDs, such as reflexivity and transitivity. However, they do not have the closure property.

Identifying MVDs helps understand complex relationships between attributes and ensures data consistency within these relationships. Violations of MVDs can lead to invalid data entries.

**Candidate Keys**

Candidate keys uniquely identify each row in a relation. They represent a minimal set of attributes that collectively guarantee no duplicates in the table. In other words, if you know the values of the candidate key, you can identify a specific row and only that row. Keys are unique in that table.

Here are some key properties of candidate keys:
Uniqueness: each combination of values in the candidate key must uniquely identify a distinct row.
Minimality: No proper subset of the candidate key should be able to uniquely identify a row. This ensures that the candidate key is the smallest possible set of attributes needed for unique identification.
Performance: Having well-defined candidate keys significantly improves query performance. Queries looking for specific rows can utilize indexing on the candidate key for faster data retrieval. It also helps maintain data integrity by avoiding duplicate entries.
Multiple keys: a relation can have multiple candidate keys, meaning that different minimal sets of attributes can uniquely identify each row.

## Module 2: Using Relational Databases

### Lesson: Creating Tables and Loading Data

#### Types of SQL Queries - DDL

DDL (Data Definition Language): Defines, changes, or drops data.

**CREATE**

```
sql
CREATE TABLE <table_name> (
<column_name1> <data_type1> <other_parameters>,
<column_name2> <data_type2>,
<column_name3> <data_type3> 
);
```

**ALTER**

```
sql
ALTER TABLE <table_name> ADD COLUMN <column_name>;
```

**TRUNCATE**

```
sql
TRUNCATE TABLE <table_name> IMMEDIATE;
```

**DROP**

```
sql
DROP TABLE <table_name>;
DML (Data Manipulation Language): Reads and modifies data (rows), CRUD operations.
```



### Tools Used for Data Movement

Multiple methods and file types are supported.

Categories of data movement tools:

**Backup and restore:**

- Creates a file of the entire database.

- Restoration duplicates the database precisely.

- Preserves all database objects and their data:

    - Schemas, tables, views.

    - Data types in use, functions, procedures.

    - Constraints, triggers, security, relationships, and data.

- Import or export:

- Saves a table to a file.

- Available in various interfaces.

- Various formats:

    - DEL:

        - Uses special characters as delimiters.

        - Used to store data.

    - ASC:

        - Imports and stores application data.

        - Generates flat text files with aligned columns.

    - PC/IFX:

        - The preferred method for data exchange.

        - Represents a description of the database structure.

    - JSON:

        - Popular in Web services.

- Loading:

    - Loading utility:

    - Alternative to using import.

    - Faster than the import feature.

    - Does not perform many checks.

    - Bypasses database logging.

    - Best option for loading large datasets.

    - Initiated from command line / API / Visual tools.

### Lesson: Designing Keys, Indexes, and Constraints

#### RDBMS contains many objects.

Allows:

    - Security management.

    - Maintenance.

    - Accessibility.

Provides an overview of the structure of an RDBMS.

Lesson: (Optional) Db2 Labs

## Module 3: MySQL and PostgreSQL

Lesson: MySQL

Lesson: PostgreSQL

Lesson: Module 3 Summary and Assessment

## Module 4: Final Project and Assessment

Lesson: ERDs and Final Project

Lesson: Glossary and Final Assessment

Lesson: Course Conclusion