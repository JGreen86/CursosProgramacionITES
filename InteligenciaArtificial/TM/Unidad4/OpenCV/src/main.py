import cv2

image = cv2.imread("dragonball1.jpeg")
(h, w, d) = image.shape

cv2.imshow("Image", image)
cv2.waitKey(0)
cv2.imshow("Negativo", 255 - image)
cv2.waitKey(0)

gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
cv2.imshow("Escala de grises", gray)
cv2.waitKey(0)

bw = gray

for i in range(0,h-1):
    for j in range(0,w-1):
        if(gray[i,j] < 160):
            bw[i,j] = 0
        else:
            bw[i,j] = 255

cv2.imshow("Binarizada", bw)
cv2.waitKey(0)

thresh = cv2.threshold(gray, 0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)[1]
cv2.imshow("Thresh", thresh)
cv2.waitKey(0)

edges = cv2.Canny(gray,100,200);
cv2.imshow("Edges", edges)
cv2.waitKey(0)