if [ ! -d tmp ]; then
	mkdir tmp
fi

for i in eater; do

echo $i
ca65 -I/usr/local/share/cc65/asminc -D $i msbasic.s -o tmp/$i.o &&
ld65 -C $i.cfg tmp/$i.o -o tmp/$i.bin -Ln tmp/$i.lbl

done
cp tmp/eater.bin ~/Downloads/eater-$(date +%Y-%m-%dT%H%M%S-%Z).bin
