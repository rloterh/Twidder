# Twidder - RoR Social Media App (Microverse Ruby on Rails Capstone Project)

![](https://img.shields.io/badge/microverse-007bff)

## Description
Twidder is a redesign of Twitter social media app. Users can share their ongoing fun activity by making 'twids' on this platform. To 'twid' is an abbreviation for 'tell what I'm doing', coined from the word 'tweet'(from twitter). Users can compose a twid of current fun activity, and other users on the platform can reply/ comment on that twid, like or unlike that twid. A user can follow other users and the vice versa. A user's profile displays all Following activities of the user and all twids composed by the user. A user equally can view the profile of other users and observe sample followers of other users, however the current user is not displayed in the recommended list. Follow this link for a video demonstration of Twidder: [video demonstration](https://www.loom.com/share/9d3ee523d0e54ea8a7c9796dd8b701d2/).


## Live Demo Link
[Twidder Live demo](https://quiet-waters-99580.herokuapp.com/).

For quick test login to the app live demo, use one of the following credential:
*Usernames:* 
 **_vanhzy_**
 **_trendy22_**


## App Screenshots
| |
|:-------------------------:|
| <img width="800" alt="Sign up/ Login page" src="https://user-images.githubusercontent.com/12745474/113044778-9881ed00-918d-11eb-934b-4c677e2d4941.png"> <p align="center">Sign up | Log in page <p>|
| <img width="800" alt="Homepage" src="https://user-images.githubusercontent.com/12745474/112554018-7b2fd600-8dbd-11eb-8f0f-b03505da9218.png"> <p align="center">Twid Timeline page </p>|
| <img width="800" alt="User profile" src="https://user-images.githubusercontent.com/12745474/112909015-17b8e780-90e0-11eb-9cab-c1d94c157c66.png"> <p align="center"> User profile page</p>|

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

## Setup Cloudinary image storage

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

[![GitHub](https://img.shields.io/badge/-GitHub-000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/rloterh) <br>
[![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/robert-loterh/) <br>
[![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:rloterh@gmail.com) <br>
[![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/RLoterh)

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