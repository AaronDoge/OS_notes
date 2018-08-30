package main

import (
	"fmt"
	"strconv"
)

var c chan int
func getInfo(name string, age int) {
    fmt.Printf("name: %s,age: %d \n", name, age)
    c <- age
}
func main() {
    c = make(chan int)
    go getInfo("li", 12)
    go getInfo("sun", 45)
    go getInfo("zhou", 22)
    //fmt.Println("start")
    age1 := <-c
    age2 := <-c
    age3 := <-c
    //这三个变量每次执行获取的值不一定相同，可能主要取决于各个线程执行的情况
    fmt.Printf("age1: %s, age2: %s, age3: %s. \n",strconv.Itoa(age1),strconv.Itoa(age2),strconv.Itoa(age3))
}
