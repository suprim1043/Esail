OCEN Masters Drive Mapper

A small Windows batch script that maps the shared 00-OCEN Masters OneDrive folder to the drive letter O:.

Everyone on the team then reaches the course folders by the same short paths, such as O:\OCEN 680 - Paredes. Shared Premiere Pro projects therefore find their media on every computer without relinking.

What it does

map-esail.bat:

Checks that OneDrive for Business (Texas A&M account) is set up on this computer.
Checks that the shared folder Roach, Christine's files - 00-OCEN Masters has been added to your OneDrive and synced.
Removes any old O: mapping made with subst.
Maps O: to the shared folder.
Shows a success message for 5 seconds, or an error message that stays open until you press a key.

The script uses the Windows subst command. It doesn't copy or move any files. O: is a shortcut view of your local OneDrive folder.

Requirements
Windows 10 or 11
OneDrive desktop app, signed in with your Texas A&M account
Access to the 00-OCEN Masters folder. Ask the folder owner to share it with you if you can't open it.
One-time setup
1. Add the shared folder to your OneDrive
Open OneDrive in your browser and go to Shared, then 00-OCEN Masters.
Click Add shortcut to My files.
Wait for it to sync. In File Explorer, it appears under your OneDrive as:
   Roach, Christine's files - 00-OCEN Masters

If you previously used the old eSAIL mapping: first remove the old Roach, Christine's files - eSAIL Folder shortcut in OneDrive on the web (…, then Remove shortcut). Don't delete the folder or its files, because that deletes them for everyone.

2. Download the script

Save map-esail.bat somewhere permanent, such as Documents.

3. Run it

Double-click map-esail.bat. Don't use "Run as administrator", because drives mapped that way don't appear in File Explorer or Premiere.

If Windows shows "Windows protected your PC", click More info, then Run anyway.

4. Make it run at every sign-in

Drives created with subst disappear when you restart, so set the script to run automatically:

Press Win + R, type shell:startup, and press Enter.
Right-click map-esail.bat, choose Create shortcut, and move the shortcut into the Startup folder.
Checking that it worked

Use any of these:

Message: "O: is now mapped to 00-OCEN Masters." appears for 5 seconds.
File Explorer: This PC shows an O: drive containing the course folders.


Folder layout on O:

O:\
├── OCEN 474 - Cordes
├── OCEN 652- Witherden
├── OCEN 660 - Koola
├── OCEN 671 - Kim
├── OCEN 672 - Panchang
├── OCEN 676 - Kang
├── OCEN 680 - Paredes
├── OCEN 682 - Figlus
└── Program Level Resources and Templates
