# Twidder - RoR Social Media App (Microverse Ruby on Rail Capstone Project)

![](https://img.shields.io/badge/microverse-007bff)

## Introduction
Twidder is a redesign of Twitter social media app. Users can share their ongoing fun activity by making 'twids' on this platform. To 'twid' is an abbreviation for 'tell what I'm doing', coined from the word 'tweet'(from twitter). Users can compose a twid of current fun activity, and other users on the platform can reply/ comment on that twid, like or unlike that twid. A user can follow other users and the vice versa. A user's her profile displays all Following activities of the user and all twids composed by the user. A user equally can view the profile of other users and observe sample followers of other users, however the current user is not displayed in the recommended list. Follow this link for a video demonstration of Twidder: [video demo](https://www.loom.com/share/95c5f0f349f4455683d62c0436218323/).


## Live Demo Link
[Twidder Live demo](http://quiet-waters-99580.herokuapp.com/).

For quick test login to the demo app, use one of the following credential:
*Usernames:* 
 **_vanhzy_**
 **_trendy22_**


## App Screenshots
| |
|:-------------------------:|
| <img width="800" alt="Sign up/ Login page" src="https://user-images.githubusercontent.com/12745474/112553355-41120480-8dbc-11eb-93ee-0fbb6afa0b6c.png"> <p align="center">Sign up | Log in page <p>|
| <img width="800" alt="Homepage" src="https://user-images.githubusercontent.com/12745474/112554018-7b2fd600-8dbd-11eb-8f0f-b03505da9218.png"> <p align="center">Twid Timeline page </p>|
| <img width="800" alt="User profile" src="https://user-images.githubusercontent.com/12745474/112554546-6a339480-8dbe-11eb-846b-74a73d4c2c54.png"> <p align="center"> User profile page</p>|
| <img width="800" alt="User profile" src="https://user-images.githubusercontent.com/12745474/112554684-a9fa7c00-8dbe-11eb-9599-33f86130ad0b.png"><p align="center">User profile page</p>|


## Twidder Entity Relationship
| |
|:-------------------------:|
| <img width="800" alt="Home Page" src="https://user-images.githubusercontent.com/12745474/112556267-c21fca80-8dc1-11eb-853f-15220c3dc30a.png"> <p align="center">Twidder ERD<p>|
  
 <br>


## Setup Instructions & Getting Started

- [Clone](https://github.com/rloterh/Twidder.git) this project
- Install dependencies using the command **_bundle install_**
- Run the command **_rails db:create_** to create database
- Run the command **_rails db:migrate_** to configure database schema
- Run the command **_rails s_** to start the Rails server
- In your browser, navigate to  **_http://localhost:3000_**

## Setup Cloudinary image storage & Getting Started

- Visit [Cloudinary](https://cloudinary.com/) this project
- Sign up to create a cloudinary account
- Copy the generated api credentials:<code>cloud_name,api_key, and api_secret</code> for development, test and production
- Create a cloudinary.yml file in <code>config</code> directory and paste the api keys


## Built Mainly With

- Ruby v2.7.2
- Ruby on Rails v6.1.3
- Postgres: 1.2.3
- Bootstrap 5.0 Beta
- JQuery 3.4.1


## Author
👤 **Robert Loterh**

- Github: [@githubhandle](https://github.com/rloterh)
- Twitter: [@twitterhandle](https://twitter.com/RLoterh )
- Linkedin: [linkedin](https://www.linkedin.com/in/robert-loterh)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/rloterh/Twidder/issues/new).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Design idea by [Gregoire Vella](https://www.behance.net/gallery/14286087/Twitter-Redesign-of-UI-details/) on Behance 
- Boilerplate template by [adminkit.io](https://adminkit.io/)
- Sample images used from [Unsplash](https://unsplash.com//) and [Pixabay](https://pixabay.com/)
- Project specification designed by [Microverse](https://www.microverse.org/)

## 📝 License

This project is [MIT](lic.url) licensed.