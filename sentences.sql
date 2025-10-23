-- THIS IS A PLACEHOLDER OF 10 SQL SENTENCES 

-- 1. Top 10 canciones con más streams en Spotify
SELECT "Track", "Artist", "Spotify Streams"
FROM songs
ORDER BY "Spotify Streams" DESC
LIMIT 10;

-- 2. Top 10 artistas con más vistas totales en TikTok (suma por artista)
SELECT "Artist", SUM("TikTok Views") AS total_tiktok_views
FROM songs
WHERE "TikTok Views" IS NOT NULL
GROUP BY "Artist"
ORDER BY total_tiktok_views DESC
LIMIT 10;

-- 3. Canciones explícitas vs no explícitas: ¿cuántas hay de cada tipo?
SELECT "Explicit Track", COUNT(*) AS count
FROM songs
GROUP BY "Explicit Track";

-- 4. Correlación visual: las 20 canciones con más likes en TikTok y sus streams en Spotify
SELECT "Track", "Artist", "TikTok Likes", "Spotify Streams"
FROM songs
WHERE "TikTok Likes" IS NOT NULL AND "Spotify Streams" IS NOT NULL
ORDER BY "TikTok Likes" DESC
LIMIT 20;

-- 5. Artistas con presencia en las tres plataformas (al menos 1 millón en cada una)
SELECT "Artist", 
       "Spotify Streams", 
       "YouTube Views", 
       "TikTok Views"
FROM songs
WHERE "Spotify Streams" >= 1000000
  AND "YouTube Views" >= 1000000
  AND "TikTok Views" >= 1000000
ORDER BY ("Spotify Streams" + "YouTube Views" + "TikTok Views") DESC
LIMIT 10;

-- 6. Año con más lanzamientos (desde 2000 en adelante)
SELECT strftime('%Y', "Release Date") AS year, COUNT(*) AS song_count
FROM songs
WHERE "Release Date" >= '2000-01-01'
GROUP BY year
ORDER BY song_count DESC
LIMIT 1;

-- 7. Top 5 canciones más "balanceadas": alto rendimiento en Spotify y TikTok
SELECT "Track", "Artist", 
       "Spotify Streams", "TikTok Views",
       ("Spotify Streams" * "TikTok Views") AS balance_score
FROM songs
WHERE "Spotify Streams" IS NOT NULL 
  AND "TikTok Views" IS NOT NULL
ORDER BY balance_score DESC
LIMIT 5;

-- 8. ¿Cuántas canciones no tienen datos en TikTok?
SELECT COUNT(*) AS missing_tiktok
FROM songs
WHERE "TikTok Views" IS NULL;

-- 9. Artistas con más de 5 canciones en el dataset
SELECT "Artist", COUNT("Track") AS song_count
FROM songs
GROUP BY "Artist"
HAVING song_count > 5
ORDER BY song_count DESC;

-- 10. Promedio de popularidad en Spotify por canción explícita vs no explícita
SELECT "Explicit Track", AVG("Spotify Popularity") AS avg_popularity
FROM songs
WHERE "Spotify Popularity" IS NOT NULL
GROUP BY "Explicit Track";