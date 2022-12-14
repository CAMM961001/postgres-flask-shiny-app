DROP TABLE IF EXISTS wine_quality;
CREATE TABLE wine_quality(
    id                      SERIAL PRIMARY KEY,
    type                    VARCHAR(25)     NOT NULL,
    fixed_acidity 			DECIMAL(10,6)	NOT NULL,
    volatile_acidity		DECIMAL(10,6)	NOT NULL,
    citric_acid				DECIMAL(10,6)	NOT NULL,
    residual_sugar			DECIMAL(10,6)	NOT NULL,
    chlorides				DECIMAL(10,6)	NOT NULL,
    free_sulfur_dioxide		DECIMAL(10,6)	NOT NULL,
    total_sulfur_dioxide	DECIMAL(10,6)	NOT NULL,
    density					DECIMAL(10,6)	NOT NULL,
    pH						DECIMAL(10,6)	NOT NULL,
    sulphates				DECIMAL(10,6)	NOT NULL,
    alcohol					DECIMAL(10,6)	NOT NULL,
    quality					INT  			NOT NULL
);

COPY wine_quality(
    type,
    fixed_acidity,
    volatile_acidity,
    citric_acid,
    residual_sugar,
    chlorides,
    free_sulfur_dioxide,
    total_sulfur_dioxide,
    density,
    ph,
    sulphates,
    alcohol,
    quality
)
FROM '/datos/winequality-red-raw.csv'
WITH DELIMITER ',' CSV HEADER
NULL AS 'NA';