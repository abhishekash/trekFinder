package handlers

import (
	"net/http"

	"github.com/abhishekash/trekFinder/models"
	"github.com/abhishekash/trekFinder/storage"

	"github.com/gin-gonic/gin"
)

func AddTreks(c *gin.Context) {
	var trek models.Trek
	if err := c.ShouldBindJSON(&trek); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	if err := storage.AddTrek(trek); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.Status(http.StatusCreated)
}
