# SuperBestBot

This is the SBFVGS version of GitHub's bot, hubot.

### Testing Hubot Locally

#### Prerequisites

- [node](https://nodejs.org/)
- [yarn](https://yarnpkg.com/)
- [postgresql](https://www.postgresql.org)

#### Setup

1. Clone the repo
1. cd into the project directory
1. run `yarn install`
1. run `cp bin/hubot-local.dist bin/hubot-local`

#### Database Setup

SuperBestBot uses a PostgreSQL database as its "brain". Run the following commands to get it set up:

1. `psql postgres -U YOUR_USERNAME`
2. `CREATE DATABASE superbestbot;`
3. `GRANT ALL PRIVILEGES ON DATABASE superbestbot TO YOUR_USERNAME;`
4. `\connect superbestbot`
5. `CREATE TABLE hubot (id CHARACTER VARYING(1024) NOT NULL, storage TEXT, CONSTRAINT hubot_pkey PRIMARY KEY (id));`
6. `INSERT INTO hubot VALUES(1, NULL)`
7. Make sure you update `bin/hubot-local` with the correct db url

#### Running locally

1. run `bin/hubot-local -n superbestbot -l !`

You'll see some start up output and a prompt.

    superbestbot>

Then you can interact with SuperBestBot by typing `superbestbot help` (or just `!help`).

    superbestbot> superbestbot help

### Scripting

Take a look at the scripts in the `./scripts` folder for examples.
Delete any scripts you think are useless or boring.  Add whatever functionality you
want hubot to have. Read up on what you can do with hubot in the [Scripting Guide](https://github.com/github/hubot/blob/master/docs/scripting.md).
