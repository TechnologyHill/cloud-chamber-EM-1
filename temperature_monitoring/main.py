import time, machine, onewire, ds18x20

ds_pin = machine.Pin(5)

ds = ds18x20.DS18X20(onewire.OneWire(ds_pin))

roms = ds.scan()

while True:
    ds.convert_temp()
    for rom in roms:
        print(ds.read_temp(rom), end=',')
    print()
    time.sleep_ms(1000)