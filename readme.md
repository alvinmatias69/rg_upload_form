# Research Group Upload Form
A simple form upload for Database Lab Research Group.

## Getting Started
To get a copy of this form just simply clone this repository
```sh
$ git clone https://github.com/alvinmatias69/rg_upload_form.git
```

### Prerequisites
This application required latest nodeJS version to be installed in your system to run
* Download NodeJS ([nodeJS](https://nodejs.org/en/ "NodeJS Homepage"))
* NodeJS installation guide ([installation guide](https://www.sitepoint.com/beginners-guide-node-package-manager/ "NodeJS installation guide"))

### Installing
Open the applications folder using terminal then install the required library
```sh
$ cd rg_upload_form
$ npm install
```

Create a database and import researchGroup.sql . 

Open .env.example file using text manager and change it according to your own environment variables, then rename it to .env
```
HOST=localhost			//your database host
USERNAME=root			//your database username
PASSWORD=aman4869		//your database password
DATABASE=rekruitasi_rg	//your database name
```
## Starting
Simply go to your form folder location using terminal and start script using npm.
```sh
$ cd rg_upload_form
$ npm start
```

**Matias Alvin (2017)**