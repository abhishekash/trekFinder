package storage

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/abhishekash/trekFinder/models"
	_ "github.com/lib/pq"
)

var db *sql.DB

const (
	host     = "localhost"
	port     = 5432
	user     = "postgres"
	password = "postgres"
)

func ConnectDB() (*sql.DB, error) {
	var err error
	connStr := fmt.Sprintf("host=%s port=%d user=%s password=%s sslmode=disable", host, port, user, password)
	db, err = sql.Open("postgres", connStr)

	if err != nil {
		log.Printf("failed to connect to database: %v", err)
		return &sql.DB{}, err
	}

	return db, nil

}

func GetTreksFromDB() ([]models.Trek, error) {
	treks := []models.Trek{}
	rows, err := db.Query("SELECT name, description FROM treks")
	if err != nil {
		return treks, err
	}
	defer rows.Close()

	for rows.Next() {
		var trek models.Trek
		if err := rows.Scan(&trek.Name, &trek.Description); err != nil {
			return treks, err
		}

		treks = append(treks, trek)

	}
	return treks, nil
}

func AddTrek(trek models.Trek) error {
	_, err := db.Exec("INSERT INTO treks (name, description) VALUES ($1, $2)", trek.Name, trek.Description)
	return err
}
