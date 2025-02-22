
d='../datasets' 
url=https://github.com/ultralytics/yolov5/releases/download/v1.0/
f='coco2017labels.zip' 
echo 'Downloading' $url$f ' ...'
curl -L $url$f -o $f && unzip -q $f -d $d && rm $f &

d='../datasets/coco/images' 
url=http://images.cocodataset.org/zips/
f1='train2017.zip' 
f2='val2017.zip'   
f3='test2017.zip'  
for f in $f1 $f2; do
  echo 'Downloading' $url$f '...'
  curl -L $url$f -o $f && unzip -q $f -d $d && rm $f &
done
wait 
