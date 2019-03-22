<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="LinuxBasics.aspx.cs" Inherits="UITechnology_OpenSource_Linux_LinuxBasics" %>


<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
        <div class ="bg-white">
          <div class="container">
                <div class="row">
                        <div class="span16 padding20 margin20">
                            <div class="tile-content">
                                <div class="panel no-border">
                             
                                        
                                        <div class="grid no-margin">
                                             <div class="row">

                                                <div class="span1 no-tablet-portrait no-phone">
                                                        <div class="notice marker-on-right bg-white padding1 text-center" style="height: 1px">
                                                        </div>
                                                </div>

                                                <div class="accordion with-marker span12  place-right   " data-role="accordion" data-closeany="false">

                                                    
                                                        <div class="accordion-frame active">
                                                        <a class="heading text-center bg-blue fg-white text-bold" href="#"  >Why Use Linux</a>
                                                             <div class="content" >
                                                             <div class="panel-content text-justify">

                                                            <h3>Problems with the Windows systems</h3><BR>
                                                                a) It cost money. <BR>
                                                                b) Source code is not open. <BR>
                                                                c) Virus prone systems. <BR>
                                                                d) Monopolistic attitude. <BR>
                                                                e) Security Problem<BR>
                                                                 f) Not configurable. i.e. One can't configure Windows desktop as his way.<BR><BR>
                                                            <h3>Advantages of Linux-like systems</h3><BR>
                                                                 a) Open Source.<BR>
                                                                 b) Free. <BR>
                                                                 c) More secure than windows system. <BR>
                                                                 d) Configurable. One can configure each and every thing in Linux in his own way. <BR>
                                                                 e) Linux is multi-user. <BR>
                                                                 f) Stability. <BR>
                                                                 g) Varieties. <BR>
                                                                 h) Server  capabilities.<BR>
                                                                 i) Not a virus prone system.<BR>


                                                              </div>
                                                              </div>
                                                          </div>


                                                        <div class="accordion-frame">
                                                        <a class="heading text-center bg-blue fg-white text-bold" href="#"  >Installation In Linux</a>
                                                             <div class="content" >
                                                             <div class="panel-content text-justify">

<h3>Installation and Uninstallation from RPM:</h3><BR>
  

RPM is a pre-compiled binary for linux (similar to setup file in windows). Install RPMS by using command rpm as:<BR><BR>
# rpm -ivh gaim-0.81-0.rpm <BR>
Here options are : 'i' for 'i'nstall; 'v' for 'v'erbose and 'h' for hashing <BR>
It will install the software named 'gaim'. If it will ask for some dependency, then first install the 'rpm' which provides <BR>
that dependency. Use google to find which 'rpm' which rpm will provide the dependency.<BR>

To uninstall, you should first know which rpm is to be uninstall. To find that, type <BR><BR>
# rpm -aq | grep gaim<BR>
Here options are: 'a' for 'a'll and 'q' for 'q'uery. i.e. "rpm -aq" first finds all the rpms installed on the computer. Then "grep gaim" <BR>
will filter the rpms having name "gaim". If you dont know what the "grep" do, please read "Basic Command In Linux" first. <BR>
The output of this command will be something like<BR>
gaim-0.81-0<BR>
Now to uninstall 'gaim', type<BR><BR>
# rpm -e gaim-0.81-0<BR>
Option 'e' is for 'e'rase.   <BR><BR>

More About RPM  <BR>
If you run across a file that you don't recognize. To find out which package owns it, you would do:  <BR><BR>

# rpm -qf /usr/X11R6/bin/xjewel<BR>

The output would be sometime like:<BR>
xjewel-1.6-1<BR><BR>

If you find a new koules RPM, but you don't know what it is. To find out some information on it, do:  <BR><BR>

# rpm -qpi koules-1.2-2.i386.rpm<BR>

The output would be:<BR>

Name        : koules                      Distribution: Red Hat Linux Colgate<BR>
Version     : 1.2                               Vendor: Red Hat Software<BR>
Release     : 2                             Build Date: Mon Sep 02 11:59:12 1996<BR>
Install date: (none)                        Build Host: porky.redhat.com<BR>
Group       : Games                         Source RPM: koules-1.2-2.src.rpm<BR>
Size        : 614939<BR>
Summary     : SVGAlib action game with multiplayer, network, and sound support<BR>
Description :<BR>
This arcade-style game is novel in conception and excellent in execution.<BR>
No shooting, no blood, no guts, no gore.  The play is simple, but you<BR>
still must develop skill to play.  This version uses SVGAlib to<BR>
run on a graphics console.<BR><BR>


