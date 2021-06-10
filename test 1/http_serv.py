from http.server import HTTPServer, BaseHTTPRequestHandler
import os
import socket
def get_ip():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        # doesn't even have to be reachable
        s.connect(('10.255.255.255', 1))
        IP = s.getsockname()[0]
    except:
        IP = '127.0.0.1'
    finally:
        s.close()
    return IP

print(get_ip())

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("8.8.8.8", 80))
print(s.getsockname()[0])
s.close()

path = "./image"


class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):

    # определяем метод `do_GET`
    def do_GET(self):
        self.send_response(200)

        if self.command == 'GET':
            print(self.path)
            if os.path.isfile(path + self.path + '/image.jpg'):
                self.end_headers()
                f = open(path + self.path + '/image.jpg', 'rb')
                self.wfile.write(f.read())
            else:
                self.send_header('Content-type', 'text/html')
                self.end_headers()
                self.wfile.write(b'Wrong path!')


httpd = HTTPServer(('192.168.1.15', 8000), SimpleHTTPRequestHandler)
httpd.serve_forever()
