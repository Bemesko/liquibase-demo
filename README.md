# Liquibase Demo

Getting Started: https://docs.liquibase.com/start/get-started/liquibase-sql.html

---

The time has come. This repository holds my learning and testing scenarios for Liquibase in order to determine if it's adequate for a specific use case I've come accross in my day job, and if so, to make me profficient enough in setting it up in order to do it in an enterprise context.

## My Testing Scenario

## Evaluation Criteria
Since I'm evaluating Liquibase against other similar tools I have come up with a couple of features to take into consideration. Hopefully I'll have a good idea about each of them after following this project through to the end.

### POC Complexity
*how difficult is it to build a working demo*
- Liquibase can be installed with `choco install liquibase` (sort of, package in choco registry is a bit outdated)
- Read more about strucuring a liquibase project (single/multi-schema, object/release-oriented)
- `liquibase.properties` is where you put the connection information
- `liquibase status` to check the connection to the database
- `liquibase update-sql` to do a dry-run of the changes

### Cost
*What I can and cannot do with the free plans*
- 

### SQL Server Compatibility
*Minimum SQL Server versions it works with*
- Very Java-esque, also, apparently the SQL syntax uses PL/SQL specifically?
  - Examples are mostly in PL/SQL but specific database syntax applies here, so no worries about that
- List of supported databases can be found here: https://docs.liquibase.com/start/tutorials/home.html
  - On Premises SQL Server is supported from versions 2014 to 2022
  - Also supports Azure SQL and Azure SQL Managed versions
- https://docs.liquibase.com/start/tutorials/ms-sql-server.html
- Example changeset doesn't work with SQL Server natively, but that is a good sign

### Impact on Developer Workflow
*How transparent will the transition be, from not knowing a new tool is being used in the pipeline to having to learn a brand new tool*

### Integration with Existing Databases
*How well can I take an existing, populated database and start using Liquibase?*

### Documentation
*How well is the project documented*
- There is a `liquibase init project` command that should exist according to the documentation, but doesn't
  - Had to reinstall. Free version of liquibase tells me to delete a .jar if I'm using the free version but the `init project` probably was in it

### Support
*Taking into consideration if the tool is still currently maintained and supported, and how much longer this support will last*

### Rollback
*How easy is it to rollback changes once they are commited*
- Relatively easy
- `liquibase history` to see all changes
- `liquibase rollbackCount X` to rollback X changes
- Rollbacks don't count as changes themselves
- Using tags before updating allows to create a tag, apply a changelog and rollback to the specific tag if something goes wrong
- There are a bunch of related and probably useful commands, take a look later

### Reuse of Existing SQL Scripts
*How well can I reuse my existing SQL scripts repository*

- Not that good since there seem to be some mandatory annotations for all sql scripts:
```sql
--changeset your.name:4
ALTER  TABLE  person  ADD  nickname  varchar(30);
```

### Maintenance of Integration
*How much has to be set up in order for CI/CD to work and how fragile is it*