If you wants to see what files the koules RPM installs. You would do:  <BR>

# rpm -qpl koules-1.2-2.i386.rpm<BR>

The output is:<BR>

/usr/doc/koules<BR>
/usr/doc/koules/ANNOUNCE<BR>
/usr/doc/koules/BUGS<BR>
/usr/doc/koules/COMPILE.OS2<BR>
/usr/doc/koules/COPYING<BR>
/usr/doc/koules/<BR>
/usr/doc/koules/ChangeLog<BR>
/usr/doc/koules/INSTALLATION<BR>
/usr/doc/koules/Icon.xpm<BR>
/usr/doc/koules/Icon2.xpm<BR>
/usr/doc/koules/Koules.FAQ<BR>
/usr/doc/koules/Koules.xpm<BR>
/usr/doc/koules/README<BR>
/usr/doc/koules/TODO<BR>
/usr/games/koules<BR>
/usr/games/koules.svga<BR>
/usr/games/koules.tcl<BR>
/usr/man/man6/koules.svga.6<BR><BR>


                                                                 
 <h3>Installation and Uninstallation Using Source :</h3><BR><BR>
 


Steps for installation:<BR><BR>
1) Source Code always come in .tar.gz or .tar.bz2 format. First unpak the source code. If you dont know how to unpack it, please <BR>
 read "Basic Commands in Linux" first. e.g. If you want to install mplayer using source code, unpack it as <BR><BR>
# tar -jxvf MPlayer-1.0pre5.tar.bz2<BR><BR>

2) Now change the dirctory to Source Code. i.e. <BR><BR>
# cd MPlayer-1.0pre5<BR><BR>

3) Now you must see a file name "configure" in that directory (type ls to see that). If this file is absent, that means it is not the source code. If the file is there, type<BR><BR>
# ./configure<BR>
This will check your system configuration. If it fails, see the error (which is mostly due to some dependency) , first install the dependency and then try again. <BR>
This command "configure" will make the file named "Makefile".<BR><BR>

4) Type<BR><BR>
# make<BR>
This will compile the package.<BR><BR>

5) Type <BR><BR>
# make install<BR>
This will install the package.<BR><BR>

6) You can delete the source code now.<BR /><BR>

Steps for uninstallation:<BR><BR>
You can uninstall the package installed using source code by the same source code. <BR>
1) Unpack the source code in same directory from where you have installed it. e.g. If you have installed MPlayer from<BR>
 directory having absoulte path as "/extra/multimedia/MPlayer-1.0pre5", then you should uninstall it from the same directory.<BR><BR>

2) Type <BR><BR>
# ./configure <BR>
If you have given some options to "./configure" during installtion, you must give the same options here. <BR><BR>

3) Type <BR><BR>
# make<BR><BR>

4) Type <BR><BR>
# make uninstall<BR><BR>

5) Now you can delete the source code. <BR>


                                                              </div>
                                                              </div>
                                                          </div>
                                                 
                                                    
                                                         <div class="accordion-frame">
                                                        <a class="heading text-center bg-blue fg-white text-bold" href="#">Basic Commands In Linux (for newbies)</a>
                                                             <div class="content" >
                                                             <div class="panel-content text-justify">

<h3>Basic Linux Commands : without which you can't survive in technical world!!!  </h3><BR><BR>
    
   
 1)  ls -- to list files and directories<BR>
     Examples:    ls Mail, ls -a <BR>
                      ls -l /usr/bin <BR>
     Options: -l, -a<BR><BR>

2)  cd -- Type cd followed by the name of a directory to access that directory. <BR>
    Examples:   cd games, cd .. <BR>
     Imp: "cd -" will get you in the last working directory<BR><BR>

3)  pico -- To create or edit a file<BR>
     Examples:   pico myfile.txt, pico <BR><BR>

4)  vim -- Advance text editor<BR>
     Example:   vim myfile.txt<BR>
     To learn basic vim, visit:  http://www.dynamic-apps.com/linux_vim.jsp <BR><BR>

5)  chmod -- change file access permissions<BR>
     Example:   chmod -R 753 games <BR><BR>
      
 
