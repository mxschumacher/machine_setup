package main

import (
	"fmt"
	"os"
	"os/user"
)

/*
Some tasks have to be performed in a sequence, others can be done in parallel.
*/

func main() {

	u, err := user.Current()
	if err != nil {
		fmt.Println("Cannot get current user:", err)
		os.Exit(1)
	}

	fmt.Println("hello world")

	if len(os.Args) > 1 {
		s = os.Args[1]
	}

	out, err := exec.Command("paccache", "-r").Output()

	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(string(out))

	go func() {
		// how can I run commands with sudo rights?
		out, err := exec.Command("sudo npm update", "-g").Output()

		if err != nil {
			log.Fatal(err)
		}
	}()

	go func() {
		// how can I run commands with sudo rights?
		out, err := exec.Command("omf update").Output()

		if err != nil {
			log.Fatal(err)
		}
	}()
}
