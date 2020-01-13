import time, machine, onewire, ds18x20

filename = "temperature_log.csv"
ds_pin = machine.Pin(23)

ds = ds18x20.DS18X20(onewire.OneWire(ds_pin))

roms = ds.scan()
print('found devices:', roms)

while True:
    print('tempratures:', end=' ')
    ds.convert_temp()
    for rom in roms:
        print(ds.read_temp(rom), end=' ')
    print()
    time.sleep_ms(1000)