<TABLE> 
  <TBODY>
  <TR>
    <TD style="VERTICAL-ALIGN: top"><SPAN 
      style="FONT-WEIGHT: bold">Permissions</SPAN><BR></TD>
    <TD style="VERTICAL-ALIGN: top"><SPAN 
      style="FONT-WEIGHT: bold">alias</SPAN><BR></TD>
    <TD style="VERTICAL-ALIGN: top"><SPAN 
      style="FONT-WEIGHT: bold">weightage</SPAN><BR></TD></TR>
  <TR>
    <TD style="VERTICAL-ALIGN: top">read<BR></TD>
    <TD style="VERTICAL-ALIGN: top">r<BR></TD>
    <TD style="VERTICAL-ALIGN: top">4<BR></TD></TR>
  <TR>
    <TD style="VERTICAL-ALIGN: top">write<BR></TD>
    <TD style="VERTICAL-ALIGN: top">w<BR></TD>
    <TD style="VERTICAL-ALIGN: top">2<BR></TD></TR>
  <TR>
    <TD style="VERTICAL-ALIGN: top">execute<BR></TD>
    <TD style="VERTICAL-ALIGN: top">x<BR></TD>
    <TD style="VERTICAL-ALIGN: top">1<BR>
</TD></TR></TBODY></TABLE>
   <BR><BR>
 In 753, the first 7 (1st letter) represents the  permissions to himself, 5 (2nd letter) represents the  permissions to group.<BR>
 3 (3rd letter) represents the  permissions to others.<BR><BR>
  
 Options:    -R for whole directory <BR>
                       7=4+2+1 ; 5=4+1; 3=2+1 <BR><BR>

 6)  pwd -- shows the "present working directory"<BR><BR>

 7)  cp -- copy the files/diectories<BR>
     Examples:    cp oldfile.txt newfile.txt<BR>
                         cp -R olddir newdir<BR>
     Options: -R for copying complete directory<BR><BR>

 8)  mv -- move or rename the file/directory<BR>
     Examples:    mv oldfile.txt newfile.txt<BR>
                          mv olddir newdir<BR><BR>

 9)  rm -- remove files/directory<BR>
     Examples:   rm file1.txt<BR>
     Options:       -r deletes whole directory<BR>
                         -f deletes without asking confirmation<BR><BR>

10)  mkdir -- make a new directory<BR>
     Examples:    mkdir games<BR><BR>

11)  rmdir -- deletes a (empty) directory<BR>
     Examples:    rmdir games<BR><BR>

12)  man -- show the manual pages<BR>
     Examples:    man mkdir<BR>
                          man man<BR><BR>

 13)  date -- show date and time<BR><BR>

 14)  cal -- show calendar<BR><BR>

15)  du -- show file space usage<BR>
      Examples:    du -hs games; du ; du movie.dat<BR>
     Options: -h print sizes in human readable format(e.g., 1K 234M 2G)<BR>
                    -s display only a total for each argument<BR><BR>

 16)  passwd -- to change passwd<BR><BR>

17)  pine -- to check mails<BR><BR>

18)  logout -- make you exit<BR><BR>
 
<h3>More Basic Commands -- without which you can't survive in IITB!!!</h3><BR><BR>


1)  tin -- to check newsgroups<BR><BR>

 2)  telnet -- to login into other computer/server<BR>
     Example: telnet 10.107.1.2<BR>
     Imp: Try command 'rlogin'<BR><BR>

3)  ssh -- secure login into other computer/server<BR>
     Example: ssh agoyal@10.105.1.11<BR><BR>

 4)  finger -- look for information about users logged on server<BR>
     Example: finger; finger agoyal<BR><BR>

 5)  talk -- talk to other user <BR>
    Example: talk agoyal<BR><BR>

 6)  w -- Show who is logged on and what they are doing<BR><BR>
   
 7)  write -- write to other users<BR>
     Example: write agoyal<BR><BR>

 8)  ftp -- to transfer files from one computer to another<BR>
     Example: ftp 10.105.1.11<BR>
     Use 'gftp' for graphical interface<BR><BR>

 9)  cat -- print the file(s) on standard output<BR>
     Example: cat myfile.txt<BR>
     Imp: Try commands 'head',  'tail',  'less',  'more'<BR><BR>

10)  alias -- alias a command<BR>
    Example: alias rm='ls'<BR><BR>
 
<h3>Advance Commands -- without knowing which you can't be called  "STUD"</h3><BR><BR>


 1)  df -- show harddisk partitions<BR>
     Example: df -h<BR><BR>

