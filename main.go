package main

import (
	_ "github.com/chaspy/todo/routers"
	"github.com/astaxie/beego"
  "os"
	"strconv"
)

func main() {
	port, err := strconv.Atoi(os.Getenv("PORT"))
	if err == nil {
    beego.BConfig.Listen.HTTPPort = port
	}

	beego.Run()
}
