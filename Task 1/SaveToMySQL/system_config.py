import configparser
import os
from sys import stdin, exit as sys_exit

thisfolder = os.path.dirname(os.path.abspath(__file__))
initfile = os.path.join(thisfolder, 'setting.ini')

config = configparser.ConfigParser()
config.read(initfile)
print('Welcome to the initial system settings script!')
print()
print('Installed settings MySQL connect:')
print('Host name:', config.get('DB_LOGGING', 'host_name'))
print('User name:', config.get('DB_LOGGING', 'user_name'))
print('Password:', config.get('DB_LOGGING', 'password'))
print('Table name:', config.get('DB_LOGGING', 'db_name'))
print()
print('Installed other system settings:')
print('Source folder:', config.get('SYS_SET', 'source_folder'))
print('Out folder:', config.get('SYS_SET', 'out_folder'))
print('inference image size (pixels):', config.get('SYS_SET', 'img_size'))
print('Weight model:', config.get('SYS_SET', 'weight_model'))
print('Device CUDA config (0,1,2,3 or cpu):', config.get('SYS_SET', 'device_config'))
print('Object confidence threshold:', config.get('SYS_SET', 'object_confidence_threshold'))
print('IOU threshold for NMS:', config.get('SYS_SET', 'IOU_threshold_NMS'))
print()
if input('Change system settings(y/n)? ') != 'y':
    sys_exit()
print('Change MySQL connect setting:')
host_name = input('Enter HOST NAME->')
user_name = input('Enter USER NAME->')
password = input('Enter PASSWORD->')
db_name = input('Enter DATABASE NAME->')

print()
print('Change other system setting:')
source_folder = input('Enter source folder(default - inference/images)->')
out_folder = input('Enter out folder(default - inference/output)->')
img_size = input('Enter image size (default - 640)->')
weight_model = input('Enter weight model (default - yolov5s.pt)->')
device_config = input('Enter device config(default - cpu)->')
object_confidence_threshold = input('Object confidence threshold (default - 0.25)->')
IOU_threshold_NMS = input('IOU threshold for NMS (default - 0.45)->')

config['DB_LOGGING'] = {
    'host_name': host_name,
    'user_name': user_name,
    'password': password,
    'db_name': db_name
}

config['SYS_SET'] = {
    'source_folder': source_folder,
    'out_folder': out_folder,
    'img_size': img_size,
    'weight_model': weight_model,
    'device_config': device_config,
    'object_confidence_threshold': object_confidence_threshold,
    'IOU_threshold_NMS': IOU_threshold_NMS
}
with open('setting.ini', 'w') as configfile:
    config.write(configfile)