2)  locate -- locate a file containing some expression<BR>
     Example: locate games<BR><BR>

 3)  grep -- print lines matching a pattern<BR>
     Example: locate games|grep nfs<BR><BR>

 4)  find -- search for files in a directory hierarchy<BR>
     Example: find . -name filename -print<BR><BR>

 5)  ps -- report process status<BR>
     Examples: ps; ps -aux<BR><BR>

 6)  top -- display Linux tasks<BR><BR>

 7)  kill, killall -- kills a process<BR>
     Examples: kill -9 1290; killall -9 mplayer<BR>
     Here -9 is an option to kill a process completely.  1290 is a process ID (PID). <BR><BR>

8)  tar -- compress/uncompress files/directories<BR>
     Examples: tar -xvf file.tar -- uncompress a file 'file.tar'<BR>
                        tar -xzvf file.tar.gz -- uncompress a file 'file.tar.gz'<BR>
                         tar -xjvf file.tar.bz2 -- uncompress a file 'ffile.tar.bz2'<BR>
                        tar -cvf file.tar file -- compress the file 'file' to 'file.tar'  <BR>
                        tar -czvf file.tar.gz file -- compress the fille 'file' to file.tar.gz<BR>
                        tar -cjvf file.tar.bz2 file -- compress the fiile 'file' to file.tar.bz2<BR><BR>

9)  file -- determine file type<BR><BR>
 
<h3>Some More fundaes: for cool dudes</h3><BR><BR>


1) How to open graphical applications from other computer?<BR>
Suppose you are sitting on comp 'A' with ip 10.8.1.82. You want to open an graphical application on comp 'B' with ip 10.8.1.22. Do the following:<BR>
     a) type "xhost +" on comp 'A'<BR>
     b) login to comp 'B' via 'ssh' or 'telnet'<BR>
     c) type "export DISPLAY=10.8.1.82:0.0" on command prompt of comp 'B'<BR>
    d) open the application. e.g. 'gftp'<BR><BR>

 2) Use  <TAB> for the command completion<BR>

 3) Donâ€™t waste time and energy retyping commands at the prompt. Instead, use the ! option. To automatically re-display the last command<BR>
      you typed at the prompt, type:  !! and press enter. Press again to invoke the command. You can also automatically re-display a command you <BR>
     typed earlier by using the  ! and the first few letters of the command. <BR><BR>
  Ex: At the Linux prompt you had typed the command clear, followed by the command pico, followed by the command ftp. In order to re-display the <BR>
     clear command you type: !cl and press enter. In order to re-display the last command you typed, simply type: !! . Try it out. Youâ€™ll find this a time <BR>
     saver when dealing with long commands. Especially commands like tar!<BR><BR>

 4) You can also use reverse search for retyping commands. e.g. type  "Ctrl+r", and then type few letters of command. It will display the command.<BR><BR>
 
<h3>Common Softwares in Linux</h3><BR><BR>

Some common softwares you will need:<BR>
1) gaim -- Instant Messenger like yahoo and msn messenger.<BR>
2) mplayer -- Movie Player like Windows Media Player in Windows.<BR>
3) xmms -- Play Songs like winamp in Windows.<BR>
4) openoffice -- Run Office Application like officexp, office2k3 in Windows.<BR>
5) mozilla -- To browse internet like Internet Explorer in Windows.<BR>
6) gftp -- for transfering files.<BR>
7) gimp -- for creating/editing pictures.<BR><BR>

See the complete Linux Windows Equivalence Table in the last section


                                                              </div>
                                                              </div>
                                                          </div>
                                                       
                                                  
                                                        <div class="accordion-frame">
                                                        <a class="heading text-center bg-blue fg-white text-bold" href="#"  >Windows-Linux Equivalence Table</a>
                                                             <div class="content" >
                                                             <div class="panel-content text-justify">
                                                                  This is the best resource we can get from the web :
                                                                 <a href="http://www.linuxrsp.ru/win-lin-soft/table-eng.html">Windows - Linux Equivalents</a>
                                                                  
                                                              </div>
                                                              </div>
                                                          </div>

                                                
                                                        <div class="accordion-frame">
                                                        <a class="heading text-center bg-blue fg-white text-bold" href="#"  >Compiling a Linux Kernel</a>
                                                             <div class="content" >
                                                             <div class="panel-content text-justify">


This is the lazy man's guide to compiling a kernel. It wouldn't hurt to read the kernel howto, however, I'm assuming that you've<BR>
got a basic idea of what you do and just want a quick refresher.  <BR>
NOTE: This is for the 2.4 kernel. This page is really dated, but I'm leaving it up for the moment.  <BR><BR>

