Feature: Examples Test

Scenario: Embedded Examples
 Then it should have  ['searchKey', 'searchResult', 'number'] columns in "<args[0]>"
Examples:

 | searchKey  | searchResult                | number |
 | QMetry QAF | QMetry Automation Framework | 5      |
 | null val   |                             | 5      |
 | null val   |                             |        |
 | null val   | null                        | null   |
 | empty      | ""                          | 0      |
 | space      | " "                         | 5      |
 | empty      | null                        | null   |
 | !          | how to use exclamation mark!| 9      |
 | @          | best e-mail services        | 6      |
 | #          | trending hashtag            | 5      |
 | %          | employment rate             | 12     |
 | &          | Johnson & Johnson           | 7      |
 | *          | emergency numbers           | 6      |
 | (          | mathematical precedence     | 8      |
 | )          | adjective clauses           | 6      |
 | -          | null                        | null   |


 Scenario: Embedded Examples step call
 Then it can have "<age>" status "<married>" of "<name>"
Examples:

 | description     | name     | married | age  |
 | go right        | uname    | true    | 5    |
 | go right        | "uname  "| false   | 0    |
 | check null      | null     | null    | null |
 | check null      | "null"   | "null"  |"null"|
 | check empty     |          |         |      |
 | number name     | "12345"  | true    | 0    |
 # idade invalida negativa
 | invalid age     | "Bob     |false	|-10   |
 # idade invalida string
 | invalid age string | "Carl"	  |true	    |"abc" |
 # estado civil invalido string
 | invalid married string | "Carl" | "true" | 35   |
 
 @dataFile:resources/testdata2.txt
 Scenario: External test data step call
 Then it can have "<age>" status "<married>" of "<name>"
 
 #empty or null not allowed for Primitive types step argument
 Scenario: Embedded Examples step call primptive
 And it should have <age> status "<married>" of "<name>"
Examples:

 | description     | name     | married | age  |
 | go right        | uname    | true    | 5    |
 | go right        | "uname  "| false   | 0    |
 | check null      | null     | null    | null |
 | check null      | "null"   | "null"  |"null"|
 | check empty     |          |         |      |
 | number name     | "12345"  | true    | 0    |
 # idade invalida negativa
 | invalid age     | "Bob     |false	|-10   |
 # idade invalida string
 | invalid age string | "Carl"	  |true	    |"abc" |
 # estado civil invalido string
 | invalid married string | "Carl" | "true" | 35   |

 
  
 
 
