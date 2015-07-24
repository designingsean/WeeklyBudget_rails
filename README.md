WeeklyBudget
============

A simple app for tracking a weekly budget.

License
-------
[![Creative Commons by-sa](http://i.creativecommons.org/l/by-sa/3.0/us/88x31.png)](http://creativecommons.org/licenses/by-sa/3.0/us/deed.en_US)

WeeklyBudget by [Sean Ryan](http://designingsean.com) is licensed under a [Creative Commons Attribution-ShareAlike 3.0 United States License](http://creativecommons.org/licenses/by-sa/3.0/us/deed.en_US).

Database Structure
------------------
expenses table:

    CREATE TABLE `expenses` (
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
      `postDate` date NOT NULL,
      `amount` decimal(6,2) NOT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