Another good quick guide is Skylinux's......<BR><BR>

So, first download the latest kernel source from http://www.kernel.org/.  the latest stable version could be found at <BR>
www.kernel.org/pub/linux/kernel (I haven't put a link to it, since, as new kernels come out, it will soon be dated.) Or do it via ftp <BR> 
ftp ftp.kernel.org When it asks for a login name put anonymous <BR>
You'll then see a message that anonymous logons are ok and that you should send your email as password. <BR>
cd /pub/linux/kernel/v2.4 (or whatever version it is that you want hash get (filename)<BR>
The filename will be something like linux-2.4.8.tar.gz or .bz2 depending upon your choice. (One thing here, in an xterm or <BR>
console window, it's sometimes difficult to see the name of the file that you want. The hash command is optional--I use it because<BR>
 it produces hash marks as it downloads, giving me an idea of progress.  <BR><BR>

Do as much of this as you can as user. At some point, you will have to su to root, but as they say in the README, don't take root's<BR>
name in vain. Keep going till you get permission denied. :)  <BR><BR>

download it directly into /usr/src. Otherwise, just move the file once it's been downloaded. (I think this is where you have to su to root.<BR>
We'll use linux-2.4.10.bz2 as our example.<BR><BR>  

mv linux-2.4.10.bz2 /usr/src/<BR>
Change into that directory<BR>
cd /usr/src<BR>
If you already have a working configuration, back it up--in that case there will be a directory called linux already there (again, this is aside from RedHat)  <BR>

mv linux linux.bak <BR> 

Untar the file you just downloaded--if it's a bz2 then<BR>
tar -jxvf linux-2.4.10.bz2<BR>
You now have a directory in /usr/src called linux<BR>
cd linux <BR><BR> 

Now you have a few choices. If you want to start from scratch then do  <BR><BR>

make mrproper  <BR><BR>

This will start you off with a totally fresh kernel. However, if you've saved a config file from a previous build, and have copied it into /usr/src/linux once<BR>
you untarred the latest kernel, don't make mrproper, as it will lose your old configuration. Either way, the next step is to  <BR><BR>

make xconfig  <BR><BR>

That is one choice, and probably the easiest. It has help for most of the choices (the kernel howto mentioned above gives additional <BR>
help.) The other choices are:  <BR><BR>

make config <BR>
make menuconfig<BR>
make oldconfig  <BR>

make config gives you a menu that offers help (type ? whenever it's listed as a choice) but has the disadvantage that you can't go back <BR>
once you've made a choice. Difficult for bad typists like myself.  <BR><BR>

make menuconfig is a textlike (although it is graphical) menu. You have the option to go back if you've made mistakes.  <BR><BR>

make oldconfig takes your old configuration (that will be gone if you did make mrproper) and uses it. I've found it handy in recompiling <BR>
RedHat on an older machine (see my RedHat article listed above) or when just using patches. (see below.)  <BR><BR>

When done, regardless of the menu you've chosen, you're then asked if you want to save the new configuration. Assuming your ready to risk it, choose yes.  <BR><BR>

Next  <BR><BR>

make dep; make clean; make bzImage  <BR><BR>

The bzImage part is what is going to take awhile. On an AMD 1 Gig processor with 256 megs of RAM it takes me about 10 minutes--on a low end, older <BR>
machine (K6-II 450 with 192 megs of RAM) it takes about 30 minutes. Here is where you might get error messages if you've left out something important. <BR>
Assuming you didn't, once that's done <BR><BR> 

make modules; make modules_install  <BR><BR>

(Actually, one only needs to type make once--you could simply type make dep clean bzImage modules modules_install---I like to pause after bzImage to<BR>
make sure there are no errors) <BR><BR> 

it's not that important whether one does make dep clean or make clean dep---doing a make clean will NOT clean out the dependencies that you just made.  <BR><BR>

many people think that you should do make modules modules_install before doing make bzImage. I've never seen it dogmatically stated either way--the make <BR>
modules modules_install option is listed after make bzImage in the 2.4.14 kernel README, the kernel howto and RH's kernel howto. I've always done it that way<BR>
without problems--however, others have done make modules modules_install before making the bzImage. To be safe, just keep the groups together--that is make <BR>
dep clean and make modules modules_install. The make dep clean (or clean dep if it makes you feel safer) should come first. Then, either make bzImage or, if you <BR>
want to try it make modules modules_install. Then, lastly bzImage or the two modules commands, depending upon which one you did previously. I reiterate, I have <BR>
heard that people do the make modules modules_install step first without problems, but I have never done it that way.  <BR><BR>

A RedHat default kernel is modular, and has a lot of default modules that are unneeded--in such a case, this part too can take awhile. If you've done a monolithic <BR>
kernel (that is, with no modular support) you can skip this part--otherwise, you'll get an error message. However, if you have chosen to enable module support, even<BR>
 if you haven't used any modules, don't skip it.  <BR><BR>

Next, we copy the bzImage over to boot  <BR><BR>

cp arch/i386/boot/bzImage /boot/vmlinuz-2.4.10  <BR><BR>

This is assuming that the new kernel is 2.4.10, obviously. <BR><BR> 

If you're using Grub, add the following entry to grub/menu.lst or grub/grub.conf (depending upon your distro.) Let's assume that your 2.4.9 kernel is on /dev/hda2 <BR>
or (hd0, 1) in grub terminology. So, say grub already has the lines:  <BR><BR>

title Linux<BR>
root (hd0,1)<BR>
kernel /boot/vmlinuz-2.4.9 ro root=/dev/hda2  <BR><BR>

Add the lines  <BR><BR>

title Linux New<BR>
root (hd0,1)<BR>
kernel /boot/vmlinuz-2.4.10 ro root=/dev/hda2  <BR><BR>

In other words, you're adding a new title and a new boot image. The rest of it will be identical to what you already have.  <BR><BR>

If you're running LILO then say you have the lines:  <BR><BR>

image=/boot/vmlinuz-2.4.9<BR>
     label=linux<BR>
     read-only<BR>
     root=/dev/hda2<BR><BR>

Then add:  <BR><BR>

image=/boot/vmlinuz-2.4.10<BR>
     label=linuxnew<BR>
     read-only<BR>
     root=/dev/hda2<BR><BR>

Again, an almost duplicate entry, simply adding a new label and new boot image. Then, run lilo  <BR><BR>

/sbin/lilo  <BR><BR>

You should see a message that it added linux and added linuxnew (Note that with lilo there can be no spaces in the label)  <BR>v

Now reboot, and see what happens. If it doesn't boot for some reason, see if the error messages give a clue, go back and once again run make menuconfig<BR>
 (or whichever you chose) and see if the error can be fixed. If it boots, and hangs at  <BR><BR>

Ok, uncompressing the kernel <BR><BR> 

that often means you chose the wrong processor during configuration. If it does work, you might want to keep the old configuration around for a few days to <BR>
make sure there's nothing you've forgotten, then you can delete the vmlinuz-2.4.9 in your /boot partition and also get rid of the linux.bak drectory.  <BR><BR>

Lastly, patches. Rather than downloading an entire kernel, you can simpy download the patch. Move it to /usr/src  <BR><BR>

mv patch -2.4.10.bz2 /usr/src/  <BR><BR>

Directions for applying it are in the linux/README  <BR><BR>

cat linux/README | grep patch  <BR><BR>

They're quite smple--if you've downloaded a bz2 file then it's  <BR><BR>

bzip2 -dc patch-2.4.10.bz2 | patch -p0  <BR><BR>

If you downloaded a .gz file then it's  <BR><BR>

gzip -cd patch-2.4.10.gz | patch -p0  <BR><BR>

(This should be done from /usr/src) You can check that your kernel has been upgraded by checking the Makefile  <BR<BR>

head linux/Makefile  <BR><BR>

You should see  <BR><BR>

VERSION = 2<BR>
PATCHLEVEL = 4<BR>
SUBLEVEL = 10<BR>



This indicates that your kernel has been successfully patched. However, if you reboot, you'll see that you're still running the 2.4.9 kernel. <BR>
The next step is cd back to /usr/src/linux  <BR><BR>
make oldconfig; make dep; make clean; make bzImage <BR><BR> 

and from there, continue with the steps given above  <BR><BR>

make modules; make modules_install  <BR><BR>

cp arch/i386/boot/bzImage /boot/vmlinuz-2.4.10  <BR><BR>

When you reboot, you should see that your kernel was successfully upgraded. Well, as said, this is a brief list of instructions. It should help to get you started<BR>




                                                              </div>
                                                              </div>
                                                          </div>

                                                 
                                                     

                                               </div>

                                             </div>
                                         </div>

                                </div>
                            </div>
                        </div>
                  </div>
              </div>
            </div>
     <br />
</asp:Content>