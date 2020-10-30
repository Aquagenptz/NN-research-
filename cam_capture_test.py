import cv2

cap = cv2.VideoCapture('https://s2.moidom-stream.ru/s/public/0000001203.m3u8')

while True:
    ret, img = cap.read()
    cv2.imshow("camera", img)
    if cv2.waitKey(10) == 27: # Клавиша Esc
        break
cap.release()
cv2.destroyAllWindows()