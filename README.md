# hubot-nest

A hubot script for nest thermostats

See [`src/nest.coffee`](src/nest.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-nest --save`

Then add **hubot-nest** to your `external-scripts.json`:

```json
["hubot-nest"]
```

## Sample Interaction

```
user1>> hubot nest temp
Hubot>> Nest says it's 20.4ºC.
user1>> hubot nest status
Hubot>> Nest is currently set to 22ºC.
```
