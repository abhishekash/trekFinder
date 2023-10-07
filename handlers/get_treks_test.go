package handlers

import (
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/abhishekash/trekFinder/storage"
	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
)

func TestGetTreks(t *testing.T) {
	r := gin.Default()

	storage.ConnectDB()
	r.GET("/treks", GetTreks)

	w := httptest.NewRecorder()

	// Create a request to send to the above route
	req, _ := http.NewRequest("GET", "/treks", nil)

	r.ServeHTTP(w, req)

	assert.Equal(t, 200, w.Code)
	assert.True(t, w.Body != nil)
}
