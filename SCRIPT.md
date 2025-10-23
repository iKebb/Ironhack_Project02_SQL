## Improved English Version

My dataset, *“Most Streamed Spotify Songs 2024,”* goes beyond Spotify streams—it captures how songs and artists perform across multiple multimedia platforms. I chose it to answer three key questions:

First: **Which artists have the highest overall popularity?**  
Second: **How does TikTok engagement correlate with success on traditional streaming platforms like Spotify and YouTube?**  
And third: **Which artists demonstrate the most effective multi-platform presence—and why?**

The data-cleaning process was straightforward. Although the original dataset was largely complete, I noticed many null values in certain columns—understandable, since not every song has metrics available on every platform. So I decided to focus exclusively on Spotify, YouTube, and TikTok.

I created a subset with only the relevant columns: metrics from these three platforms and the ISRC, which I used as a unique song identifier. I converted all metrics to numeric types and kept the rest as strings or categories. Then I dropped irrelevant columns, set the ISRC as the index, and exported the cleaned data to a new CSV file.

With the data ready, I moved to exploratory data analysis, following the order of my three questions.

**First question: Who are the top artists and songs on Spotify?**  
The basic answer is simple, but I wanted to go deeper. I compared the top 10 artists across each platform and found both overlap and notable differences. Next, I visualized the 10 most popular songs globally and their distribution of streams and views per platform. A key insight emerged: TikTok leads in view volume—even when a song doesn’t top streaming charts. Finally, looking at trends over time, we see a clear surge in popular songs starting in 2020, aligning with the pandemic and the rise of social audio discovery.

**Second question: How does TikTok engagement correlate with streaming success?**  
Here, I faced a methodological choice: Pearson or Spearman correlation? I chose Spearman—it handles outliers better and fits the ordinal nature of TikTok metrics.

Instead of computing a single global correlation—which would mask important shifts—I segmented the analysis by year, from 2019 to 2024. The results are revealing:

- In **2019**, before TikTok’s rise, correlation was nearly zero (ρ ≈ 0.09).  
- Between **2020 and 2022**, correlation peaked—especially with Spotify (ρ ≈ 0.38)—confirming TikTok’s role as a music discovery engine.  
- I also found that TikTok “likes”—a signal of active user endorsement—are stronger predictors of streaming success than raw post volume.  
- However, in **2023 and 2024**, correlation began to decline. This suggests the ecosystem has matured: virality alone no longer guarantees sustained success.

A scatter plot reinforces this: while many songs rack up millions of TikTok uses, only a subset translates that into meaningful streams.

**Third question: Who demonstrates the most effective multi-platform strategy?**  
Here, I’m not looking for the biggest name on one platform, but for artists who maintain consistent performance across several. A comparative bar chart shows that many TikTok-viral hits barely register on Spotify or YouTube. In contrast, artists like Maroon 5 stand out for strong streaming presence despite limited TikTok activity.

A final scatter plot confirms this: the highest-performing songs—shown in lighter colors—are not at the extremes, but in the region where both platforms show high values. True multi-platform success isn’t about being a “TikTok hit” or a “Spotify staple”—it’s about balancing both.

**In conclusion:** The digital music landscape has evolved. Today, sustained success depends less on isolated virality and more on a coherent strategy that connects discovery, engagement, and retention across multiple platforms.