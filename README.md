# Taylor Lake Estates

Community website for the Taylor Lake Estates lake association: a view from the dock that follows the real time of day and weather, lake status, weather, moon phases and a fishing calendar, catch log, photo gallery, neighbor board, problem reports, and lakefront dues.

- `index.html` is the whole site. It talks to the Supabase project `taylor-lake-estates` using the publishable key.
- `Dockerfile` and `nginx.conf` serve it with nginx on port 8080.
- `fly.toml` is the Fly.io app config.

## Deploy

```
fly apps create taylor-lake-estates --org robert-whitaker1728-gmail-com
fly deploy
```

After the first deploy, set the Site URL in Supabase (Authentication, URL Configuration) to the fly.dev address so sign-in links return to the site.

## Notes

- Weather comes from Open-Meteo (no API key) for Troy, Illinois 62294. It is free for non-commercial use.
- Add `?phase=dawn|day|dusk|night` and `?wx=rain|snow|cloud` to the URL to preview the scene at other times.
- Gallery photos are resized in the browser and stored in the private Supabase bucket `photos`.
