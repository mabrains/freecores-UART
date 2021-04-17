# freecores-UART
flow.tcl -interactive
package require openlane 0.9
prep -design uart -tag first_run

![Screenshot from 2021-04-17 12-58-15](https://user-images.githubusercontent.com/36249257/115112469-fb44f800-9f85-11eb-99f2-28ea76f7531b.png)

Observetion: negative slack value

![Screenshot from 2021-04-17 12-58-44](https://user-images.githubusercontent.com/36249257/115112476-01d36f80-9f86-11eb-8163-db4009fba9e2.png)

By setting fanout to 4 instead of 5: set ::env(SYNTH_MAX_FANOUT) 4
and running the design for the second time

![Screenshot from 2021-04-17 13-01-26](https://user-images.githubusercontent.com/36249257/115112623-a2c22a80-9f86-11eb-829c-0d9e6ea67dbb.png)

Observation: negative slack value

![Screenshot from 2021-04-17 13-01-03](https://user-images.githubusercontent.com/36249257/115112644-b66d9100-9f86-11eb-98fc-fb4696e94878.png)

By making the priority for timing over the area: set ::env(SYNTH_STRATEGY) "DELAY 0"
and running the design for the third time

![Screenshot from 2021-04-17 13-04-09](https://user-images.githubusercontent.com/36249257/115112717-1f550900-9f87-11eb-85b7-1f1ce26e9c4e.png)

![Screenshot from 2021-04-17 13-03-46](https://user-images.githubusercontent.com/36249257/115112719-24b25380-9f87-11eb-8f6b-eca47788cba9.png)

![Screenshot from 2021-04-17 13-04-59](https://user-images.githubusercontent.com/36249257/115112734-33990600-9f87-11eb-8a2f-6d45c715d64e.png)

run_floorplan

![Screenshot from 2021-04-17 13-05-18](https://user-images.githubusercontent.com/36249257/115112746-414e8b80-9f87-11eb-9416-69fff1ea52e5.png)

run_placement

run_cts

![Screenshot from 2021-04-17 13-08-08](https://user-images.githubusercontent.com/36249257/115112768-617e4a80-9f87-11eb-9e80-33d1108f6d2f.png)

run_routing

![Screenshot from 2021-04-17 13-09-30](https://user-images.githubusercontent.com/36249257/115112783-73f88400-9f87-11eb-9425-ab880936838a.png)

Timing analysis using opensta:
Note: opensta can be opened inside openlane and also is embeded inside openroad and can be called as follows:

![Screenshot from 2021-04-17 13-17-30](https://user-images.githubusercontent.com/36249257/115112863-b6ba5c00-9f87-11eb-9709-f08f0c5eedb3.png)

A negative slack for hold timing analysis!

![Screenshot from 2021-04-17 13-17-54](https://user-images.githubusercontent.com/36249257/115112890-d487c100-9f87-11eb-9619-f3a3a0742475.png)

The violated path report:

![Screenshot from 2021-04-17 13-18-30](https://user-images.githubusercontent.com/36249257/115112903-e2d5dd00-9f87-11eb-9bc5-ed261296cf37.png)


Since the cells already are of size 1, so we need to insert a delay cells in the data path.







