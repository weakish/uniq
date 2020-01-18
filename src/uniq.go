package main

import (
	"bufio"
	"fmt"
	"os"
)

func contains(lines []string, line string) bool {
	for _, l := range lines {
		if l == line {
			return true
		}
	}
	return false
}

func main() {
	lines := make([]string, 0)
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := scanner.Text()
		if !contains(lines, line) {
			lines = append(lines, line);
		}
	}
	for _, line := range lines {
		fmt.Println(line)
	}
}