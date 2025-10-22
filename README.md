# Spotify 2024 Music Streaming Analysis

## Project Overview

This project analyzes the most streamed songs on Spotify in 2024, examining cross-platform performance across Spotify, YouTube, and TikTok. The analysis explores artist popularity, platform correlations, and evolutionary patterns in music streaming behavior.

## Dataset Information

**Source**: [Most Streamed Spotify Songs 2024 - Kaggle Dataset](https://www.kaggle.com/datasets/nelgiriyewithana/most-streamed-spotify-songs-2024)

### Original Dataset Structure
- **Rows**: 4,600 tracks
- **Columns**: 29 metrics across multiple platforms
- **Time Period**: 2024 streaming data with historical release dates

### Key Features After Cleaning

| Category | Metrics Included |
|----------|------------------|
| **Core Metadata** | Track, Artist, Release Date, Track Score, Explicit Track |
| **Spotify Metrics** | Streams, Playlist Count, Playlist Reach, Popularity |
| **YouTube Metrics** | Views, Likes, Playlist Reach |
| **TikTok Metrics** | Views, Likes, Posts |

## Data Cleaning Process

### Initial Assessment
- Loaded dataset with `encoding='latin-1'` to handle special characters
- Identified missing values across platforms
- Converted comma-separated numerical strings to proper numeric types
- Set ISRC (International Standard Recording Code) as unique index

### Data Quality Improvements
- Removed 24 duplicate rows based on streaming metrics
- Converted `Release Date` to datetime format
- Standardized `Explicit Track` as boolean type
- Dropped irrelevant columns for focused analysis

### Final Cleaned Dataset
- **Rows**: ~4,500 unique tracks
- **Columns**: 14 key metrics
- **Data Types**: Properly formatted numerical and categorical data

## Analysis Framework

### Tools & Libraries
```python
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
```

### Visualization Settings
- Seaborn style: `whitegrid` with poster context
- Figure size: 12x6 inches
- Retina display formatting for high-quality plots

## Key Research Questions

1. **Top Performers**: Which artists and songs dominate each platform?
2. **Platform Correlations**: How does TikTok engagement relate to traditional streaming success?
3. **Multi-Platform Strategy**: Which artists excel across all platforms?
4. **Temporal Patterns**: How have streaming patterns evolved over time?

## Analytical Approach

### Univariate Analysis
- Identification of top 10 artists and songs per platform
- Horizontal bar charts for visual comparison
- Platform-specific performance metrics

### Bivariate Analysis
- **Spearman Correlation**: Used due to non-normal, skewed distribution of streaming data
- Platform relationship analysis (TikTok vs Spotify/YouTube)
- Temporal analysis from 2020-2024 to track evolution

## Key Findings

### Top Artists (Spotify Streams)
1. **The Weeknd** – 4,281,469,000 streams
2. **xSyborg** – 4,261,328,000 streams  
3. **Ed Sheeran** – 3,909,459,000 streams
4. **xSyborg** – 3,888,356,000 streams
5. **Lewis Capaldi** – 3,427,499,000 streams

### Platform Correlations
- **Moderate TikTok-Spotify relationship** (ρ ≈ 0.32–0.38)
- **Weaker TikTok-YouTube correlation** (ρ ≈ 0.19–0.20)
- **Declining correlation trend** from 2020 (ρ = 0.418) to 2024 (ρ = 0.239)
- **2024 shift**: TikTok Posts becoming more significant than Likes

### Temporal Insights
- **2020-2021**: Peak TikTok-Spotify correlation during TikTok's music discovery rise
- **2022-2023**: Gradual decline suggesting market saturation
- **2024**: New dynamic favoring active content creation over passive engagement

## Business Implications

1. **Platform Strategy**: TikTok remains crucial for Spotify success but influence is evolving
2. **Content Creation**: User-generated content (Posts) gaining importance over passive metrics
3. **Artist Development**: Multi-platform presence essential for maximum reach
4. **Market Evolution**: Streaming dynamics continue to shift rapidly year-over-year

## Files Structure

```
project/
├── data/
│   ├── Most_Streamed_Spotify_Songs_2024.csv (original)
│   └── cleaned_data.csv (processed)
├── clean_data.ipynb (data cleaning notebook)
└── analysis.ipynb (main analysis)
```

## Usage

To reproduce the analysis:

1. Ensure required libraries are installed
2. Run `clean_data.ipynb` for data preprocessing
3. Execute analysis cells in the main notebook
4. Modify visualization parameters as needed

## Dependencies

- pandas >= 1.0.0
- numpy >= 1.18.0
- matplotlib >= 3.0.0
- seaborn >= 0.11.0

## Conclusion

This analysis reveals the complex relationships between modern music platforms and provides insights into evolving listener behavior. The declining but still significant TikTok-Spotify correlation underscores the platform's ongoing importance in music discovery, while shifting metric importance suggests new strategies for artist promotion and platform engagement.

---
*Analysis conducted using Python data science stack. Visualizations optimized for clarity and insight communication.*

**_THIS DOCUMENTATION WAS CREATED WITH AI FOR PLACEHOLDER PURPOSES. EXPECT CHANGES IN A FUTURE_**
```