all: opePanel1 opePanelX liftMng liftCtrl liftBody liftSensor

opePanel1.o: opePanel1.c
	cc -c opePanel1.c
opePanelX.o: opePanelX.c
	cc -c opePanelX.c
liftMng.o: liftMng.c
	cc -c liftMng.c
liftMng: liftMng.o
	cc liftMng.o -o liftMng -lpthread
liftCtrl.o: liftCtrl.c
	cc -c liftCtrl.c
liftBody.o: liftBody.c
	cc -c liftBody.c
liftBody: liftBody.o
	cc liftBody.o -o liftBody -lpthread
liftSensor.o: liftSensor.c
	cc -c liftSensor.c
clean:
	rm -f *.o
reset:
	rm -f *.o liftCtrl liftSensor liftBody opePanel1 opePanelX liftMng *.c~
