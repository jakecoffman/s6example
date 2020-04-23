package main

import (
	"log"
	"os"
	"os/signal"
	"syscall"
)

func main() {
	sigC := make(chan os.Signal)
	signal.Notify(sigC, syscall.SIGINT, syscall.SIGTERM)
	s := <-sigC
	log.Println("Got signal", s)
}
