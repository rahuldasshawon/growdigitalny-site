# Must-use plugins for growdigitalny.com

Upload to `public_html/wp-content/mu-plugins/` (hPanel → Files → File Manager; create the `mu-plugins`
folder if it's missing). WordPress loads these automatically. **Undo:** delete the file, or rename it to
end in `.off`.

| File | What it does | Installed |
|---|---|---|
| `gdny-feed-cache-30min.php` | RSS feeds (the `/tech-news/` headlines) refresh every 30 minutes instead of 12 hours. If LiteSpeed Cache is turned on later, set the cache time for `/tech-news/` to 30 minutes or less. | pending (Rahul uploads) |
