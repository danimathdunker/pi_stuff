# baro

reading temperatur and pressure from BMP280 and sending them to a MQTT topic

* `baro_loop.py` - doit forever
* `baro.py` - read once and send values to MQTT queue
* `cr_rrd` - creates the RRDs
* `fill_rrd` - fills the RRDs
* `graph_rrd` - creates graphics
