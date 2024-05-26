This is an educational project of group 'Hackers' for course "Databases" in University of Neuchatel.
The task was:
- choosing some valuable application where the database is needed to be built
- building "from scratch" of the MySQL database structure with min 14 classes
- adding to the database of some meaningful data
- making of min 6 complex SQL requests
- building of min 2 visualisations in Tableau desktop basing on this database

Our database purpose is handling of module 'ERP Sales' which can become an integral part of ERP system
of any enterprise that performs international wholesale. 

For lunching database and explore visualisations, you should perform following steps:
- Have MySQL server installed. (In our case, we locally install free version of MAMP (www.mamp.info) and then work with PHP My Admin to execute SQL requests)
- Execute SQL requests from files in the following order:
    1) Hackers_structure_bdd.sql
    2) Hackers_donnees.sql
    3) Hackers_requetes.sql
- Have Tableau Desktop installed (or other Tableau product that can read .twb files)
- Have MySQL ODBC connector installed (in our case it was pilot https://dev.mysql.com/downloads/connector/odbc/)
- open file Hackers_visualisations.twb and connect to the database (data for connection to the database: database name - db_ERP_Sales, all the rest ()localhost, port, login, password)- you should see in the MAMP interface)
- then you may enjoy and play with our dashboards 'Sales by country and buyers' and 'Sale prices by country and product'