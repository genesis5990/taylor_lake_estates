# Taylor Lake Estates

Community website for the Taylor Lake Estates lake association: lake status, stewardship guide, catch log, problem reports, and lakefront dues.

- `index.html` is the whole site. It talks to the Supabase project `taylor-lake-estates` using the publishable key.
- `Dockerfile` and `nginx.conf` serve it with nginx on port 8080.
- `fly.toml` is the Fly.io app config.

## Deploy

```
fly apps create taylor-lake-estates --org robert-whitaker1728-gmail-com
fly deploy
```

After the first deploy, set the Site URL in Supabase (Authentication, URL Configuration) to the fly.dev address so sign-in links return to the site.
