# README

This is an example Rails 6 application for demonstrating the usage of <a href="https://github.com/ozone4real/pubsueque" >Pubsueque</a>.
Documentation of the library can be found in its <a href="https://github.com/ozone4real/pubsueque/blob/master/README.md" >Read me</a>

# Usage

- Clone this repository

```
  $ git clone https://github.com/ozone4real/pubsueque-usage.git
```

- cd into the directory and run:

```
  bundle install
```

- Export your Google Cloud configuration file to your environment

```
   $ export GOOGLE_APPLICATION_CREDENTIALS=/path/to/config/file
```

Start the rails server
```
 $ rails server
```

- On another shell tab, export the Google Cloud configuration file to the environment then start the background job server

```
  $ pubsueque
```

For demonstration, the app contains the following:

- A route: `/jobs` which enqueues 3 different jobs in the background and renders a view. So you can load the route in your browser on localhost:3000/jobs

  Jobs enqueued in the action:
  - JobsJob: delayed 30 seconds, IO bound
  - UserJob: to be executed immediately, CPU bound
  - ExceptionJob - raises an exception


- A config file that configures the server in config/initializers/pubsueque.rb. Info on how to configure the server can be found in the library's  [Read me](https://github.com/ozone4real/pubsueque/blob/master/README.md)

- ActiveJob configured to use `pubsueque` as its adapter in config/environments/development.rb and config/environments/productiob.rb

- Gemfile has the `pubsueque` gem






