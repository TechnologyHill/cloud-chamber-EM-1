from machine import UART
from time import sleep_ms

CMD_END = b'\xFF\xFF\xFF'

class Nextion:
    """
    Small library to comunicate with Nextion display
    """

    def __init__(self, id, baud_rate=9600):
        """
        Init the uart
        """

        try:
            self.uart = UART(id, baud_rate)
            self.uart.init(baud_rate, bits=8, parity=None, stop=1)

        except:
            print("error while opening UART")

    def send(self, data):
        """
        Send data to Nextion
        """

        try:
            self.response = self.uart.read()
            self.uart.write(data)
            self.uart.write(CMD_END)
            sleep_ms(100)
            self.response = self.uart.read()
            if self.response != None:
                return self.response
            else:
                return True

        except:
            return False

    def page(self, data):
        """
        Refresh page
        """

        try:
            self.uart.write('page ')
            self.uart.write(str(data))
            self.uart.write(CMD_END)
            return True

        except:
            return False

    def ref(self, data):
        """
        Refresh component
        """

        try:
            self.uart.write('ref ')
            self.uart.write(data)
            self.uart.write(CMD_END)
            return True

        except:
            return False

    def click(self, component, state):
        """
        Activate component's press/release event
        """

        try:
            self.uart.write('click ')
            self.uart.write(component)
            self.uart.write(',')
            self.uart.write(str(state))
            self.uart.write(CMD_END)
            return True

        except:
            return False

    def ref_stop(self):
        """
        Stop refreshing screen
        """

        try:
            self.uart.write("ref_stop")
            self.uart.write(CMD_END)
            return True
        
        except:
            return False

    def ref_star(self):
        """
        Stop refreshing screen
        """

        try:
            self.uart.write("ref_star")
            self.uart.write(CMD_END)
            return True
        
        except:
            return False

    def get(self, data):
        """
        Get variable/constant value with format
        """

        try:
            self.response = self.uart.read()
            self.uart.write("get ")
            self.uart.write(data)
            self.uart.write(CMD_END)
            sleep_ms(100)
            self.response = self.uart.read()

        except:
            return False

    def substr(self, text0, text1, str_start, str_length):
        """
        Extracts the characters from a string
        """

        try:
            self.uart.write("substr ")
            self.uart.write(text0)
            self.uart.write(",")
            self.uart.write(text1)
            self.uart.write(",")
            self.uart.write(str_start)
            self.uart.write(",")
            self.uart.write(str_start)
            self.uart.write(CMD_END)
            return True

        except:
            return False

    def vis(self, object, state):
        """
        Hide/show component
        """
        
        try:
            self.uart.write("vis ")
            self.uart.write(object)
            self.uart.write(",")
            self.uart.write(state)
            self.uart.write(CMD_END)
            return True

        except:
            return False
