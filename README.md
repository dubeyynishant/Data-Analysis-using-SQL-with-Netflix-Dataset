
# Netflix Data Analysis

This repository contains SQL scripts for analyzing a Netflix dataset consisting of two CSV files: `credit` and `title`.

## Dataset Description

### Credit Table (credit.csv)
- `person_id`: Unique identifier for a person
- `id`: Identifier for the title
- `name`: Name of the person
- `character`: Character played by the person (if applicable)
- `role`: Role of the person (e.g., actor, director)

### Title Table (title.csv)
- `id`: Unique identifier for the title
- `title`: Name of the movie/show
- `type`: Type of the title (e.g., movie, show)
- `description`: Description of the title
- `release_year`: Year the title was released
- `age_certification`: Age certification rating
- `runtime`: Duration in minutes
- `genres`: Genres of the title
- `production_countries`: Countries where the title was produced
- `seasons`: Number of seasons (if applicable)
- `imdb_id`: IMDb identifier
- `imdb_score`: IMDb score
- `imdb_votes`: Number of votes on IMDb
- `tmdb_popularity`: Popularity score on TMDb
- `tmdb_score`: Score on TMDb

## Analysis

The SQL scripts provided here perform various analyses on the dataset, including:
- Top movies and shows by IMDb and TMDb scores
- Distribution of titles by type, genre, and age certification
- Frequent actors and their appearances
- Annual release trends
- Runtime statistics

## How to Use

1. Create tables in your SQL database using the provided schema.
2. Import the data from the CSV files.
3. Run the analysis scripts to generate insights.

## License

This project is licensed under the MIT License.
