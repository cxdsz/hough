clearvars;
close all;
target = imread('target.jpg');
pic = imread('test.jpg');
target = rgb2gray(target);
pic = rgb2gray(pic);
target = target<50;
pic = pic<50;
figure;imshow(target);
figure;imshow(pic);
threshold = 0.9;%��ֵ,0.9����90%�����Ǻϲű���Ϊ��Ŀ��
pic_thunder = Hough_Thunder(pic,target,threshold);%����ͼ����ҪΪlogical��,falseΪ����
figure;
imshow(pic_thunder);