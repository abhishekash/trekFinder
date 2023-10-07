package handlers

import (
	"bytes"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/abhishekash/trekFinder/models"
	"github.com/abhishekash/trekFinder/storage"
	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
)

func TestAddTreks(t *testing.T) {
	r := gin.Default()

	storage.ConnectDB()
	r.POST("/treks", AddTreks)

	w := httptest.NewRecorder()

	trek := models.Trek{
		Name:        "Test trek",
		Description: "Test Description",
	}
	jsonValue, _ := json.Marshal(trek)
	// Create a request to send to the above route
	req, _ := http.NewRequest("POST", "/treks", bytes.NewBuffer(jsonValue))

	r.ServeHTTP(w, req)

	assert.Equal(t, 201, w.Code)
}
