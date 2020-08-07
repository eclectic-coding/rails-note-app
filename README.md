# Rails Note Application

![](notes.jpg)

[![GitHub license](https://img.shields.io/github/license/eclectic-coding/rails-note-app)](https://github.com/eclectic-coding/rails-note-app/blob/main/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/eclectic-coding/rails-note-app)](https://github.com/eclectic-coding/rails-note-app/issues)
[![Twitter](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2FEclecticCoding)](https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2Feclectic-coding%2Frails-note-app) 

Note App allows users to create an account, then the user can create notes to edit, delete, and update as they see fit, via a user dashboard in which they can manage a list of personal notes.

Live Demo: at [Heroku](https://cs-note-app.herokuapp.com/)

## Features 

### Login 
The My Notes App has a robust user authentication feature including:
- New account registration
- Activation emails to verify the authenticity of the request
- Session tokens created for authorization 
- Session cookie used to give the user the ability to be remembered on the site or not
- Password resets request via email authorization
- User Profile edit/updates  

### Notes 
The notes section includes the following features:
- The note editor is a [Trix-Editor](https://trix-editor.org/) using [Rails ActionText](https://edgeguides.rubyonrails.org/action_text_overview.html)
- The user can create notes which are private and secure from other users
- The user can create, edit, update, and delete their own notes. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

If you plan on deploying to Heroku or an other live service, you will need an account at Sendgrid. You can set up the API_KEY in Rails Credentials with the key name `sendgrid_api_key`. 

### Installing

Clone this repository to your computer:
```
git clone git@github.com:eclectic-coding/rails-note-app.git
```
Navigate to your newly created directory and run bundle install. Then set up the database:
```
rails db:migrate && rails db:seed
```
Install the gems: `bundle install`

Install the javascript packages: `yarn`, or `npm install`. 

The stylesheets are configured in webpacker, so to start the server, in one terminal: `./bin/webpack-dev-server`. Then in a second terminal window: `rails server`

## Running the tests
The user model has a robust testing suite using the Rails default `minitest`. To run the test: `rails test`, or you can automate the test by using guard that is preinstalled: `bundle exec guard`. 

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details about  the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Chuck Smith** -  [Eclectic Coding](https://github.com/eclectic-coding)

See also the list of [contributors](https://github.com/eclectic-coding/this-repo/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

