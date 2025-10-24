-- Top 10 songs with the highest combined 
-- performance across Spotify, YouTube, and TikTok
SELECT 
  "Track", "Artist",
  "Spotify Streams", "YouTube Views"
FROM songs
WHERE 
  "Spotify Streams" IS NOT NULL 
  AND "YouTube Views" IS NOT NULL 
ORDER BY 
  ("Spotify Streams" + "YouTube Views") DESC
LIMIT 10;

-- Top 10 songs by Spotify Popularity 
SELECT "Track", "Artist", "Spotify Popularity"
FROM songs
WHERE "Spotify Popularity" IS NOT NULL
ORDER BY "Spotify Popularity" DESC
LIMIT 10;

-- Top 10 songs by Track Score
SELECT "Track", "Artist", "Track Score"
FROM songs
ORDER BY "Track Score" DESC
LIMIT 10;

-- Top 20 songs with most TikTok Likes and their Spotify Streams
SELECT 
  "Track", "Artist",
  "TikTok Likes", "Spotify Streams"
FROM songs
WHERE 
  "TikTok Likes" IS NOT NULL 
  AND "Spotify Streams" IS NOT NULL
ORDER BY "TikTok Likes" DESC
LIMIT 20;

-- Top 10 songs most used on TikTok
SELECT "Track", "Artist", "TikTok Views"
FROM songs
WHERE "TikTok Views" IS NOT NULL
ORDER BY "TikTok Views" DESC
LIMIT 10;

--  Count of explicit vs. non-explicit songs
SELECT 
  "Explicit Track",
  COUNT(*) AS song_count
FROM songs
GROUP BY "Explicit Track";

-- Year with the most song releases (since 2000)
SELECT 
  strftime('%Y', "Release Date") AS release_year,
  COUNT(*) AS song_count
FROM songs
WHERE "Release Date" >= '2000-01-01'
GROUP BY release_year
ORDER BY song_count DESC
LIMIT 1;

-- Number of songs missing data on all three main platforms
SELECT 
  ISRC,
  "Track",
  "Artist"
FROM songs
WHERE 
  "Spotify Streams" IS NULL 
  AND "YouTube Views" IS NULL 
  AND "TikTok Views" IS NULL;
  
-- Number of songs per artist
SELECT 
  "Artist", 
  COUNT("Track") AS song_count
FROM songs
WHERE "Artist" IS NOT NULL
GROUP BY "Artist"
ORDER BY song_count DESC;

-- List of explicit songs and their artists
SELECT "Track", "Artist"
FROM songs
WHERE "Explicit Track" = 1;