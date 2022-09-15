# Budget

 Budget is a mobile web application where you can manage your budget: you have a list of transactions associated with a category so that you can see how much money you spent and on what. <br/>

> ![Screenshot from 2022-09-15 16-59-36](https://user-images.githubusercontent.com/56429354/190423638-7e3591bc-9c7b-4130-a379-6b24ba807261.png)

  


## Live demo

- Visit: https://ancient-dusk-50067.herokuapp.com/
 

## Built With

- Ruby on Rails
- PostgreSQL
- devise - authentication
- cancancan - authorization

### Getting Started

To get a local copy up and running follow these simple steps:

### Prerequisites

- Ruby ruby-3.1.2 installed
- PostgreSQL DBMS running

### Setup

- Open your terminal and navigate to the folder you would like to save the project.type the following commands to your terminal 



```bash
git clone hhttps://github.com/Gedewon/Budget-app.git
```


```bash
cd Budget-app && bundle install
```


***before running the project we have to setup our databses***
<hr>

1. Set databased name and password in [database.yml](https://github.com/Gedewon/Budget-app/blob/dev/config/database.yml)

2. Or Set `.env` file contains environment variables needed to get the Database up and running.

- `.env.local` file you can use as a guide to configuring your own. Type the following commands into the terminal (or Git Bash, if using Windows) to create your `.env` file:

```bash
cp .env.local .env
```
```bash
rails secret
```

- Set your  variables at .env
```env
    DATABASE_HOST
    DATABASE_USER
    DATABASE_PASSWORD
```

### Then bootup your database by running the following command 

```shell
rails db:reset

```

### Run application

```rb
rails server

```

- Open your web browser at [http://127.0.0.1:3000/](http://127.0.0.1:3000/)

### Testing

```
rspec

```

## Authors

👤 **Gedewon Haile**

- GitHub: [@gedewon](https://github.com/gedewon)
- Twitter: [@gedewon](https://twitter.com/gedi_haile)
- LinkedIn: [@gedewon](https://linkedin.com/in/gedewon)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Gedewon/Budget-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## 📝 License

This project is [MIT](https://github.com/Gedewon/Budget-app/blob/dev/LICENSE) licensed.
