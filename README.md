
<!-- README.md is generated from README.Rmd. Please edit that file -->

# reclues

<img src="./man/figures/1.PNG" width = 300px />

The **`reclues`** package mimics the SQL Murder Mystery done by
[Northwestern’s Knight’s
Lab](https://github.com/NUKnightLab/sql-mysteries) - this uses SQL to
solve the mystery. A brief of the task at hand is given in the
[walkthrough](http://mystery.knightlab.com/walkthrough.html). Want to
play the SQL version of the game online? [Here it
is](https://sql-murder-mystery.datasette.io/sql-murder-mystery)\!

<!-- badges: start -->

<!-- badges: end -->

The goal of reclues is to provide the datasets from the SQL Challenge
within R, and some cheatsheet tidyverse commands for getting you on your
way to solving the mystery.

# The datasets

The datasets should be available as soon as you install the package.
These are the datasets available and the data contained within them.

|         Table Name         | Fields                                                                                 |        Rows |
| :------------------------: | :------------------------------------------------------------------------------------- | ----------: |
|   *crime\_scene\_report*   | date, type, description, city                                                          |  1,228 rows |
|     *drivers\_license*     | id, age, height, eye\_color, hair\_color, gender, plate\_number, car\_make, car\_model | 10,007 rows |
| *facebook\_event\_checkin* | person\_id, event\_id, event\_name, date                                               | 20,011 rows |
| *get\_fit\_now\_check\_in* | membership\_id, check\_in\_date, check\_in\_time, check\_out\_time                     |  2,703 rows |
|  *get\_fit\_now\_member*   | id, person\_id, name, membership\_start\_date, membership\_status                      |    184 rows |
|          *income*          | ssn, annual\_income                                                                    |  7,514 rows |
|        *interview*         | person\_id, transcript                                                                 |  4,991 rows |
|          *person*          | id, name, license\_id, address\_number, address\_street\_name, ssn                     | 10,011 rows |

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sciencificity/reclues")
```

## Some useful functions to view the data

``` r
library(reclues)
library(dplyr)
## basic example code
head(crime_scene_report)
#> # A tibble: 6 x 4
#>       date type    description                                      city   
#>      <int> <chr>   <chr>                                            <chr>  
#> 1 20180115 robbery A Man Dressed as Spider-Man Is on a Robbery Spr~ NYC    
#> 2 20180115 murder  Life? Dont talk to me about life.                Albany 
#> 3 20180115 murder  Mama, I killed a man, put a gun against his hea~ Reno   
#> 4 20180215 murder  REDACTED REDACTED REDACTED                       SQL Ci~
#> 5 20180215 murder  Someone killed the guard! He took an arrow to t~ SQL Ci~
#> 6 20180115 theft   Big Bully stole my lunch money!                  Chicago
glimpse(crime_scene_report)
#> Observations: 1,228
#> Variables: 4
#> $ date        <int> 20180115, 20180115, 20180115, 20180215, 20180215, ...
#> $ type        <chr> "robbery", "murder", "murder", "murder", "murder",...
#> $ description <chr> "A Man Dressed as Spider-Man Is on a Robbery Spree...
#> $ city        <chr> "NYC", "Albany", "Reno", "SQL City", "SQL City", "...
```

## Some useful functions to explore the data

### Distinct

Let’s say we wanted to see the different **types** of criminal activity
the reports document …. The `type` field in the crime scene reports
table seems to contain this info. We will use the `distinct` function
from `dplyr`.

SQL Equivalent is:

> `SELECT DISTINCT(type) FROM crime_scene_report`

``` r
library(magrittr)

# the magrittr package contains the pipe %>% function
# Take the crime scene report data AND THEN
# give me the distinct values for the `type` variable.
crime_scene_report %>% 
    distinct(type)
#> # A tibble: 9 x 1
#>   type     
#>   <chr>    
#> 1 robbery  
#> 2 murder   
#> 3 theft    
#> 4 fraud    
#> 5 arson    
#> 6 bribery  
#> 7 assault  
#> 8 smuggling
#> 9 blackmail
```

### Count Distinct

Let’s say we were wondering which city has the highest number of crimes
…

SQL Equivalent is:

> SELECT city, count(city) AS n  
> FROM crime\_scene\_report  
> GROUP BY city  
> ORDER BY n DESC

``` r
crime_scene_report %>% 
    count(city) %>% 
    arrange(desc(n))
#> # A tibble: 377 x 2
#>    city             n
#>    <chr>        <int>
#>  1 Murfreesboro     9
#>  2 SQL City         9
#>  3 Duluth           8
#>  4 Evansville       8
#>  5 Jersey City      8
#>  6 Toledo           8
#>  7 Dallas           7
#>  8 Hollywood        7
#>  9 Kissimmee        7
#> 10 Lancaster        7
#> # ... with 367 more rows
```

Hhmmm looks like SQL City is quite notorious for crime\!

### Like

Let’s say we’re interested in finding the people that start with a
**Z**. We will use the `stringr` package for this. The `str_detect()`
function can be used in conjunction with regular expressions - here we
looking for names that start with **`(^)`** **Z**.

SQL Equivalent is:

> SELECT \* FROM person  
> WHERE name LIKE ‘Z%’

``` r
library(stringr)
person %>% filter(stringr::str_detect(name, "^Z"))
#> # A tibble: 64 x 6
#>       id name          license_id address_number address_street_na~     ssn
#>    <int> <chr>              <int>          <int> <chr>                <int>
#>  1 10452 Zachary Ange~     702210           3713 Currant Ave         9.66e8
#>  2 10797 Zack Penteco~     150590           1839 Rushwood St         5.33e8
#>  3 11264 Zada Laban        808317           1663 Testa Circle        9.83e8
#>  4 14182 Zack Karwoski     964918           1546 W Middleton Way     4.82e8
#>  5 14930 Zella Pietrz~     440964           3680 Sandgate Circle     4.43e8
#>  6 20771 Zenaida Deir      778230           2853 Hartspring Rd       8.80e8
#>  7 21255 Zachery Vento     649717           3238 Breillat Dr         9.31e8
#>  8 22393 Zandra Dashn~     385198           2940 Yara Dr             8.43e8
#>  9 22636 Zachary Ybar~     768359            785 Franklin Ave        2.85e8
#> 10 22906 Zachariah Be~     989596           1008 Skyland St          6.57e8
#> # ... with 54 more rows
```
