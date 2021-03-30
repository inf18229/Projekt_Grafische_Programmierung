application {
	class myCar.TimeBase
	class myCar.myCar
	class myCar.Driver
}
schedule {
	startup {
	}
	shutdown {
		process myCar.myCar.reset
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myCar.Driver.calc
		process myCar.myCar.calc
	}
	task Task1 priority 0 period 20s delay 0ms {
	}
}