import cv2
import time

cap = cv2.VideoCapture('https://s2.moidom-stream.ru/s/public/0000001203.m3u8')
cap.set(7,60)

while True:
    ret, img = cap.read()
    cv2.imshow("camera", img)
    if cv2.waitKey(30) == 27: # Клавиша Esc
        break
cap.release()
cv2.destroyAllWindows()
