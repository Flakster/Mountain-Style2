# Mountain Style

This is a website based on the [Lifestyle Articles design](https://www.notion.so/Lifestyle-articles-b82a5f10122b4cec924cd5d4a6cf7561) by [Nelson Sakwa](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version) which contents are dynamically loaded through a web application from a database server. The project is intended to be created from scratch using the knowledges and techniques acquired in the HTML & CSS, Ruby, SQL Databases and Ruby on Rails modules of the Microverse full stack developer program and is completed as the caspstone project of the Ruby on Rails module.

## Screenshots
![homepage](https://user-images.githubusercontent.com/53324035/84939513-10ba6e80-b0a4-11ea-9580-60b53c1cf8c9.png)
![categories-page](https://user-images.githubusercontent.com/53324035/84939582-2af44c80-b0a4-11ea-8d27-6c8609c21433.png)

## Built with

  * HTML5
  * CSS3
  * Font Awesome
  * Ruby on Rails
  * Postgresql
  * Ruby gems like devise, database_cleaner, rspec-rails
  
## Prerequisites

  * Ruby: 2.7.0
  * Rails: 5.2.4
  * Postgres: >=9.5

## Getting Started:

To get a local copy up and running follow these simple example steps:

1. Under the repository name, click the Clone or download green button.

![clone](https://user-images.githubusercontent.com/53324035/73660989-4451aa80-4667-11ea-8a89-176f89d6548a.png)

2. Copy the URL given by clicking the clipboard button

3. Open a terminal window in your local machine and change the current directory to the one you
   want the clone directory to be made.

4. Type  git clone and the paste the URL you previusly copied to the clipboard

5. Change the current directory to the newly created folder

6. Install the ruby gems by running:

```
bundle install
```

7. Setup database by running this:

```
  sudo -u postgres psql
  CREATE ROLE events WITH CREATEDB LOGIN PASSWORD 'pass123';
```
  (Exit postgres console with \q)
  
8. Make sure you have your yarn packages up to date. If not:
```
  yarn install --check-files
```
9. Populate the database by running:
```
   rails db:create
   rails db:migrate
```
10. Start your web server:
```
   rails server
```
11. Open your web browser and go to **localhost:3000**

## See a live demo [Here](https://mountain-blog2.herokuapp.com/)

## Watch a video with the presentation of the project [Here](https://www.loom.com/share/2e56e80772c34532a437fae034b712c3)


## Acknowledgments:

 * [Microverse](http://microverse.org)
 * [Nelson Sakwa](https://www.behance.net/sakwadesignstudio) for this awesome design
 
## Show your support
Give a ⭐️ if you like this project!
 
## License
This project is [MIT](https://github.com/Flakster/Mountain-Style2/blob/develop/LICENSE) Licensed

## Author
👤 Carlos Santamaría

* Twitter: [@Flakster ](https://twitter.com/Flakster )
* Github: [@Flakster](https://github.com/Flakster)
