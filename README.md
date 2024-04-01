# YourMovieList 📽️

Rails project to create Watch lists.
The movies in the database are from the TMDB API.

![Capture d'écran 2024-04-01 152716](https://github.com/Jasufr/rails-watch-list/assets/125636129/1114b47e-e212-49d5-887d-a3e7282de8b8)
![Capture d'écran 2024-04-01 152914](https://github.com/Jasufr/rails-watch-list/assets/125636129/63ef83f5-e39e-4ec3-9fb7-9a3da5d02987)

<br>

## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```
