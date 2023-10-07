package handlers

import (
	"net/http"

	"github.com/abhishekash/trekFinder/storage"

	"github.com/gin-gonic/gin"
)

func GetTreks(c *gin.Context) {
	treks, err := storage.GetTreksFromDB()

	if err != nil {
		c.IndentedJSON(http.StatusInternalServerError, err)
		return
	}

	c.IndentedJSON(http.StatusOK, treks)
}
