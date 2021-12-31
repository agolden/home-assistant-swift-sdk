test: start-sim
	swift test
	./Scripts/stop-simulation.sh
start-sim:
	./Scripts/start-simulation.sh
stop-sim:
	./Scripts/stop-simulation.sh
