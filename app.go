package main

import (
	"fmt"
	"log"

	"github.com/abhishekash/trekFinder/handlers"
	"github.com/abhishekash/trekFinder/storage"
	"github.com/gin-gonic/gin"
)

func main() {

	var err error
	_, err = storage.ConnectDB()
	if err != nil {
		log.Fatalf("failed to start the server: %v", err)
	}

	fmt.Println("Hello, Trekkers!")

	router := gin.Default()

	router.GET("/treks", handlers.GetTreks)
	router.POST("/treks", handlers.AddTreks)

	router.Run()

}
