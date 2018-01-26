
把boot.asm这段代码用NASM编译一下：
> nasm boot.asm -o boot.bin

得到一个512字节的boot.bin，使用软盘绝对扇区去读写工具将这个文件写到一张空白软盘的第一个扇区。
在Linux下可以用如下命令：
> dd if=boot.bin of=/dev/fd0 bs=512 count=1

在Windows下可以：
> rawrite2.exe -f boot.bin -d A

第一个“操作系统”就完成了。这张软盘已经是一张引导盘了。

把它放到软驱中重新驱动计算机，从软盘引导，计算机显示红色的“Hello，OS_world！”。