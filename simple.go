package main

import (
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"time"
)

var s = rand.NewSource(time.Now().Unix())
var r = rand.New(s) // initialize local pseudorandom generator

var adjectives = []string{"agreeable", "brave", "calm", "delightful", "eager", "faithful", "gentle", "happy", "jolly", "kind", "lively", "nice", "obedient", "proud", "relieved", "silly", "thankful", "victorious", "witty", "zealous"}
var people = []string{"Obama", "Trump", "Lincoln", "Winfrey", "Presley", "Monroe", "Bieber", "Beyonce", "Madonna", "Kennedy", "Jolie", "Jordan", "Clinton", "Cruise", "Pitt", "Woods", "Swift", "Beckham", "Rihanna", "Perry", "Hepburn", "Drake", "Tolkien", "Hitchcock", "Buffett"}

func getDescriptivePerson() string {
	adj := r.Intn(len(adjectives))
	person := r.Intn(len(people))
	return fmt.Sprintf("%s %s", adjectives[adj], people[person])
}

func root(w http.ResponseWriter, r *http.Request) {
	txt := getDescriptivePerson()
	log.Print(txt)
	fmt.Fprintf(w, txt)
}

func another(w http.ResponseWriter, r *http.Request) {
	log.Print("newBranch4")
	fmt.Fprintf(w, "newBranch")
}

func main() {
	http.HandleFunc("/", root)
	http.HandleFunc("/another", another)
	http.ListenAndServe(":8888", nil)
}
