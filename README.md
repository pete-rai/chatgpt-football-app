# chatgpt-football-app

This is an entire football application written entirely by [ChatGPT](https://chat.openai.com/chat) via text prompts from the human project contributors.

We will include all the text prompts which were used here in this readme.

## Database

### Schema Definition

We asked:

```
Create an RDBMS schema definition file for storing data about the English Premier League. Include information about teams, players, matches and goal scorers. Include a section at the top for creating the schema. Create two database users. Grant the "admin" user read-write access to all tables. Grant the "web" user read-only access to all tables. Make sure the schema definition is compatible with MySQL and PostgresQL.
```

This resulted in the following output file:

*

With the following commentary:

```
The above SQL script will work with both MySQL and PostgreSQL.
It creates a new schema premier_league and four tables teams, players, matches, goal_scorers.
It also creates two new users, admin and web. The admin user is granted all privileges on all tables in premier_league schema, allowing them to perform all actions on the tables. The web user is granted SELECT privileges on all tables in premier_league schema, allowing them to only read the data but not make any changes.
Please note that for security reasons it is always a good practice to use a more secure way of storing the passwords rather than plain text.
```

### Test Data
