package storage

import (
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/abhishekash/trekFinder/models"
)

func TestGetTreksFromDB(t *testing.T) {
	// Create a mock DB connection and get a reference to it.
	mockDB, mock, err := sqlmock.New()
	if err != nil {
		t.Fatalf("Error creating mock database: %v", err)
	}
	defer mockDB.Close()

	// Replace the global 'db' variable with the mock DB for the duration of the test.
	db = mockDB
	defer func() {
		db = nil
	}()

	// Define expected rows and columns.
	rows := sqlmock.NewRows([]string{"name", "description"}).
		AddRow("Trek1", "Description1").
		AddRow("Trek2", "Description2")

	// Expect a query to be executed and return the mock rows.
	mock.ExpectQuery("SELECT name, description FROM treks").WillReturnRows(rows)

	// Call the function you want to test.
	treks, err := GetTreksFromDB()
	if err != nil {
		t.Fatalf("Error while getting treks from the database: %v", err)
	}

	// Check if the results match the expectations.
	if len(treks) != 2 {
		t.Fatalf("Expected 2 treks, but got %d", len(treks))
	}

	// Add more assertions as needed to validate the results.
	// For example, you can check the content of individual treks.

	// Ensure all expectations were met.
	if err := mock.ExpectationsWereMet(); err != nil {
		t.Errorf("Unfulfilled expectations: %s", err)
	}
}

func TestAddTrek(t *testing.T) {
	// Create a mock DB connection and get a reference to it.
	mockDB, mock, err := sqlmock.New()
	if err != nil {
		t.Fatalf("Error creating mock database: %v", err)
	}
	defer mockDB.Close()

	// Replace the global 'db' variable with the mock DB for the duration of the test.
	db = mockDB
	defer func() {
		db = nil
	}()

	// Define the expected query and parameters.
	expectedQuery := "INSERT INTO treks (name, description) VALUES ($1, $2)"
	mock.ExpectExec(expectedQuery).
		WithArgs("TrekName", "TrekDescription").
		WillReturnResult(sqlmock.NewResult(1, 1))

	// Create a Trek object to add.
	trek := models.Trek{
		Name:        "TrekName",
		Description: "TrekDescription",
	}

	// Call the function you want to test.
	err = AddTrek(trek)
	if err != nil {
		t.Fatalf("Error while adding a trek to the database: %v", err)
	}

	// Ensure all expectations were met.
	if err := mock.ExpectationsWereMet(); err != nil {
		t.Errorf("Unfulfilled expectations: %s", err)
	}
}
